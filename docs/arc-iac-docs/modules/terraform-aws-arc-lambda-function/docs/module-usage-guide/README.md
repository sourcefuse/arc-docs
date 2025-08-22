# Terraform AWS ARC Lambda-Function Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to create lambda-function using the module.

### Module Overview

The ARC Terraform-aws-arc-lambda module provides a comprehensive and unified solution for deploying AWS Lambda serverless computing infrastructure on AWS. This versatile module supports multiple deployment methods including local source code, S3-based deployments, and container images, allowing you to choose the deployment approach that best fits your application requirements and operational needs.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, Docker and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:


```hcl
module "lambda-function" {
  source                 = "sourcefuse/arc-lambda-function/aws"
  version                = "0.0.1"

  # Basic configuration
  function_name = var.function_name
  description   = "Basic Lambda function example"
  runtime       = "python3.11"
  handler       = "lambda_function.lambda_handler"
  memory_size   = 128
  timeout       = 10

  # Deployment package
  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  # Environment variables
  environment_variables = {
    ENVIRONMENT = var.environment
    LOG_LEVEL   = var.log_level
  }

  # CloudWatch Logs
  create_log_group      = true
  log_retention_in_days = 7

 tags = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-lambda-function/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/lambda-function named .
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

- All lambda-function services
- VPC and networking configuration

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-lambda-function#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-lambda-function?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-lambda-function/tree/main/examples) folder.

This example will create:

- **lambda-function Studio Domain**: Complete

### Tips and Recommendations

- The module focuses on provisioning lambda-function. The convention-based approach enables downstream services to easily attach to the lambda-function. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-lambda-function/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to lambda-function on AWS when using this module.

### Best Practices for AWS lambda-function

Follow best practices to ensure secure lambda-function configurations:

- [AWS lambda-function Security Best Practices](https://docs.aws.amazon.com/lambda/latest/dg/best-practices.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-lambda-function/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-lambda-function/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-lambda-function/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
