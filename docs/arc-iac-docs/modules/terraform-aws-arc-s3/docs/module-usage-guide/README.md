# Terraform AWS ARC s3 Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform module for managing and automating AWS S3 buckets with integrated configurations.

### Module Overview

The [terraform-aws-arc-s3](https://github.com/sourcefuse/terraform-aws-arc-s3) module simplifies the creation, configuration, and management of S3 buckets by providing a set of predefined settings and options. The module supports advanced features such as bucket policies, access control lists (ACLs), lifecycle rules, and versioning. It also includes support for configuring Cross-Origin Resource Sharing (CORS) and cross-region replication for enhanced data availability and resilience. By leveraging this module, users can ensure consistent, secure, and efficient management of their S3 resources within an infrastructure-as-code (IaC) framework.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- Basic knowledge of AWS ElastiCache and CloudWatch.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-s3" {
  source      = "sourcefuse/arc-s3/aws"
  version     = "0.0.1"

  name             = var.name
  acl              = var.acl
  lifecycle_config = local.lifecycle_config
  tags             = module.tags.tags
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in terraform/ named s3.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-s3/tree/main/examples) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and manage S3 buckets

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-s3#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-s3#outputs) section.

## Module Usage

### Basic Usage

For usage, see the [examples/simple](https://github.com/sourcefuse/terraform-aws-arc-s3/tree/main/examples/simple) folder.

This example will create:

- AWS S3 buckets with the specified configuration.
- Configurations for lifecycle rules.

### Tips and Recommendations

- Configure lifecycle rules for efficient storage management.
- Use bucket policies and ACLs to control access.
- Enable versioning for better data protection.
- Use tags to organize and manage resources effectively.

## Cross region Replication
For usage, see the [examples/replication](https://github.com/sourcefuse/terraform-aws-arc-s3/tree/main/examples/replication) folder.

This example will create:

- AWS S3 buckets with the specified configuration.
- Cross region replication for S3 bucket

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-s3/issues).

## Security Considerations

### Best Practices for AWS S3

Follow best practices to ensure secure and efficient configurations for S3 buckets.
[S3 Best Practices](https://docs.aws.amazon.com/AmazonS3/latest/userguide/security-best-practices.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-s3/blob/main/CONTRIBUTING.md) file.

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-s3/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
