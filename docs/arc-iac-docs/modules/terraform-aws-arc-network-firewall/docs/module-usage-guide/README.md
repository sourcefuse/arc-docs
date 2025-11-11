# Terraform AWS ARC Network Firewall Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC Network Firewall module for securing network traffic in AWS environments.

### Module Overview

The Terraform AWS ARC Network Firewall module provides a secure and modular foundation for deploying AWS Network Firewall on AWS. This module supports both VPC-attached and Transit Gateway-attached configurations, offering comprehensive network security with stateful and stateless rule groups, advanced logging capabilities, and TLS inspection features.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured with appropriate permissions
- Terraform installed (version >= 1.5)
- A working knowledge of AWS VPC, Network Firewall, and Terraform concepts
- Understanding of network security concepts and firewall rules

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-network-firewall" {
  source  = "sourcefuse/arc-network-firewall/aws"
  version = "0.0.1"

  # Required variables
  name                    = "my-network-firewall"
  vpc_id                  = "vpc-12345678"
  subnet_ids              = ["subnet-12345678", "subnet-87654321"]
  create_firewall         = true
  firewall_policy_config  = {
    create      = true
  }

  tags = {
    Environment = "production"
    Project     = "security"
  }
}
```

Refer to the [Terraform Registry](https://github.com/sourcefuse/terraform-aws-arc-network-firewall) for the latest version.

### Integration with Existing Terraform Configurations

To integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named `network-firewall`
- Create the required files, see the examples to base off of
- Configure with your backend:
   - Create the environment backend configuration file: `config.<environment>.hcl`
   - region: Where the backend resides
   - key: `network-firewall/terraform.tfstate`
   - bucket: Bucket name where the terraform state will reside
   - dynamodb_table: Lock table so there are not duplicate tfplans in the mix
   - encrypt: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- AWS Network Firewall resources
- VPC and subnet resources
- IAM roles and policies for logging
- CloudWatch Logs groups
- S3 buckets for logging
- KMS keys for encryption

## Module Configuration

### Input Variables

For a complete list of input variables, see the README [Inputs](../../README.md#inputs) section.

Key variables include:
- `name`: Name of the Network Firewall
- `vpc_id`: VPC ID where the firewall will be deployed
- `subnet_ids`: List of subnet IDs for firewall endpoints
- `firewall_config`: Combined firewall settings object
- `create_firewall_policy`: Whether to create a firewall policy

### Output Values

For a complete list of outputs, see the README [Outputs](../../README.md#outputs) section.

Key outputs include:
- `firewall_arn`: ARN of the created Network Firewall
- `firewall_id`: ID of the created Network Firewall
- `firewall_policy_arn`: ARN of the firewall policy
- `endpoint_ids`: List of firewall endpoint IDs

## Module Usage

### Basic Usage

For basic usage, see the [basic-firewall example](../../examples/basic-firewall) folder.

This example will create:

- A Network Firewall with basic stateful and stateless rules
- Firewall policy with default actions
- Firewall endpoints in specified subnets
- Basic logging configuration

### Tips and Recommendations

- The module focuses on provisioning AWS Network Firewall with flexible configuration options. The convention-based approach enables downstream services to easily integrate with the firewall endpoints.
- Use VPC-attached configuration for protecting specific VPCs and Transit Gateway-attached for centralized inspection across multiple VPCs.
- Enable logging to monitor traffic patterns and security events.
- Consider using TLS inspection for encrypted traffic analysis in high-security environments.
- Adjust rule group capacities based on your expected rule complexity and volume.

## Troubleshooting

### Common Issues

1. **Subnet Selection**: Ensure subnets are in different Availability Zones for high availability
2. **Capacity Planning**: Monitor rule group capacity usage to avoid hitting limits
3. **Logging Configuration**: Verify IAM permissions for logging destinations
4. **Transit Gateway Integration**: Ensure proper route table configurations

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-network-firewall/issues).

## Security Considerations

### AWS Network Firewall Security

Understand the security considerations related to Network Firewall on AWS when using this module:

- Network Firewall provides stateful inspection of traffic
- Rules are processed in order of priority
- Default actions determine behavior for unmatched traffic
- Encryption at rest and in transit is supported

### Best Practices for AWS Network Firewall

Follow best practices to ensure secure Network Firewall configurations:

- [AWS Network Firewall Security Best Practices](https://docs.aws.amazon.com/network-firewall/latest/developerguide/security-best-practices.html)
- Enable comprehensive logging for security monitoring
- Use least-privilege access for firewall management
- Regularly update rule groups to address new threats
- Implement proper change management for firewall policies

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-network-firewall/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
