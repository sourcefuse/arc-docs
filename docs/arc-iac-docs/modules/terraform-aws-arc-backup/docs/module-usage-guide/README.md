# Terraform AWS ARC Backup Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for centrally manage and automate the backup of data across AWS services such as Amazon RDS, EBS, DynamoDB, EFS, and more

### Module Overview

The [terraform-aws-arc-backup](https://github.com/sourcefuse/terraform-aws-arc-backup) module creates AWS backup plan, Backup Vault , Vault lock etc

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS Backup

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

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

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `backup`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-backup/tree/main/example) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create AWS Budgets and backup alerts

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-backup?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-backup?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-backup/tree/main/example) folder.

This example will create:

AWS Backup plan, Backup vault , Vault lock and backup vault in secondary region,  based on the `locals.tf` variables.

`backup_plan` - variable is used to define Backup plan and lifecycle policies.

`backup_vault_data` - Defines where backup has to be stored

`backup_selection_data` - Which all resources needs backup

### Tips and Recommendations

The module focuses on setting up AWS Budgets and notifications for cost management and monitoring. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-backup/issues).

## Security Considerations

### Best Practices for AWS backup

Follow best practices to ensure secure backup configurations.
[backup Security on AWS](https://docs.aws.amazon.com/cost-management/latest/userguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-backup/blob/main/CONTRIBUTING.md) file.

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-backup/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
