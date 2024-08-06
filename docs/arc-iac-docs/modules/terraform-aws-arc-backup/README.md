![Module Structure](./static/banner.png)

# [terraform-aws-arc-backup](https://github.com/sourcefuse/terraform-aws-arc-backup)

<a href="https://github.com/sourcefuse/terraform-aws-arc-backup/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-backup.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-backup/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-backup.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-backup&token=114a52a83d2ede2ba64f617fd805aa7e68c0eaf1)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-backup)


[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-backup/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-backup/actions/workflows/snyk.yaml)

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module centralizes and automates the backup of data across AWS services such as Amazon RDS, EBS, DynamoDB, EFS, and more. It allows you to schedule automated backups, and manage and monitor backup activity from a single console, ensuring compliance and data protection. AWS Backup also supports cross-region and cross-account backup capabilities for enhanced data durability and disaster recovery.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:



```plaintext
billing/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "example" {
  source      = "sourcefuse/arc-backup/aws"
  version     = "0.0.1"

  backup_vault_data        = local.backup_vault_data
  backup_plan              = local.backup_plan
  create_role              = true
  role_name                = local.backup_role_name
  backup_selection_data    = local.backup_selection_data
  vault_lock_configuration = local.vault_lock_configuration

  tags = module.tags.tags
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "backup_plan_id" {
  description = "AWS backups plan ID"
  value       = module.example.backup_plan_id
}

output "vault_arn" {
  description = "Vault ARN"
  value       = module.example.vault_arn
}

```

5. **.tfvars**

Inside the `.tfvars` file of the module, you can provide desired values that can be referenced in the main configuration. For example:

Edit the [locals.tf](./example/locals.tf) file and provide desired values.  
`backup_plan` - variable is used to define Backup plan and lifecycle policies.

`backup_vault_data` - Defines where backup has to be stored

`backup_selection_data` - Which all resources needs backup

```hcl
locals {
  prefix = "arc-dev"

  backup_plan_name = "${local.prefix}-backup-plan"
  backup_role_name = "${local.prefix}-backup-restore"
  vault_name       = "${local.prefix}-backup-vault-1"

  backup_vault_data = {
    name                            = local.vault_name
    enable_encryption               = true
    backup_role_name                = local.backup_role_name
    kms_key_deletion_window_in_days = 7
    kms_key_admin_arns              = []
  }


  backup_plan = {
    name = local.backup_plan_name

    rules = [{
      name                     = "backup-rule-1"
      target_vault_name        = local.vault_name
      schedule                 = "cron(0 12 * * ? *)"
      recovery_point_tags      = module.tags.tags
      enable_continuous_backup = true

      lifecycle = [{ // its mandatory if `enable_continuous_backup = true` , error: Lifecycle must be specified for backup rule enabled continuous backup
        cold_storage_after = 0
        delete_after       = 35
      }]
    }]
  }

  backup_selection_data = {
    name      = "${local.prefix}-backup-selection"
    plan_name = local.backup_plan_name
    resources = ["*"]
    selection_tags = [{
      type  = "string"
      key   = "enable_backup"
      value = "true"
      }
    ]
  }

  vault_lock_configuration = {
    changeable_for_days = 3 // it has to be atleast 3
    max_retention_days  = 2
    min_retention_days  = 1
  }

}
```

## First Time Usage
***uncomment the backend block in [main.tf](./example/main.tf)***
```shell
terraform init -backend-config=config.dev.hcl
```
***If testing locally, `terraform init` should be fine***

Create a `dev` workspace
```shell
terraform workspace new dev
```

Plan Terraform
```shell
terraform plan -var-file dev.tfvars
```

Apply Terraform
```shell
terraform apply -var-file dev.tfvars
```

## Production Setup
```shell
terraform init -backend-config=config.prod.hcl
```

Create a `prod` workspace
```shell
terraform workspace new prod
```

Plan Terraform
```shell
terraform plan -var-file prod.tfvars
```

Apply Terraform
```shell
terraform apply -var-file prod.tfvars  
```

## Cleanup  
Destroy Terraform
```shell
terraform destroy -var-file dev.tfvars
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.49.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_backup_vault"></a> [backup\_vault](#module\_backup\_vault) | ./modules/backup-vault | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_backup_plan.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_plan) | resource |
| [aws_backup_selection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_selection) | resource |
| [aws_backup_vault_lock_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault_lock_configuration) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.aws_backup_policy_backup_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.aws_backup_policy_restore_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_plan"></a> [backup\_plan](#input\_backup\_plan) | Rules for AWS backup plan, null act as flag to enable or disable backup plan | <pre>object({<br>    name = string<br>    rules = list(object({<br>      name                     = string<br>      target_vault_name        = string<br>      schedule                 = string<br>      start_window             = optional(string, null)<br>      completion_window        = optional(string, null)<br>      recovery_point_tags      = optional(map(string), {})<br>      enable_continuous_backup = optional(bool, false)<br>      lifecycle = list(object({<br>        cold_storage_after = optional(number, 0)<br>        delete_after       = number<br>      }))<br><br>      copy_action = optional(list(object({<br>        destination_vault_arn = string<br>        lifecycle = optional(list(object({<br>          cold_storage_after = string<br>          delete_after       = string<br>        })), [])<br>      })), [])<br><br>    }))<br>  })</pre> | `null` | no |
| <a name="input_backup_selection_data"></a> [backup\_selection\_data](#input\_backup\_selection\_data) | (optional) Backup selection criteria to select resources | <pre>object({<br>    name      = string<br>    plan_name = string<br>    resources = optional(list(string), ["*"]) // List of resources eg [ "arn:aws:ec2:*:*:instance/*" ] , * -> All supported resources<br>    selection_tags = optional(list(object({<br>      type  = string<br>      key   = string<br>      value = string<br>    })), [])<br>  })</pre> | `null` | no |
| <a name="input_backup_vault_data"></a> [backup\_vault\_data](#input\_backup\_vault\_data) | Details to create backup vault, null act as flag to enable or disable | <pre>object({<br>    name                            = string<br>    backup_role_name                = string<br>    enable_encryption               = optional(bool, true)<br>    kms_key_deletion_window_in_days = optional(number, 7)<br>    kms_key_admin_arns              = optional(list(string), [])<br>  })</pre> | `null` | no |
| <a name="input_create_role"></a> [create\_role](#input\_create\_role) | (optional) Role Required for taking backup and restore | `bool` | `true` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | IAM role name | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for AWS backup service | `map(string)` | n/a | yes |
| <a name="input_vault_lock_configuration"></a> [vault\_lock\_configuration](#input\_vault\_lock\_configuration) | (optional) Vault lock configuration , changeable\_for\_days > 0 , then its `governance` else `compliance` mode | <pre>object({<br>    vault_name          = string<br>    changeable_for_days = number<br>    max_retention_days  = number<br>    min_retention_days  = number<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backup_plan_id"></a> [backup\_plan\_id](#output\_backup\_plan\_id) | AWS backups plan ID |
| <a name="output_backup_role_arn"></a> [backup\_role\_arn](#output\_backup\_role\_arn) | n/a |
| <a name="output_backup_role_name"></a> [backup\_role\_name](#output\_backup\_role\_name) | n/a |
| <a name="output_vault_arn"></a> [vault\_arn](#output\_vault\_arn) | ARN of Vault |
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
