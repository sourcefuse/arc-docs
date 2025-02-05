![Module Structure](./static/banner.png)

# [terraform-aws-arc-network](https://github.com/sourcefuse/terraform-aws-arc-network)

<a href="https://github.com/sourcefuse/terraform-aws-arc-network/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-network.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-network/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-network.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-network)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-network)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-ref-arch-network/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-ref-arch-network/actions/workflows/snyk.yaml)
## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module facilitates the management of AWS VPC and associated networking resources. It includes features like VPC creation, Client VPN, and VPC endpoints for services like S3 and DynamoDB, enhancing network connectivity and security.

For more information about this repository and its usage, please see [Terraform AWS ARC Network Module Usage Guide](docs/module-usage-guide/README.md).

![arc_network_hla](./static/arc_network_hla.png)

Create the following resources in a single region.

* VPC
* Multi-AZ private and public subnets
* Route tables, internet gateway, and NAT gateways
* Configurable VPC Endpoints

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Usage
See the `examples` folder for a complete example.

```shell

module "network" {
  namespace   = var.namespace
  environment = var.environment

  name                    = "arc-poc"
  create_internet_geteway = true
  availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
  cidr_block              = "10.0.0.0/16"
  vpc_endpoint_data = [
    {
      service            = "s3"
      route_table_filter = "private"
    },
    {
      service            = "dynamodb"
      route_table_filter = "private"
    }
  ]

  tags = module.tags.tags
}

```
## custom-subnets example

