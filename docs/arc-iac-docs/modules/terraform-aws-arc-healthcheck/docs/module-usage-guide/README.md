# Terraform AWS ARC Healthcheck Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for Endpoint health check using Route53

### Module Overview

The [terraform-aws-arc-healthcheck](https://github.com/sourcefuse/terraform-aws-arc-healthcheck) module provides a secure and modular foundation for Endpoint health check using Route53

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS Route 53 health check and an associated CloudWatch alarm

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "health_check" {
  source            = "../"
  version           = 0.0.2
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `healthcheck`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-healthcheck/tree/main/examples/simple) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to set up AWS Route 53 health check and an associated CloudWatch alarm

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-healthcheck?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-healthcheck?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-healthcheck/tree/main/example) folder.

This example will create:

An AWS Route 53 health check and an associated CloudWatch alarm using the health_check module

health_check: This is the main module that creates the Route 53 health check and the CloudWatch alarm. It includes configurations for:

name: The name of the health check.

domain_name: The domain that the health check is checking.

resource_path: The path on the domain that the health check is checking.

type: The type of health check. In this case, it's a string match health check that checks if the response from the specified path contains a specific string.

measure_latency: Whether or not to measure the latency of the health check.

alarm_prefix: The prefix for the name of the CloudWatch alarm.

failure_threshold: The number of consecutive health check failures required before moving the health check to the unhealthy state.

request_interval: The interval between each health check request.

search_string: The string to search for in the response from the health check. If this string is not found, the health check is considered a failure.

alarm_endpoint: The endpoint to send alarm notifications to. In this case, it's an Opsgenie endpoint, so Opsgenie will receive notifications when the health check fails.

### Tips and Recommendations

The module focuses on setting up setting up an AWS Route 53 health check and an associated CloudWatch alarm. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-healthcheck/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to AWS Route 53 health check and an associated CloudWatch alarm when using this module.

### Best Practices for AWS Route53 health check

Follow best practices to ensure best Security configurations.
[AWS Route53 Healthcheclk security on AWS](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/best-practices-healthchecks.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-healthcheck/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-healthcheck/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-healthcheck/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
