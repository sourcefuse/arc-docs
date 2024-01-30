# Terraform AWS ARC GitHub IAM Module Usage Guide

## Introduction

### Purpose of the Document
This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC GitHub IAM module for managing IAM roles related to GitHub Actions in AWS.

### Module Overview
The [Terraform AWS ARC GitHub IAM](https://github.com/sourcefuse/terraform-aws-arc-github-iam) module simplifies the process of configuring IAM roles for GitHub Actions within an AWS environment.

### Prerequisites
Before using this module, ensure you have the following:
- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS IAM and Terraform concepts.

## Getting Started

### Module Source
To use the module in your Terraform configuration, include the following source block:
```hcl
module "github_iam" {
  source  = "sourcefuse/arc-github-iam/aws"
  version = "0.0.2"
  # insert the 3 required variables here
}
```
Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-github-iam/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:
1. Create a new folder in `terraform/` named `github-iam`.
2. Create the required files, see the [example](https://github.com/sourcefuse/terraform-aws-arc-github-iam/tree/main/example) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions
Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and modify IAM roles and policies for the account.

## Module Configuration

### Input Variables
For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-github-iam?tab=readme-ov-file#inputs) section.

### Output Values
For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-github-iam?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage
For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-github-iam/tree/main/example) folder.

This example will:
- Create the GitHub Identity Provider
- Create a role for use with GitHub OIDC
- Create an S3 list policy

### Tips and Recommendations
- If you need to create more than one role, you should set `create_github_oidc_provider = false` for each additional role created.

## Troubleshooting

### Reporting Issues
If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-github-iam/issues).

## Security Considerations

### IAM Policies and Permissions
Understand the security considerations related to IAM policies and permissions when using this module.

### Best Practices for IAM Roles
Follow best practices to ensure secure IAM role configurations:
- Use AWS Managed Policies where applicable
- Use an as-needed model for you policies.

## Contributing and Community Support

### Contributing Guidelines
Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-github-iam/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues
If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-github-iam/issues).

## License

### License Information
This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-github-iam/blob/main/LICENSE) file for more details.

### Open Source Contribution
Contribute to open source by using and enhancing this module. Your contributions are welcome!
