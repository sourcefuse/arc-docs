# Terraform AWS ARC Route53 Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform Route53

### Module Overview

A production-ready Terraform module for managing AWS Route 53 hosted zones and DNS records with support for all 7 routing policies (weighted, latency, failover, geolocation, geoproximity, multivalue, CIDR), health checks, and alias records for AWS services. Features include public/private zones, multi-VPC associations, existing zone support, following AWS and Terraform best practices for enterprise use.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, Route53, and Terraform concepts.
- An existing Application Load Balancer
- An existing CloudFront distribution

## Features

- Alias records for Application Load Balancer
- Alias records for CloudFront distribution
- Automatic health check evaluation

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-route53_basic" {
  source   = "sourcefuse/arc-route53/aws"
  version  = "0.0.1"

  name    = "example.com"
  comment = "Example public hosted zone"

  records = {
    "example.com" = {
      type    = "A"
      ttl     = 300
      records = ["192.0.2.1"]
    }
    "www.example.com" = {
      type    = "A"
      ttl     = 300
      records = ["192.0.2.1"]
    }
    "mail.example.com" = {
      type    = "MX"
      ttl     = 3600
      records = ["10 mail.example.com"]
    }
    "example.com-txt" = {
      type    = "TXT"
      ttl     = 300
      records = ["v=spf1 include:_spf.example.com ~all"]
    }
  }

  tags = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-route53/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named route53.
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

- Route 53 is a global service (no region-specific permissions needed except KMS for DNSSEC)
- KMS keys for DNSSEC **must** be in `us-east-1` region
- VPC permissions required only for private hosted zones
- Health check permissions optional if not using health checks
- DNSSEC permissions optional if not enabling DNSSEC

## Module Configuration
## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-route53#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-route53?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-route53/tree/main/examples) folder.

This example will create:

- **route53 Studio Domain**: Complete

### Tips and Recommendations

- The module focuses on provisioning route53. The convention-based approach enables downstream services to easily attach to the route53. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-route53/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to route53 on AWS when using this module.

### Best Practices for AWS route53

Follow best practices to ensure secure route53 configurations:

- [AWS route53 Security Best Practices](https://docs.aws.amazon.com/apigateway/latest/developerguide/security-best-practices.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-route53/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-route53/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-route53/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