```shell

module "network" {
  source                      = "sourcefuse/arc-network/aws"
  version                     = "3.0.0"

  namespace   = var.namespace
  environment = var.environment

  name                    = "arc-poc"
  create_internet_geteway = true
  subnet_map              = local.subnet_map
  cidr_block              = "10.0.0.0/16"
  vpc_endpoint_data = [
    {
      service            = "s3"
      route_table_filter = "private"
    },
    {
      service            = "dynamodb"
      route_table_filter = "private"
    }
  ]

  tags = module.tags.tags

}

locals {

  prefix = "arc-poc"

  subnet_map = {
    "${local.prefix}-public-az1" = {
      name                    = "${local.prefix}-public-az1"
      cidr_block              = "10.0.0.0/19"
      availability_zone       = "us-east-1a"
      nat_gateway_name        = "${local.prefix}-az1-ngtw01"
      attach_nat_gateway      = false
      create_nat_gateway      = true
      attach_internet_gateway = true
    },
    "${local.prefix}-public-az2" = {
      name                    = "${local.prefix}-public-az2"
      cidr_block              = "10.0.32.0/19"
      availability_zone       = "us-east-1b"
      nat_gateway_name        = "${local.prefix}-az2-ngtw01"
      attach_nat_gateway      = false
      create_nat_gateway      = true
      attach_internet_gateway = true
    },
    "${local.prefix}-db-az1" = {
      name                    = "${local.prefix}-db-az1"
      cidr_block              = "10.0.64.0/19"
      availability_zone       = "us-east-1a"
      nat_gateway_name        = "${local.prefix}-az1-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    },
    "${local.prefix}-db-az2" = {
      name                    = "${local.prefix}-db-az2"
      cidr_block              = "10.0.96.0/19"
      availability_zone       = "us-east-1b"
      nat_gateway_name        = "${local.prefix}-az2-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    },
    "${local.prefix}-app-az1" = {
      name                    = "${local.prefix}-app-az1"
      cidr_block              = "10.0.128.0/19"
      availability_zone       = "us-east-1a"
      nat_gateway_name        = "${local.prefix}-az1-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    },
    "${local.prefix}-app-az2" = {
      name                    = "${local.prefix}-app-az2"
      cidr_block              = "10.0.160.0/19"
      availability_zone       = "us-east-1b"
      nat_gateway_name        = "${local.prefix}-az2-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    }
  }
}

```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.75.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | sourcefuse/arc-kms/aws | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_eip.nat_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_flow_log.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_flow_logs_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.additional](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.internet_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.additional](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_vpc_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.flow_logs_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_route_tables.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_tables) | data source |
| [aws_route_tables.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_tables) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. | `bool` | `false` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | (optional) List of availability zones , if subnet map is null , subnet map automatically derived | `list(string)` | `[]` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The CIDR block for the VPC. | `string` | n/a | yes |
| <a name="input_create_internet_gateway"></a> [create\_internet\_gateway](#input\_create\_internet\_gateway) | (optional) Whether to create internet gateway | `bool` | `true` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | A boolean flag to enable/disable DNS hostnames in the VPC. | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | A boolean flag to enable/disable DNS support in the VPC. | `bool` | `true` | no |
| <a name="input_enable_network_address_usage_metrics"></a> [enable\_network\_address\_usage\_metrics](#input\_enable\_network\_address\_usage\_metrics) | Enable or disable network address usage metrics. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Specifies the name of the deployment environment (e.g., dev, stage, prod). | `string` | n/a | yes |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | A tenancy option for instances launched into the VPC. Can be 'default' or 'dedicated'. | `string` | `"default"` | no |
| <a name="input_internet_gateway_name"></a> [internet\_gateway\_name](#input\_internet\_gateway\_name) | (optional) If the Internet Gateway name is not provided, it will be automatically derived. | `string` | `null` | no |
| <a name="input_ipv4_ipam_pool_id"></a> [ipv4\_ipam\_pool\_id](#input\_ipv4\_ipam\_pool\_id) | The IPv4 IPAM pool ID from which to allocate the CIDR. | `string` | `null` | no |
| <a name="input_ipv4_netmask_length"></a> [ipv4\_netmask\_length](#input\_ipv4\_netmask\_length) | The netmask length of the IPv4 CIDR block to allocate to the VPC. | `number` | `null` | no |
| <a name="input_ipv6_cidr_block"></a> [ipv6\_cidr\_block](#input\_ipv6\_cidr\_block) | The IPv6 CIDR block to associate with your VPC. | `string` | `null` | no |
| <a name="input_ipv6_cidr_block_network_border_group"></a> [ipv6\_cidr\_block\_network\_border\_group](#input\_ipv6\_cidr\_block\_network\_border\_group) | The network border group of the IPv6 CIDR block. | `string` | `null` | no |
| <a name="input_ipv6_ipam_pool_id"></a> [ipv6\_ipam\_pool\_id](#input\_ipv6\_ipam\_pool\_id) | The IPv6 IPAM pool ID from which to allocate the CIDR. | `string` | `null` | no |
| <a name="input_ipv6_netmask_length"></a> [ipv6\_netmask\_length](#input\_ipv6\_netmask\_length) | The netmask length of the IPv6 CIDR block to allocate to the VPC. | `number` | `null` | no |
| <a name="input_kms_config"></a> [kms\_config](#input\_kms\_config) | n/a | <pre>object({<br>    deletion_window_in_days = number<br>    enable_key_rotation     = bool<br>  })</pre> | <pre>{<br>  "deletion_window_in_days": 30,<br>  "enable_key_rotation": true<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | VPC name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace name | `string` | n/a | yes |
| <a name="input_subnet_map"></a> [subnet\_map](#input\_subnet\_map) | A map defining the configuration of subnets, their attributes, and associated resources.<br>Each subnet configuration can include the following details:<br><br>- **name**: Name of the subnet.<br>- **cidr\_block**: CIDR block for the subnet.<br>- **availability\_zone**: The availability zone where the subnet is located.<br>- **enable\_resource\_name\_dns\_a\_record\_on\_launch**: Enable or disable DNS A records for EC2 instances launched in this subnet (default: false).<br>- **enable\_resource\_name\_dns\_aaaa\_record\_on\_launch**: Enable or disable DNS AAAA records for EC2 instances launched in this subnet (default: false).<br>- **map\_public\_ip\_on\_launch**: Specify whether to auto-assign a public IP for instances in this subnet (default: false).<br>- **ipv6\_native**: Enable or disable native IPv6 support for the subnet (default: false).<br>- **assign\_ipv6\_address\_on\_creation**: Whether to automatically assign an IPv6 address to instances launched in the subnet (default: false).<br>- **ipv6\_cidr\_block**: The IPv6 CIDR block associated with the subnet (optional).<br>- **enable\_dns64**: Enable or disable DNS64 in the subnet (default: false).<br>- **nat\_gateway\_name**: Name of the NAT Gateway attached to the subnet (optional).<br>- **create\_nat\_gateway**: Specify whether to create a NAT Gateway for the subnet (default: true).<br>- **attach\_nat\_gateway**: Specify whether to attach an existing NAT Gateway to the subnet (default: false).<br>- **attach\_internet\_gateway**: Specify whether to attach an Internet Gateway to the subnet (default: false).<br>- **additional\_routes**: List of additional routes to be added to the subnet route table, typically to route traffic to other services like Transit Gateway. Each route includes:<br>  - **type**: Type of resource (default: "transit-gateway").<br>  - **id**: The ID of the route target (e.g., a Transit Gateway ID).<br>  - **cidr\_block**: The destination CIDR block for the route.<br>  - **destination\_ipv6\_cidr\_block**: The destination IPV6 CIDR block for the route. | <pre>map(object({<br>    name                                           = string<br>    cidr_block                                     = string<br>    availability_zone                              = string<br>    enable_resource_name_dns_a_record_on_launch    = optional(bool, false)<br>    enable_resource_name_dns_aaaa_record_on_launch = optional(bool, false)<br>    map_public_ip_on_launch                        = optional(bool, false)<br>    ipv6_native                                    = optional(bool, false)<br>    assign_ipv6_address_on_creation                = optional(bool, false)<br>    ipv6_cidr_block                                = optional(string, null)<br>    enable_dns64                                   = optional(bool, false)<br>    nat_gateway_name                               = optional(string, null)<br>    create_nat_gateway                             = optional(bool, true)<br>    attach_nat_gateway                             = optional(bool, false)<br>    attach_internet_gateway                        = optional(bool, false)<br>    additional_routes = optional(list(object({<br>      type                        = optional(string, "transit-gateway") // possible values : network-interface ,transit-gateway, vpc-endpoint, vpc-peering-connection<br>      id                          = string<br>      destination_cidr_block      = optional(string, null)<br>      destination_ipv6_cidr_block = optional(string, null)<br>      }<br>    )), [])<br>  }))</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) Tags for VPC resources | `map(string)` | `{}` | no |
| <a name="input_vpc_endpoint_data"></a> [vpc\_endpoint\_data](#input\_vpc\_endpoint\_data) | (optional) List of VPC endpoints to be created | <pre>list(object({<br>    service             = string<br>    route_table_filter  = optional(string, "private") // possible values 'private' and 'public'<br>    policy_doc          = optional(string, null)<br>    private_dns_enabled = optional(bool, false)<br>    security_group_ids  = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_flow_log_config"></a> [vpc\_flow\_log\_config](#input\_vpc\_flow\_log\_config) | If `s3_bucket_arn` is null, only CloudWatch logging is enabled by default. If `s3_bucket_arn` is provided, S3 logging is enabled. | <pre>object({<br>    enable            = bool<br>    retention_in_days = number<br>    s3_bucket_arn     = string<br>  })</pre> | <pre>{<br>  "enable": true,<br>  "retention_in_days": 7,<br>  "s3_bucket_arn": null<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_route_table_id"></a> [default\_route\_table\_id](#output\_default\_route\_table\_id) | The Default Route Table ID for the VPC |
| <a name="output_id"></a> [id](#output\_id) | The VPC ID |
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | Internet gateway ID for the VPC |
| <a name="output_main_route_table_id"></a> [main\_route\_table\_id](#output\_main\_route\_table\_id) | The Main Route Table ID for the VPC |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private subnet IDs |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public subnet IDs |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | The VPC CIDR block |
| <a name="output_vpc_default_network_acl_id"></a> [vpc\_default\_network\_acl\_id](#output\_vpc\_default\_network\_acl\_id) | The ID of the network ACL created by default on VPC creation |
| <a name="output_vpc_endpoint_arn"></a> [vpc\_endpoint\_arn](#output\_vpc\_endpoint\_arn) | The ARN of the VPC Endpoint Connection. |
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
### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests
- Tests are available in `test` directory
- In the test directory, run the below command
  ```sh
  go test -timeout 1800s
  ```

## Authors
This project is authored by:
- SourceFuse