# Terraform AWS ARC cache Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform module for managing and automating AWS ElastiCache Redis instances with integrated monitoring using AWS CloudWatch.

### Module Overview

The [terraform-aws-arc-cache](https://github.com/sourcefuse/terraform-aws-arc-cache) module simplifies the creation, management, and monitoring of AWS ElastiCache Redis instances. This module ensures that your cache infrastructure is configured with best practices, high availability, and comprehensive monitoring.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- Basic knowledge of AWS ElastiCache and CloudWatch.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "elasticache-redis" {
  source               = "sourcefuse/arc-cache/aws"
  version              = "0.0.1"
  subnet_ids           = data.aws_subnets.private.ids
  vpc_id               = data.aws_vpc.vpc.id
  tags                 = module.tags.tags
  security_group_rules = var.security_group_rules
  name                 = var.name

  log_delivery_configuration = [
    {
      destination      = aws_cloudwatch_log_group.default.name
      destination_type = "cloudwatch-logs"
      log_format       = "json"
      log_type         = "engine-log"
    }
  ]

}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in terraform/ named elasticache.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-cache/tree/main/example) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and manage ElastiCache Redis instances and related resources like CloudWatch Log Groups.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-cache#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-cache#outputs) section.

## Module Usage

### Basic Usage

For usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-cache/tree/main/example) folder.

This example will create:

- AWS ElastiCache Redis instances with the specified configuration.
- CloudWatch Log Groups for monitoring and logging.
- Integration with CloudWatch for comprehensive monitoring.

### Tips and Recommendations

- Configure multi-AZ for high availability.
- Enable automatic failover for increased resilience.
- Customize parameter groups as needed for optimal performance.
- Use tags to organize and manage resources effectively.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-cache/issues).

## Security Considerations

### Best Practices for AWS backup

Follow best practices to ensure secure and efficient configurations for ElastiCache Redis instances.
[ElastiCache Best Practices](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/WhatIs.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-cache/blob/main/CONTRIBUTING.md) file.

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-cache/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
