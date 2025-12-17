# Terraform AWS ARC EFS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC EFS module for creating and managing Amazon Elastic File System (EFS) resources.

### Module Overview

The Terraform AWS ARC EFS module provides a secure and modular foundation for deploying Amazon Elastic File System (EFS) on AWS. This module creates a fully-featured EFS file system with mount targets, security groups, access points, backup policies, and optional replication configuration.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, EFS, and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
# Data sources for VPC resources
data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = ["false"]
  }
}

module "arc-efs" {
  source  = "sourcefuse/arc-efs/aws"
  version = "1.0.0"

  # Required variables
  namespace   = "my-org"
  environment = "dev"
  name        = "shared-storage"

  # Mount targets configuration using data sources
  mount_targets = {
    "us-east-1a" = { subnet_id = data.aws_subnets.private.ids[0] }
    "us-east-1b" = { subnet_id = data.aws_subnets.private.ids[1] }
  }

  # Security group configuration using data sources
  mount_target_security_group_vpc_id = data.aws_vpc.default.id
  allowed_cidr_blocks                = [data.aws_vpc.default.cidr_block]
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-efs/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

To integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named `efs`.
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

- EFS File Systems (`elasticfilesystem:*`)
- EFS Mount Targets (`elasticfilesystem:CreateMountTarget`, `elasticfilesystem:DeleteMountTarget`)
- EFS Access Points (`elasticfilesystem:CreateAccessPoint`, `elasticfilesystem:DeleteAccessPoint`)
- EFS Backup Policies (`elasticfilesystem:PutBackupPolicy`, `elasticfilesystem:DeleteBackupPolicy`)
- EFS File System Policies (`elasticfilesystem:PutFileSystemPolicy`, `elasticfilesystem:DeleteFileSystemPolicy`)
- EFS Replication Configuration (`elasticfilesystem:CreateReplicationConfiguration`, `elasticfilesystem:DeleteReplicationConfiguration`)
- VPC Security Groups (`ec2:CreateSecurityGroup`, `ec2:AuthorizeSecurityGroupIngress`, `ec2:AuthorizeSecurityGroupEgress`)
- VPC Resources for validation (`ec2:DescribeVpcs`, `ec2:DescribeSubnets`, `ec2:DescribeSecurityGroups`)

## Module Configuration

### Input Variables

For a complete list of input variables, see the README [Inputs](../../README.md#inputs) section.

Key variables include:
- `namespace`, `environment`, `name` - Required for resource naming
- `mount_targets` - Configuration for EFS mount targets in different AZs
- `performance_mode` - Either "generalPurpose" or "maxIO"
- `throughput_mode` - "bursting", "elastic", or "provisioned"
- `encrypted` - Enable encryption (default: true)
- `access_points` - Configuration for EFS access points
- `enable_backup_policy` - Enable automatic backups (default: true)

### Output Values

For a complete list of outputs, see the README [Outputs](../../README.md#outputs) section.

Key outputs include:
- `efs_id` - The EFS file system ID
- `efs_dns_name` - DNS name for mounting the EFS
- `mount_targets` - Information about created mount targets
- `security_group_id` - ID of the created security group
- `access_points` - Information about created access points

## Module Usage

### Basic Usage

For basic usage, see the [examples](../../examples/) folder.

This example will create:

- An encrypted EFS file system with general purpose performance mode
- Mount targets in specified availability zones
- A security group allowing NFS access from specified CIDR blocks
- Optional access points for fine-grained access control
- Backup policy (enabled by default)

### Tips and Recommendations

- The module focuses on provisioning a secure, scalable EFS file system. The convention-based approach enables downstream services to easily mount the EFS file system. Adjust the configuration parameters as needed for your specific use case.
- Use data sources to dynamically fetch VPC and subnet information instead of hardcoding values for better reusability
- Use multiple mount targets across different AZs for high availability
- Prefer private subnets for EFS mount targets for better security
- Consider using access points for applications requiring different permissions or directory structures
- Enable encryption at rest and in transit for sensitive data
- Configure appropriate security group rules to limit access to your EFS file system

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-efs/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Amazon EFS on AWS when using this module:

- EFS file systems are accessible within the VPC through mount targets
- Mount targets create network interfaces in your subnets with private IP addresses
- Security groups control access to mount targets at the network level
- EFS supports encryption in transit using TLS and encryption at rest using AWS KMS

### Best Practices for AWS EFS

Follow best practices to ensure secure EFS configurations:

- [AWS EFS Security Best Practices](https://docs.aws.amazon.com/efs/latest/ug/security-considerations.html)
- Enable encryption at rest using AWS KMS keys for sensitive data
- Use IAM policies and EFS access points to control file-level access
- Implement least-privilege access through security groups
- Monitor EFS access using AWS CloudTrail and VPC Flow Logs
- Use backup policies to protect against data loss
- Consider cross-region replication for disaster recovery

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-efs/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
