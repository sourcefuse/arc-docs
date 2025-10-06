# Terraform AWS ARC SNS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to create sns using the module.

### Module Overview

The ARC Terraform module provides an easy and consistent way to create and manage Amazon SNS topics on AWS. This module supports defining topics, subscriptions, and policies, making it simple to connect services like S3, Lambda, and SQS. By using this module, you can quickly set up reliable messaging and notification workflows while following AWS best practices.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:


```hcl
module "sns" {
  source               = "sourcefuse/arc-sns/aws"
  version              = "0.0.1"

  name                 = var.topic_name
  display_name         = var.display_name

  tags = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-sns/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/sns named .
- Create the required files, see the examples to base off of.
- Configure with your backend:
   - Create the environment backend configuration file: config.<environment>.hcl
   - region: Where the backend resides
   - key: <working_directory>/terraform.tfstate
   - bucket: Bucket name where the terraform state will reside
   - dynamodb_table: Lock table so there are not duplicate tfplans in the mix
   - encrypt: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- All sns services

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-sns#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-sns?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-sns/tree/main/examples) folder.

This example will create:

- **sns Studio Domain**: Complete

### Tips and Recommendations

- The module focuses on provisioning sns. The convention-based approach enables downstream services to easily attach to the sns. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-sns/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to sns on AWS when using this module.

### Best Practices for AWS sns

Follow best practices to ensure secure sns configurations:

- [AWS sns Security Best Practices](https://docs.aws.amazon.com/sns/latest/dg/sns-security-best-practices.html

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-sns/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-sns/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-sns/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
