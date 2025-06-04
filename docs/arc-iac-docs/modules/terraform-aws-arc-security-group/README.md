![Module Structure](./static/banner.png)
# [terraform-aws-arc-security-group](https://github.com/sourcefuse/terraform-aws-arc-security-group)

<a href="https://github.com/sourcefuse/terraform-aws-arc-security-group/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-security-group.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-security-group/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-security-group.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-security-group&token=0e57ba3902cccbb2b9c0585a9859bccbf2d00e3c)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-security-group)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-security-group/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-security-group/actions/workflows/snyk.yaml)

## Introduction

The SourceFuse AWS Reference Architecture (ARC) Terraform module for creating and managing AWS security groups with customizable rules. It simplifies defining inbound and outbound rules for specific protocols, ports, and CIDR ranges, ensuring secure and efficient network traffic control in your infrastructure.

For more information about this repository and its usage, please see [Terraform AWS ARC Security Group Module Usage Guide](docs/module-usage-guide/README.md).

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Usage
See the `examples` folder for a complete example.

```hcl

locals {
  security_group_data = {
    create      = true
    description = "Security Group for Loadbalancer"

    ingress_rules = [
      {
        description = "Allow VPC traffic"
        cidr_block  = data.aws_vpc.this.cidr_block
        from_port   = 0
        ip_protocol = "tcp"
        to_port     = 65535
      },
      {
        description = "Allow traffic from self"
        self        = true
        from_port   = 0
        ip_protocol = "tcp"
        to_port     = 65535
      },
      {
        description              = "Allow traffic from security group"
        source_security_group_id = data.aws_security_group.default.id
        from_port                = 0
        ip_protocol              = "tcp"
        to_port                  = 65535
      }
    ]

    egress_rules = [
      {
        description = "Allow all outbound traffic"
        cidr_block  = "0.0.0.0/0"
        from_port   = -1
        ip_protocol = "-1"
        to_port     = -1
      }
    ]
  }
}

module "arc_security_group" {
  source  = "sourcefuse/arc-security-group/aws"
  version = "0.0.1"

  name          = "${var.namespace}-${var.environment}-sg"
  vpc_id        = data.aws_vpc.this.id
  ingress_rules = local.security_group_data.ingress_rules
  egress_rules  = local.security_group_data.egress_rules

  tags = module.tags.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.80.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_vpc_security_group_egress_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_egress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (optional) Description of Security Group | `string` | `null` | no |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | (optional) List of egress rules for the security group. | <pre>list(object({<br>    description                   = optional(string, null)<br>    cidr_block                    = optional(string, null)<br>    destination_security_group_id = optional(string, null)<br>    from_port                     = number<br>    ip_protocol                   = string<br>    to_port                       = string<br>    prefix_list_id                = optional(string, null)<br>  }))</pre> | `[]` | no |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | (optional) List of ingress rules for the security group. | <pre>list(object({<br>    description              = optional(string, null)<br>    cidr_block               = optional(string, null)<br>    source_security_group_id = optional(string, null)<br>    from_port                = number<br>    ip_protocol              = string<br>    to_port                  = string<br>    self                     = optional(bool, false)<br>  }))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Security Group name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for Security Group | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id for creating security group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Security Group ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning  
This project uses a `.version` file at the root of the repo which the pipeline reads from and does a git tag.  

When you intend to commit to `main`, you will need to increment this version. Once the project is merged,
the pipeline will kick off and tag the latest git commit.  

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

### Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests
- Tests are available in `test` directory
- Configure the dependencies
  ```sh
  cd test/
  go mod init github.com/sourcefuse/terraform-aws-refarch-<module_name>
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:
- SourceFuse ARC Team
