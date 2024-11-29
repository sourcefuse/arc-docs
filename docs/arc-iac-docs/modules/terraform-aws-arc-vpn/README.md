![Module Structure](./static/banner.png)

# [terraform-aws-arc-vpn](https://github.com/sourcefuse/terraform-aws-arc-vpn)

<a href="https://github.com/sourcefuse/terraform-aws-arc-vpn/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-vpn.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-vpn/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-vpn.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-vpn)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-vpn)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing a Client VPN and Site to Site VPN.

For more information about this repository and its usage, please see [Terraform AWS ARC CloudFront Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-vpn/blob/main/docs/module-usage-guide/README.md).

## Usage

To see a Client VPN example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-vpn/blob/main/examples/client-vpn/main.tf) file in the example folder.

```tcl
module "this" {
  source  = "sourcefuse/arc-vpn/aws"
  version = "1.0.0"
  vpc_id = data.aws_vpc.this.id

  authentication_options_type                       = "certificate-authentication"
  authentication_options_root_certificate_chain_arn = module.self_signed_cert_root.certificate_arn

  ## access
  client_vpn_authorize_all_groups = true
  client_vpn_subnet_ids           = data.aws_subnets.private.ids
  client_vpn_target_network_cidr  = data.aws_vpc.this.cidr_block

  ## self signed certificate
  create_self_signed_server_cert             = true
  self_signed_server_cert_server_common_name = "${var.namespace}-${var.environment}.arc-vpn-example.client"
  self_signed_server_cert_organization_name  = var.namespace
  self_signed_server_cert_ca_pem             = module.self_signed_cert_ca.certificate_pem
  self_signed_server_cert_private_ca_key_pem = join("", data.aws_ssm_parameter.ca_key[*].value)

  ## client vpn
  client_cidr             = cidrsubnet(data.aws_vpc.this.cidr_block, 6, 1)
  client_vpn_name         = "${var.namespace}-${var.environment}-client-vpn-example"
  client_vpn_gateway_name = "${var.namespace}-${var.environment}-vpn-gateway-example"

  tags = module.tags.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_site_to_site_vpn"></a> [aws\_site\_to\_site\_vpn](#module\_aws\_site\_to\_site\_vpn) | ./modules/site-to-site-vpn | n/a |
| <a name="module_client_vpn"></a> [client\_vpn](#module\_client\_vpn) | ./modules/client-vpn | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_vpn_config"></a> [client\_vpn\_config](#input\_client\_vpn\_config) | VPN configuration options including certs and vpn settings | <pre>object({<br>    create = optional(bool, false)<br>    # certs<br>    server_certificate_data = optional(object({<br>      create       = optional(bool, true)<br>      common_name  = string<br>      organization = string<br>      allowed_uses = optional(list(string), [<br>        "key_encipherment",<br>        "digital_signature",<br>        "server_auth"<br>      ])<br>      ca_cert_pem        = string<br>      ca_private_key_pem = string<br>      certificate_arn    = optional(string, null)<br>    }))<br><br><br>    # vpn settings<br>    iam_saml_provider_enabled      = optional(bool, false)<br>    iam_saml_provider_name         = optional(string, null)<br>    saml_metadata_document_content = optional(string, null)<br>    client_cidr_block              = string<br>    split_tunnel                   = optional(bool, true)<br>    self_service_portal            = optional(string, "disabled")<br>    dns_servers                    = optional(list(string), ["1.1.1.1", "1.0.0.1"])<br><br>    # logging options<br>    log_options = optional(object({<br>      enabled               = bool<br>      cloudwatch_log_stream = optional(string, null)<br>      cloudwatch_log_group  = optional(string, null)<br>      }), {<br>      enabled = false<br>    })<br><br>    # authentication options<br>    authentication_options = list(object({<br>      active_directory_id            = optional(string, null)<br>      root_certificate_chain_arn     = optional(string, null)<br>      saml_provider_arn              = optional(string, null)<br>      self_service_saml_provider_arn = optional(string, null)<br>      type                           = string<br>    }))<br><br>    transport_protocol = optional(string, "tcp")<br><br>    # security and network associations<br>    security_group_data = optional(object({<br>      client_vpn_additional_security_group_ids = optional(list(string), [])<br>      ingress_rules = list(object({<br>        description        = optional(string, "")<br>        from_port          = number<br>        to_port            = number<br>        protocol           = any<br>        cidr_blocks        = optional(list(string), [])<br>        security_group_ids = optional(list(string), [])<br>        ipv6_cidr_blocks   = optional(list(string), [])<br>      }))<br>      egress_rules = list(object({<br>        description        = optional(string, "")<br>        from_port          = number<br>        to_port            = number<br>        protocol           = any<br>        cidr_blocks        = optional(list(string), [])<br>        security_group_ids = optional(list(string), [])<br>        ipv6_cidr_blocks   = optional(list(string), [])<br>      }))<br>      }),<br>      {<br>        ingress_rules = [<br>          {<br>            description = "VPN ingress to 443"<br>            from_port   = 443<br>            to_port     = 443<br>            protocol    = "tcp"<br>          }<br>        ]<br>        egress_rules = [<br>          {<br>            description = "VPN egress to internet"<br>            from_port   = 0<br>            to_port     = 0<br>            protocol    = -1<br>            cidr_blocks = ["0.0.0.0/0"]<br>          }<br>        ]<br>      }<br>    )<br><br>    subnet_ids = list(string)<br><br>    # authorization options<br>    authorization_options = map(object({<br>      target_network_cidr  = string<br>      access_group_id      = optional(string, null)<br>      authorize_all_groups = optional(bool, true)<br>    }))<br>  })</pre> | <pre>{<br>  "authentication_options": null,<br>  "authorization_options": null,<br>  "client_cidr_block": null,<br>  "create": false,<br>  "subnet_ids": []<br>}</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environmenr name | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of Client VPN or Site to site VPN | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace name | `string` | n/a | yes |
| <a name="input_site_to_site_vpn_config"></a> [site\_to\_site\_vpn\_config](#input\_site\_to\_site\_vpn\_config) | Configuration for AWS VPN setup combining customer gateway, VPN gateway, and VPN connection configurations. This structure provides a comprehensive approach to defining all necessary parameters for establishing a Site-to-Site VPN. | <pre>object({<br>    create = optional(bool, false)<br>    customer_gateway = object({<br>      bgp_asn         = optional(number, 65000)     # The Border Gateway Protocol (BGP) Autonomous System Number (ASN) Value must be in 1 - 4294967294 range.<br>      certificate_arn = optional(string, null)      # The Amazon Resource Name (ARN) for the customer gateway certificate.<br>      device_name     = optional(string, null)      # A name for the customer gateway device.<br>      ip_address      = string                      # The IP address of the customer gateway<br>      type            = optional(string, "ipsec.1") # The type of VPN connection (e.g., 'ipsec.1')<br>    })<br><br>    vpn_gateway = object({<br>      create            = optional(bool, true)<br>      vpc_id            = string                     # The VPC ID to create the VPN gateway in.<br>      amazon_side_asn   = optional(number, null)     # The Autonomous System Number (ASN) for the Amazon side of the gateway.<br>      availability_zone = optional(string, null)     # The Availability Zone for the VPN gateway.<br>      route_table_ids   = optional(list(string), []) # This resource should not be used with a route table that has the propagating_vgws argument set. If that argument is set, any route propagation not explicitly listed in its value will be removed.<br>    })<br><br>    vpn_connection = object({<br>      transit_gateway_id  = optional(string, null) # The ID of the transit gateway<br>      static_routes_only  = optional(bool, false)  # If true, only static routes are used<br>      enable_acceleration = optional(bool, null)   # (Optional, Default false) Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.<br><br>      local_ipv4_network_cidr                 = optional(string, "0.0.0.0/0")  # The IPv4 CIDR on the customer gateway side<br>      local_ipv6_network_cidr                 = optional(string, null)         # The IPv6 CIDR on the customer gateway side "::/0"<br>      outside_ip_address_type                 = optional(string, "PublicIpv4") # Public or Private S2S VPN<br>      remote_ipv4_network_cidr                = optional(string, "0.0.0.0/0")  # The IPv4 CIDR on the AWS side<br>      remote_ipv6_network_cidr                = optional(string, null)         # The IPv6 CIDR on the AWS side "::/0"<br>      transport_transit_gateway_attachment_id = optional(string, null)         # Transit Gateway attachment ID (required for PrivateIpv4)<br><br>      tunnel_config = object({<br>        tunnel1 = object({<br>          inside_cidr                  = string                                       # CIDR block of the first tunnel<br>          preshared_key                = optional(string, null)                       # Pre-shared key for the first tunnel<br>          phase1_encryption_algorithms = optional(list(string), ["AES128", "AES256"]) # Phase 1 encryption algorithms for tunnel 1<br>          phase2_encryption_algorithms = optional(list(string), ["AES128", "AES256"]) # Phase 2 encryption algorithms for tunnel 1<br>          phase1_integrity_algorithms  = optional(list(string), ["SHA1", "SHA2-256"]) # Phase 1 integrity algorithms for tunnel 1<br>          phase2_integrity_algorithms  = optional(list(string), ["SHA1", "SHA2-256"]) # Phase 2 integrity algorithms for tunnel 1<br>          log_group_arn                = optional(string, null)<br>          log_group_kms_arn            = optional(string, null) # null - log disabled<br>          log_enabled                  = optional(bool, false)<br>          log_output_format            = optional(string, "json")<br>          log_retention_in_days        = optional(number, 7)<br>        })<br><br>        tunnel2 = object({<br>          inside_cidr                  = string                                       # CIDR block of the second tunnel<br>          preshared_key                = optional(string, null)                       # Pre-shared key for the second tunnel<br>          phase1_encryption_algorithms = optional(list(string), ["AES128", "AES256"]) # Phase 1 encryption algorithms for tunnel 2<br>          phase2_encryption_algorithms = optional(list(string), ["AES128", "AES256"]) # Phase 2 encryption algorithms for tunnel 2<br>          phase1_integrity_algorithms  = optional(list(string), ["SHA1", "SHA2-256"]) # Phase 1 integrity algorithms for tunnel 2<br>          phase2_integrity_algorithms  = optional(list(string), ["SHA1", "SHA2-256"]) # Phase 2 integrity algorithms for tunnel 2<br>          log_enabled                  = optional(bool, false)<br>          log_group_arn                = optional(string, null)<br>          log_group_kms_arn            = optional(string, null)<br>          log_output_format            = optional(string, "json")<br>          log_retention_in_days        = optional(number, 7)<br>        })<br>      })<br>      # VPN routes configuration (only for static routes)<br>      routes = optional(list(object({<br>        destination_cidr_block = string # The CIDR block to route through the VPN<br>      })), [])<br>    })<br>  })</pre> | <pre>{<br>  "create": false,<br>  "customer_gateway": null,<br>  "vpn_connection": null,<br>  "vpn_gateway": null<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to apply to every applicable resource | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the target network VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_vpn_arn"></a> [client\_vpn\_arn](#output\_client\_vpn\_arn) | The client vpn ARN |
| <a name="output_client_vpn_id"></a> [client\_vpn\_id](#output\_client\_vpn\_id) | The client vpn ID |
| <a name="output_customer_gateway_id"></a> [customer\_gateway\_id](#output\_customer\_gateway\_id) | Customer Gateway ID |
| <a name="output_server_certificate"></a> [server\_certificate](#output\_server\_certificate) | Server certificate ARN |
| <a name="output_site_to_site_vpn_id"></a> [site\_to\_site\_vpn\_id](#output\_site\_to\_site\_vpn\_id) | The site to site vpn ID |
| <a name="output_vpn_gateway_id"></a> [vpn\_gateway\_id](#output\_vpn\_gateway\_id) | The VPN Gateway ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

## Development

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations

- Configure pre-commit hooks
  ```sh
  pre-commit install
  ```

### Tests

- Tests are available in `test` directory
- Configure the dependencies
  ```sh
  cd test/
  go mod init github.com/sourcefuse/terraform-aws-refarch-vpn
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:

- SourceFuse
