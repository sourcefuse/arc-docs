![Module Structure](./static/banner.png)

# [terraform-postgresql-aws-arc-mgmt](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt)

<a href="https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-postgresql-aws-arc-mgmt.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-postgresql-aws-arc-mgmt.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-postgresql-mgmt)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-postgresql-mgmt)

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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0, < 6.0 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | ~> 1.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.28.0 |
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [postgresql_database.pg_db](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/database) | resource |
| [postgresql_default_privileges.pg_default_privileges](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/default_privileges) | resource |
| [postgresql_role.pg_role](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/role) | resource |
| [postgresql_schema.pg_schema](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/schema) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pg_roles"></a> [pg\_roles](#input\_pg\_roles) | A map of objects where each key-value pair represents a PostgreSQL role | <pre>map(object({<br>    postgres_role_name = string<br>    login              = string<br>    password           = string<br>  }))</pre> | n/a | yes |
| <a name="input_pg_ssm_parameters"></a> [pg\_ssm\_parameters](#input\_pg\_ssm\_parameters) | postgresql SSM parameters | <pre>map(object({<br>    name     = string<br>    type     = string<br>    password = string<br>  }))</pre> | n/a | yes |
| <a name="input_postgresql_database"></a> [postgresql\_database](#input\_postgresql\_database) | A map where each key-value pair represents a PostgreSQL database configuration | <pre>map(object({<br>    db_name           = string<br>    db_owner          = string<br>    template          = optional(string, null)<br>    lc_collate        = optional(string, null)<br>    connection_limit  = optional(string, null)<br>    allow_connections = optional(string, null)<br>  }))</pre> | n/a | yes |
| <a name="input_postgresql_default_privileges"></a> [postgresql\_default\_privileges](#input\_postgresql\_default\_privileges) | configuration block for postgresql default privileges | <pre>map(object({<br>    role        = string<br>    database    = string<br>    schema      = string<br>    owner       = string<br>    object_type = string<br>    privileges  = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_postgresql_schema"></a> [postgresql\_schema](#input\_postgresql\_schema) | configuration block for postgresql schema | <pre>map(object({<br>    schema_name   = string<br>    schema_owner  = optional(string, null)<br>    database      = optional(string, null)<br>    if_not_exists = optional(string, null)<br>    drop_cascade  = optional(string, null)<br><br>    policy = optional(list(object({<br>      usage = optional(string, null)<br>      role  = optional(string, null)<br>    })), [])<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the parameter |
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
### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests

- Tests are available in `test` directory
- Configure the dependencies

```sh
cd test
go mod init github.com/sourcefuse/terraform-aws-ref-arch-db
go get github.com/gruntwork-io/terratest/modules/terraform
```

- Now execute the test

```sh
cd test/
go test
```

## Authors

This project is authored by:

- SourceFuse ARC Team
