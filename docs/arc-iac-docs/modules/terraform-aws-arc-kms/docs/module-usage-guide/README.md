# Terraform AWS ARC KMS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for managing KMS.
### Module Overview

The [terraform-aws-arc-kms](https://github.com/sourcefuse/terraform-aws-arc-kms) module provides a secure and modular foundation for managing KMS

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS KMS

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "kms" {
 source                  = "sourcefuse/arc-kms/aws"
  version                 = "0.0.5"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `kms`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-kms/tree/main/examples/simple) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to set up AWS KMS

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-kms?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-kms?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-kms/tree/main/example) folder.

This example will create:

module "kms" : This module creates an AWS KMS key. The key's properties are configured with variables.
The tags created by the "tags" module are attached to this key.
The policy for the key is specified by a local value kms_policy.

### Tips and Recommendations

The module focuses on setting up setting up an AWS KMS. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-kms/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to AWS KMS when using this module.

### Best Practices for AWS KMS

Follow best practices to ensure best Security configurations.
[KMS security on AWS](https://docs.aws.amazon.com/kms/latest/developerguide/best-practices.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-kms/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-kms/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-kms/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
