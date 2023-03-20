# terraform-aws-ref-arch-network

## Overview

AWS Terraform module for the SourceFuse Reference Architecture. We consider this module to be a high order module that is composed of smaller modules underneath. In most cases, we use open source modules to create our high order modules. Please see the reference documentation below for more information about the modules used under the hood.

![arc_network_hla](./static/arc_network_hla.png)

Creates the following resources in a single region.

* VPC
* Multi-AZ private and public subnets
* Route tables, internet gateway, and NAT gateways
* Configurable VPN Gateway
* Configurable VPC Endpoints

## Usage

See the `example` folder for a complete example.

```shell
################################################################
## shared
################################################################
variable "environment" {
  type        = string
  description = "Name of the environment, i.e. dev, stage, prod"
  default     = "dev"
}

variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "namespace" {
  type        = string
  description = "Namespace of the project, i.e. refarch"
  default     = "example"
}

################################################################
## network
################################################################
variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to deploy resources in."
  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}

variable "vpc_ipv4_primary_cidr_block" {
  type        = string
  description = "IPv4 CIDR block for the VPC to use."
  default     = "10.9.0.0/16"
}



################################################################
## defaults
################################################################
terraform {
  required_version = "~> 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9"
    }
  }
}

provider "aws" {
  region = var.region
}

module "tags" {
  source = "git::https://github.com/sourcefuse/terraform-aws-refarch-tags.git?ref=1.1.0"

  environment = var.environment
  project     = "terraform-aws-ref-arch-network"

  extra_tags = {
    Example = "True"
  }
}

################################################################
## network
################################################################
module "network" {
  source = "../."

  namespace                   = var.namespace
  environment                 = var.environment
  availability_zones          = var.availability_zones
  vpc_ipv4_primary_cidr_block = var.vpc_ipv4_primary_cidr_block

  tags = module.tags.tags
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0, >= 4.0.0, >= 4.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.49.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_private_subnets"></a> [private\_subnets](#module\_private\_subnets) | git::https://github.com/cloudposse/terraform-aws-multi-az-subnets.git | 0.15.0 |
| <a name="module_public_subnets"></a> [public\_subnets](#module\_public\_subnets) | git::https://github.com/cloudposse/terraform-aws-multi-az-subnets.git | 0.15.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/cloudposse/terraform-aws-vpc.git | 2.0.0 |
| <a name="module_vpc_endpoints"></a> [vpc\_endpoints](#module\_vpc\_endpoints) | git::https://github.com/cloudposse/terraform-aws-vpc.git//modules/vpc-endpoints | 2.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_dx_connection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dx_connection) | resource |
| [aws_vpn_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpn_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | When `true`, assign AWS generated IPv6 CIDR block to the VPC.  Conflicts with `ipv6_ipam_pool_id`. | `bool` | `true` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones to deploy resources in. | `list(string)` | n/a | yes |
| <a name="input_default_network_acl_deny_all"></a> [default\_network\_acl\_deny\_all](#input\_default\_network\_acl\_deny\_all) | When `true`, manage the default network acl and remove all rules, disabling all ingress and egress.<br>When `false`, do not mange the default networking acl, allowing it to be managed by another component. | `bool` | `false` | no |
| <a name="input_default_route_table_no_routes"></a> [default\_route\_table\_no\_routes](#input\_default\_route\_table\_no\_routes) | When `true`, manage the default route table and remove all routes, disabling all ingress and egress.<br>When `false`, do not mange the default route table, allowing it to be managed by another component.<br>Conflicts with Terraform resource `aws_main_route_table_association`. | `bool` | `false` | no |
| <a name="input_default_security_group_deny_all"></a> [default\_security\_group\_deny\_all](#input\_default\_security\_group\_deny\_all) | When `true`, manage the default security group and remove all rules, disabling all ingress and egress.<br>When `false`, do not manage the default security group, allowing it to be managed by another component. | `bool` | `true` | no |
| <a name="input_direct_connect_bandwidth"></a> [direct\_connect\_bandwidth](#input\_direct\_connect\_bandwidth) | The bandwidth of the connection.<br>Valid values for dedicated connections: 1Gbps, 10Gbps.<br>Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps and 100Gbps.<br>Case sensitive. | `string` | `"10Gbps"` | no |
| <a name="input_direct_connect_enabled"></a> [direct\_connect\_enabled](#input\_direct\_connect\_enabled) | Enable direct connect. | `bool` | `false` | no |
| <a name="input_direct_connect_encryption_mode"></a> [direct\_connect\_encryption\_mode](#input\_direct\_connect\_encryption\_mode) | The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are no\_encrypt, should\_encrypt, and must\_encrypt. | `string` | `"must_encrypt"` | no |
| <a name="input_direct_connect_location"></a> [direct\_connect\_location](#input\_direct\_connect\_location) | The location of AWS Direct Connect. Use `aws directconnect describe-locations` for the list of AWS Direct Connect locations. Use locationCode for the value. | `string` | `null` | no |
| <a name="input_direct_connect_provider"></a> [direct\_connect\_provider](#input\_direct\_connect\_provider) | The name of the service provider associated with the connection. | `string` | `null` | no |
| <a name="input_direct_connect_request_macsec"></a> [direct\_connect\_request\_macsec](#input\_direct\_connect\_request\_macsec) | Boolean value indicating whether you want the connection to support MAC Security (MACsec).<br>MAC Security (MACsec) is only available on dedicated connections.<br>Changing this value will cause the resource to be destroyed and re-created.<br>See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html) for more information. | `bool` | `false` | no |
| <a name="input_direct_connect_skip_destroy"></a> [direct\_connect\_skip\_destroy](#input\_direct\_connect\_skip\_destroy) | et to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the Terraform state. | `bool` | `false` | no |
| <a name="input_dns_hostnames_enabled"></a> [dns\_hostnames\_enabled](#input\_dns\_hostnames\_enabled) | Set `true` to enable [DNS hostnames](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-hostnames) in the VPC | `bool` | `true` | no |
| <a name="input_dns_support_enabled"></a> [dns\_support\_enabled](#input\_dns\_support\_enabled) | Set `true` to enable DNS resolution in the VPC through the Amazon provided DNS server | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment, i.e. dev, stage, prod | `string` | n/a | yes |
| <a name="input_gateway_vpc_endpoints"></a> [gateway\_vpc\_endpoints](#input\_gateway\_vpc\_endpoints) | A map of Gateway VPC Endpoints to provision into the VPC. This is a map of objects with the following attributes:<br>- `name`: Short service name (either "s3" or "dynamodb")<br>- `policy` = A policy (as JSON string) to attach to the endpoint that controls access to the service. May be `null` for full access.<br>- `route_table_ids`: List of route tables to associate the gateway with. Routes to the gateway<br>  will be automatically added to these route tables. | <pre>map(object({<br>    name            = string<br>    policy          = string<br>    route_table_ids = list(string)<br>  }))</pre> | `{}` | no |
| <a name="input_interface_vpc_endpoints"></a> [interface\_vpc\_endpoints](#input\_interface\_vpc\_endpoints) | A map of Interface VPC Endpoints to provision into the VPC.<br>This is a map of objects with the following attributes:<br>- `name`: Simple name of the service, like "ec2" or "redshift"<br>- `policy`: A policy (as JSON string) to attach to the endpoint that controls access to the service. May be `null` for full access.<br>- `private_dns_enabled`: Set `true` to associate a private hosted zone with the specified VPC<br>- `security_group_ids`: The ID of one or more security groups to associate with the network interface. The first<br>  security group will replace the default association with the VPC's default security group. If you want<br>  to maintain the association with the default security group, either leave `security_group_ids` empty or<br>  include the default security group ID in the list.<br>- `subnet_ids`: List of subnet in which to install the endpoints. | <pre>map(object({<br>    name                = string<br>    policy              = string<br>    private_dns_enabled = bool<br>    security_group_ids  = list(string)<br>    subnet_ids          = list(string)<br>  }))</pre> | `{}` | no |
| <a name="input_internet_gateway_enabled"></a> [internet\_gateway\_enabled](#input\_internet\_gateway\_enabled) | Set `true` to create an Internet Gateway for the VPC | `bool` | `true` | no |
| <a name="input_ipv6_egress_only_internet_gateway_enabled"></a> [ipv6\_egress\_only\_internet\_gateway\_enabled](#input\_ipv6\_egress\_only\_internet\_gateway\_enabled) | Set `true` to create an IPv6 Egress-Only Internet Gateway for the VPC | `bool` | `false` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the project, i.e. refarch | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to apply to every resource | `map(string)` | n/a | yes |
| <a name="input_vpc_endpoints_enabled"></a> [vpc\_endpoints\_enabled](#input\_vpc\_endpoints\_enabled) | Enable VPC endpoints. | `bool` | `false` | no |
| <a name="input_vpc_ipv4_primary_cidr_block"></a> [vpc\_ipv4\_primary\_cidr\_block](#input\_vpc\_ipv4\_primary\_cidr\_block) | IPv4 CIDR block for the VPC to use. | `string` | n/a | yes |
| <a name="input_vpn_gateway_enabled"></a> [vpn\_gateway\_enabled](#input\_vpn\_gateway\_enabled) | Enable VPN Gateway. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_route_table_id"></a> [default\_route\_table\_id](#output\_default\_route\_table\_id) | The Default Route Table ID for the VPC |
| <a name="output_main_route_table_id"></a> [main\_route\_table\_id](#output\_main\_route\_table\_id) | The Main Route Table ID for the VPC |
| <a name="output_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#output\_private\_subnet\_cidrs) | Private subnet CIDRs |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private subnet IDs |
| <a name="output_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#output\_public\_subnet\_cidrs) | Public subnet CIDRs |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public subnet IDs |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | The VPC CIDR block |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The VPC ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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
- Configure golang deps for tests
  ```sh
  go get github.com/gruntwork-io/terratest/modules/terraform
  go get github.com/stretchr/testify/assert
  ```

### Tests
- Tests are available in `test` directory
- In the test directory, run the below command 
  ```sh
  go test -timeout 1800s
  ```

## Authors
This project is authored by:
- SourceFuse
