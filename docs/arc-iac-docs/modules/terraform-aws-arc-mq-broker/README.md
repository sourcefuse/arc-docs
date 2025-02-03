![Module Structure](./static/banner.png)
# [terraform-aws-arc-mq-broker](https://github.com/sourcefuse/terraform-aws-arc-mq-broker)

<a href="https://github.com/sourcefuse/terraform-aws-arc-mq-broker/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-mq-broker.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-mq-broker/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-mq-broker.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-mq-broker&token=4b8c1e882ad792f7a14686684a563bccb5e6ee4c)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-mq-broker)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/actions/workflows/snyk.yaml)


## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module provides an easy and scalable way to deploy and manage Amazon MQ brokers. It supports various deployment options and configurations, including engine types (ActiveMQ and RabbitMQ), instance classes, storage types, and security settings. The module simplifies the setup of brokers for message-oriented middleware with high availability and fault tolerance.

## Usage

See the `example` folder for a working module example.  

```hcl
################################################################################
## RabbitMQ
################################################################################
module "mq_broker" {
  source              = "sourcefuse/arc-mq-broker/aws"
  version             = "0.0.1"
  name                = var.name
  broker_type         = var.broker_type
  engine_version      = var.engine_version
  host_instance_type  = var.host_instance_type
  vpc_id              = data.aws_vpc.default.id
  subnet_ids          = data.aws_subnets.private.ids
  deployment_mode     = var.deployment_mode
  users               = var.users
  enable_logging      = var.enable_logging
  security_group_data = local.security_group_data
  tags                = module.tags.tags

}

################################################################################
## Apache ActiveMQ
################################################################################
module "mq_broker" {
  source              = "sourcefuse/arc-mq-broker/aws"
  version             = "0.0.1"
  name                = var.name
  broker_type         = var.broker_type
  engine_version      = var.engine_version
  host_instance_type  = var.host_instance_type
  vpc_id              = data.aws_vpc.default.id
  subnet_ids          = data.aws_subnets.private.ids
  storage_type        = var.storage_type
  deployment_mode     = var.deployment_mode
  users_replica       = var.users_replica
  users               = var.users
  enable_logging      = var.enable_logging
  security_group_data = local.security_group_data
  tags                = module.tags.tags

}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.80.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_arc_security_group"></a> [arc\_security\_group](#module\_arc\_security\_group) | sourcefuse/arc-security-group/aws | 0.0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_mq_broker.active-mq](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/mq_broker) | resource |
| [aws_mq_broker.rabbit-mq](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/mq_broker) | resource |
| [aws_ssm_parameter.replication_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.replication_user_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.user_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.user_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [random_password.mq_broker](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Whether changes should be applied immediately. | `bool` | `true` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Indicates whether minor engine upgrades are applied automatically to the instance during the maintenance window. | `bool` | `true` | no |
| <a name="input_broker_type"></a> [broker\_type](#input\_broker\_type) | Specify the broker type: RabbitMQ or ActiveMQ | `string` | `"RabbitMQ"` | no |
| <a name="input_data_replication_primary_broker_arn"></a> [data\_replication\_primary\_broker\_arn](#input\_data\_replication\_primary\_broker\_arn) | The ARN of the primary broker for data replication | `string` | `""` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Deployment mode for the RabbitMQ or ActiveMQ broker. | `string` | `"SINGLE_INSTANCE"` | no |
| <a name="input_enable_data_replication"></a> [enable\_data\_replication](#input\_enable\_data\_replication) | Enable or disable data replication for the broker | `bool` | `false` | no |
| <a name="input_enable_logging"></a> [enable\_logging](#input\_enable\_logging) | Enable general logging for the RabbitMQ broker. | `bool` | `false` | no |
| <a name="input_encryption_options"></a> [encryption\_options](#input\_encryption\_options) | Encryption options for the resource. | <pre>object({<br>    use_aws_owned_key = bool<br>    kms_key_id        = string<br>  })</pre> | <pre>{<br>  "kms_key_id": null,<br>  "use_aws_owned_key": true<br>}</pre> | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Version of the RabbitMQ or ActiveMQ engine. | `string` | `"3.8.26"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment, i.e. dev, stage, prod | `string` | `"dev"` | no |
| <a name="input_host_instance_type"></a> [host\_instance\_type](#input\_host\_instance\_type) | Instance type for the RabbitMQ or ActiveMQ broker. | `string` | `"mq.t3.micro"` | no |
| <a name="input_ldap_config"></a> [ldap\_config](#input\_ldap\_config) | Configuration for LDAP server | <pre>object({<br>    required                 = bool<br>    hosts                    = list(string)<br>    role_base                = string<br>    role_name                = string<br>    role_search_matching     = string<br>    role_search_subtree      = bool<br>    service_account_password = string<br>    service_account_username = string<br>    user_base                = string<br>    user_role_name           = string<br>    user_search_matching     = string<br>    user_search_subtree      = bool<br>  })</pre> | <pre>{<br>  "hosts": [],<br>  "required": false,<br>  "role_base": "",<br>  "role_name": "",<br>  "role_search_matching": "",<br>  "role_search_subtree": false,<br>  "service_account_password": "",<br>  "service_account_username": "",<br>  "user_base": "",<br>  "user_role_name": "",<br>  "user_search_matching": "",<br>  "user_search_subtree": false<br>}</pre> | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Maintenance window configuration including day, time, and time zone. | <pre>object({<br>    day_of_week = string<br>    time_of_day = string<br>    time_zone   = string<br>  })</pre> | <pre>{<br>  "day_of_week": "MONDAY",<br>  "time_of_day": "02:00",<br>  "time_zone": "UTC"<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the RabbitMQ or ActiveMQ broker. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the project, i.e. arc | `string` | `"arc"` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | Whether the RabbitMQ or ActiveMQ broker is publicly accessible. | `bool` | `false` | no |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br>    security_group_ids_to_attach = optional(list(string), [])<br>    create                       = optional(bool, true)<br>    description                  = optional(string, null)<br>    ingress_rules = optional(list(object({<br>      description              = optional(string, null)<br>      cidr_block               = optional(string, null)<br>      source_security_group_id = optional(string, null)<br>      from_port                = number<br>      ip_protocol              = string<br>      to_port                  = string<br>      self                     = optional(bool, false)<br>    })), [])<br>    egress_rules = optional(list(object({<br>      description                   = optional(string, null)<br>      cidr_block                    = optional(string, null)<br>      destination_security_group_id = optional(string, null)<br>      from_port                     = number<br>      ip_protocol                   = string<br>      to_port                       = string<br>      prefix_list_id                = optional(string, null)<br>    })), [])<br>  })</pre> | <pre>{<br>  "create": false<br>}</pre> | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | Storage type for the RabbitMQ or ActiveMQ or ActiveMQ broker. | `string` | `"ebs"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for the RabbitMQ or ActiveMQ broker. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources | `map(string)` | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | List of users for the ActiveMQ broker | <pre>object({<br>    username = optional(string)<br>    groups   = optional(list(string), [])<br>  })</pre> | `{}` | no |
| <a name="input_users_replica"></a> [users\_replica](#input\_users\_replica) | List of users for the ActiveMQ broker | <pre>object({<br>    replication_username = optional(string)<br>    groups               = optional(list(string), [])<br>  })</pre> | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID for the VPC endpoint. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_broker_id"></a> [broker\_id](#output\_broker\_id) | The ID of the MQ broker (RabbitMQ or ActiveMQ) based on the broker type. |
| <a name="output_replication_user_password_ssm_parameter"></a> [replication\_user\_password\_ssm\_parameter](#output\_replication\_user\_password\_ssm\_parameter) | The SSM parameter storing the replication user password for ActiveMQ. |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | The ID of the created security group for brokerMQ. |
| <a name="output_user_password_ssm_parameter"></a> [user\_password\_ssm\_parameter](#output\_user\_password\_ssm\_parameter) | The SSM parameter storing the brokerMQ user password. |
| <a name="output_user_ssm_parameter"></a> [user\_ssm\_parameter](#output\_user\_ssm\_parameter) | The SSM parameter storing the brokerMQ username. |
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
