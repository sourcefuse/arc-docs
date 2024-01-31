# Terraform AWS ARC Billing Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for managing AWS budgets, and sending billing alarms to Slack.

### Module Overview

The [terraform-aws-arc-billing](https://github.com/sourcefuse/terraform-aws-arc-billing) module provides a secure and modular foundation for managing AWS budgets, and sending billing alarms to Slack.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS budgets and Billing

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "example_budgets" {
  source  = "sourcefuse/arc-billing/aws"
  version = "1.0.0"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `billing-alerts`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-billing/tree/main/examples/simple) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create AWS Budgets and billing alerts

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-billing?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-billing?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-billing/tree/main/example) folder.

This example will create:

AWS Budgets based on the `var.budgets` variable. AWS Budgets gives you the ability to set custom cost and usage budgets that alert you when your costs or usage exceed your budgeted amount.

`notifications_enabled` and `encryption_enabled` are flags to enable notifications and encryption respectively.

`slack_webhook_url`, `slack_channel`, and `slack_username` are used to configure notifications to a Slack channel.

`billing_alerts_sns_subscribers` is a list of email addresses that will receive notifications when the budget thresholds are breached.

### Tips and Recommendations

The module focuses on setting up AWS Budgets and notifications for cost management and monitoring. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-billing/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to AWS Billing when using this module.

### Best Practices for AWS billing

Follow best practices to ensure secure Billing configurations.
[Billing Security on AWS](https://docs.aws.amazon.com/cost-management/latest/userguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-billing/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-billing/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-billing/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
