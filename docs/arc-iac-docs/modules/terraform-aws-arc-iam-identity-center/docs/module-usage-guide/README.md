# Terraform AWS ARC IAM Identity Center Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC IAM Identity Center module for managing AWS SSO resources.

### Module Overview

The Terraform AWS ARC IAM Identity Center module provides a secure and modular foundation for deploying and managing AWS IAM Identity Center (AWS SSO) resources on AWS, including permission sets, users, groups, and account assignments.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured with appropriate IAM Identity Center permissions.
- Terraform installed (>= 1.5.0).
- AWS CLI configured (optional but recommended).
- A working knowledge of AWS IAM Identity Center, AWS Organizations, and Terraform concepts.
- An existing AWS IAM Identity Center instance (or the module will auto-discover it).

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
provider "aws" {
  region = var.region
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

module "aws_sso" {
  source  = "sourcefuse/arc-iam-identity-center/aws"
  version = "~> 1.0"

  # Basic configuration
  permission_sets = {
    "AdminAccess" = {
      description      = "Full administrative access"
      session_duration = "PT8H"
      aws_managed_policies = [
        "arn:aws:iam::aws:policy/AdministratorAccess"
      ]
    }
  }

  identity_store_groups = {
    "Admins" = {
      display_name = "Administrators"
      description  = "System administrators"
    }
  }

  account_assignments = {
    "admins-full-access" = {
      permission_set_name = "AdminAccess"
      principal_type      = "GROUP"
      principal_id        = "Admins"
      target_type         = "AWS_ACCOUNT"
      target_id          = "123456789012"
    }
  }

  tags = {
    Environment = "production"
    Project     = "identity-management"
  }
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-iam-identity-center/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named `iam-identity-center`.
- Create the required files, see the examples to base off of.
- Configure with your backend:
   - Create the environment backend configuration file: config.<environment>.hcl
   - region: Where the backend resides
   - key: iam-identity-center/terraform.tfstate
   - bucket: Bucket name where the terraform state will reside
   - dynamodb_table: Lock table so there are not duplicate tfplans in the mix
   - encrypt: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- IAM Identity Center instances and configurations
- SSO Admin permission sets and policy attachments
- SSO Admin account assignments
- Identity Store users and groups
- Identity Store group memberships
- SSO Admin applications and application assignments

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](../../README.md#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](../../README.md#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](../../examples/) folder.

This example will create:

- Permission sets with AWS managed policies
- Identity Store groups for organizing users
- Account assignments linking groups to AWS accounts
- Proper IAM policies and permissions for SSO access

### Tips and Recommendations

- The module focuses on provisioning IAM Identity Center resources following AWS best practices. The convention-based approach enables easy management of users, groups, and permissions across multiple AWS accounts.
- Use the `complete-user-group-management` example for the most intuitive user management experience.
- Consider using group-based assignments rather than direct user assignments for better maintainability.
- Set appropriate session durations based on security requirements and user needs.
- Use permission boundaries for additional security controls when needed.
- Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-iam-identity-center/issues).

## Security Considerations

### AWS IAM Identity Center

Understand the security considerations related to IAM Identity Center on AWS when using this module:

- Identity Center operates at the organization level and requires AWS Organizations
- Permission sets define what users can do in assigned accounts
- Session durations should be set based on security requirements
- Use permission boundaries for additional security controls
- Regular audit of user access and permissions is recommended

### Best Practices for AWS IAM Identity Center

Follow best practices to ensure secure IAM Identity Center configurations:

- [AWS IAM Identity Center Security Best Practices](https://docs.aws.amazon.com/singlesignon/latest/userguide/security-best-practices.html)
- Use least privilege principle when creating permission sets
- Implement proper group-based access control
- Enable CloudTrail logging for audit purposes
- Use MFA for enhanced security
- Regularly review and rotate access permissions

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-iam-identity-center).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
