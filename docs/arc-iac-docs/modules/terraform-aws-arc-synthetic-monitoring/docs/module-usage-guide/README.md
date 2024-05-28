# Terraform AWS ARC Synthetic Monitoring Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform module for centrally managing and automating the synthetic monitoring of your applications and APIs using AWS CloudWatch Synthetics Canaries.

### Module Overview

The [terraform-aws-arc-synthetic-monitoring](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring) module creates and manages canary scripts, schedules canary runs, and integrates with AWS CloudWatch for monitoring and alerting.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS CloudWatch Synthetics.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "synthetic-monitoring" {
  source            = "sourcefuse/arc-synthetic-monitoring/aws"
  version           = "0.0.1"
  sns_topic_name    = var.sns_topic_name
  protocol          = var.protocol
  endpoint          = var.endpoint
  kms_key_alias     = var.kms_key_alias
  canaries_with_vpc = local.canaries_with_vpc
  bucket_name       = var.bucket_name
  tags              = module.tags.tags
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `synthetics`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/tree/main/example) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and manage CloudWatch Synthetics Canaries.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring#outputs) section.

## Module Usage

### Basic Usage

For usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/tree/main/example) folder.

This example will create:

- AWS CloudWatch Synthetics Canaries based on the locals.tf variables.
- Canary scripts and schedules.
- Integration with CloudWatch for monitoring and alerting.

`canaries_with_vpc` - The canaries_with_vpc attribute allows you to configure canaries to run either within a specified VPC or without a VPC. This is useful for monitoring applications and endpoints that are not publicly accessible and require VPC configuration for access. It can also be used to monitor public URLs, in which case the VPC configuration can be omitted.

To configure canaries with VPC, set the canaries_with_vpc variable in your [locals.tf](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/blob/main/example/locals.tf) file as shown in the example

### Tips and Recommendations

The module focuses on setting up synthetic monitoring to detect anomalies and ensure application performance. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/issues).

## Security Considerations

### Best Practices for AWS backup

Follow best practices to ensure secure and efficient synthetic monitoring configurations.
[CloudWatch Synthetics Best Practices](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/blob/main/CONTRIBUTING.md) file.

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
