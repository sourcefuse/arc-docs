# Terraform AWS ARC Security Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for managing Security Hub components.

### Module Overview

The [terraform-aws-arc-security](https://github.com/sourcefuse/terraform-aws-arc-security) module provides a secure and modular foundation for managing Security Hub components.

### Prerequisites

Before using this module, ensure you have the following:
- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS Security

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "cloud_security" {
  source  = "sourcefuse/arc-security/aws"
  version = "1.0.2"
  # insert the required variables here
}
```
Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-security/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `security`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-security/tree/main/examples/simple) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to set up a cloud security infrastructure on AWS.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-security?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-security?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-security/tree/main/example) folder.

This example will create:

A "cloud_security" module, which sets up various AWS security services.
AWS Inspector: An automated security assessment service that helps improve the security and compliance of applications deployed on AWS.

AWS Config:This includes how the resources are related to one another and how they were configured in the past so you can see how the configurations and relationships change over time.

AWS GuardDuty: A threat detection service that continuously monitors for malicious activity and unauthorized behavior to protect your AWS accounts and workloads.

AWS Security Hub: Gives you a comprehensive view of your high-priority security alerts and compliance status across AWS accounts.
It also sets up IAM roles for AWS Config and AWS Inspector if specified.

It configures SNS subscribers for AWS Config, GuardDuty, and Security Hub. These subscribers will receive notifications about security events.It enables certain AWS Config managed rules and Security Hub standards
It configures AWS Inspector with specified rules, schedule, and event subscription.

Finally, it assigns the tags created earlier to the "cloud_security" module.

### Tips and Recommendations

The module focuses on setting up setting up a cloud security infrastructure on AWS. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-security/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Cloud Security when using this module.

### Best Practices for AWS Cloud Security

Follow best practices to ensure best Security configurations.
[Cloud Security on AWS](https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-and-compliance.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-security/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-security/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-security/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
