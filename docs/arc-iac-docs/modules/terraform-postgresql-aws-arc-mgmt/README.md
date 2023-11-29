# [terraform-postgresql-aws-arc-mgmt](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt)

[![snyk](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt/actions/workflows/snyk.yaml)

## Overview

It demonstrates how to create and manage a PostgreSQL database, roles, schemas, and associated resources on AWS.

In the example folder, you will see how this module should be called in downstream and how we can pass the values.

## Usage
  ```
required_providers {
    postgresql = {
      version = "~> 1.21"
      source  = "cyrilgdn/postgresql"
    }
    aws = {
      version = "~> 5.0"
      source  = "hashicorp/aws"
    }
  }
  ```
1. Initialize Terraform with the backend config
  ```shell
  terraform init -backend-config=config.dev.hcl
  ```
2. Plan Terraform
  ```shell
  terraform plan -var-file .\tfvars\dev.tfvars
  ```
3. Apply Terraform
  ```shell
  terraform apply -var-file .\tfvars\dev.tfvars
  ```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | ~> 1.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.24.0 |
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.21.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [postgresql_database.pg_db](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/database) | resource |
| [postgresql_default_privileges.default_privileges](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/default_privileges) | resource |
| [postgresql_role.pg_role](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/role) | resource |
| [postgresql_schema.pg_schema](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/schema) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_connect_timeout"></a> [connect\_timeout](#input\_connect\_timeout) | connection timeout of the database | `number` | n/a | yes |
| <a name="input_database"></a> [database](#input\_database) | Name of the database | `string` | `"postgres"` | no |
| <a name="input_db_host"></a> [db\_host](#input\_db\_host) | Database host address | `string` | n/a | yes |
| <a name="input_db_port"></a> [db\_port](#input\_db\_port) | Database port | `number` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_postgresql_database"></a> [postgresql\_database](#input\_postgresql\_database) | n/a | <pre>map(object({<br>    db_name           = string<br>    db_owner          = string<br>    template          = optional(string, null)<br>    lc_collate        = optional(string, null)<br>    connection_limit  = optional(string, null)<br>    allow_connections = optional(string, null)<br>  }))</pre> | n/a | yes |
| <a name="input_postgresql_default_privileges"></a> [postgresql\_default\_privileges](#input\_postgresql\_default\_privileges) | n/a | <pre>map(object({<br>    role        = string<br>    database    = string<br>    schema      = string<br>    owner       = string<br>    object_type = string<br>    privileges  = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_postgresql_schema"></a> [postgresql\_schema](#input\_postgresql\_schema) | n/a | <pre>map(object({<br>    schema_name   = string<br>    schema_owner  = optional(string, null)<br>    database      = optional(string, null)<br>    if_not_exists = optional(string, null)<br>    drop_cascade  = optional(string, null)<br><br>    policy = optional(list(object({<br>      usage = optional(string, null)<br>      role  = optional(string, null)<br>    })), [])<br>  }))</pre> | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project. | `string` | n/a | yes |
| <a name="input_random_password"></a> [random\_password](#input\_random\_password) | To generate random password for DB role | <pre>map(object({<br>    length  = string<br>    special = bool<br>  }))</pre> | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | n/a | yes |
| <a name="input_sslmode"></a> [sslmode](#input\_sslmode) | sslmode of the database | `string` | `"require"` | no |
| <a name="input_ssm_parameter_name"></a> [ssm\_parameter\_name](#input\_ssm\_parameter\_name) | SSM parameter name to fetch credentials | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | database master user name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the parameter |