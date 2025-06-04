# Terraform AWS ARC Security Group Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to create and manage Security Groups

### Module Overview

The Terraform AWS ARC Security Group module create and manage AWS security groups with customizable ingress and egress rules for secure network traffic control.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, security grouo, and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-sg" {
  source  = "sourcefuse/arc-security-group/aws"
  version = "0.0.1"
  # insert the required variables here
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-security-group/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named security-group.
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

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-security-group?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-security-group?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-security-group/tree/main/example) folder.

This example will create:

This Terraform module creates a security group with the following configurations:

Ingress Rules:

- VPC Traffic: Allows all TCP traffic within the VPC (0-65535) based on the VPC CIDR block.
- Self-Traffic: Allows all TCP traffic (0-65535) within the same security group for self-referencing communication.
- Source Security Group: Permits TCP traffic (0-65535) from a specific source security group.

Egress Rules:

- Outbound Traffic: Allows unrestricted outbound traffic (0.0.0.0/0) for all protocols and ports.

### Tips and Recommendations

The module can manage egress rules to security groups, S3 endpoints, and more.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-security-group/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Security Group

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-security-group/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-security-group/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-security-group/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
