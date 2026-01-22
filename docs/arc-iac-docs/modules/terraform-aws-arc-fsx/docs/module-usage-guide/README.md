# Terraform AWS ARC FSx Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS FSx module for deploying AWS FSx file systems.

### Module Overview

The Terraform AWS ARC FSx module provides a secure and modular foundation for deploying AWS FSx file systems on AWS. It supports all four FSx variants: Windows File Server, Lustre, NetApp ONTAP, and OpenZFS with comprehensive configuration options.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed (>= 1.3).
- A working knowledge of AWS VPC, FSx, and Terraform concepts.
- Understanding of your specific FSx requirements (Windows AD, S3 integration, etc.).

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-fsx" {
  source   = "sourcefuse/arc-fsx/aws"
  version  = "0.0.1"
  
  # Required variables
  name             = "my-fsx"
  environment      = "prod"
  fsx_type         = "windows"  # windows, lustre, ontap, openzfs
  storage_capacity = 32
  subnet_ids       = ["subnet-12345678"]
  vpc_id           = "vpc-12345678"
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named fsx.
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

- FSx file systems (all types: Windows, Lustre, ONTAP, OpenZFS)
- FSx backups and snapshots
- FSx volumes and storage virtual machines
- FSx data repository associations
- EC2 security groups and network interfaces
- IAM roles and policies (if using IAM integration)
- KMS keys (if using encryption)
- VPC subnets and network resources

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](../../README.md#inputs) section.

Key configuration objects:
- `backup_configuration` - Backup settings and retention policies
- `windows_configuration` - Active Directory and audit log settings
- `lustre_configuration` - S3 integration and performance settings
- `ontap_configuration` - Storage virtual machines and volume settings
- `openzfs_configuration` - Snapshot and compression settings

### Output Values

For a list of outputs, see the README [Outputs](../../README.md#outputs) section.

Key outputs include:
- `fsx_id` - FSx file system ID
- `fsx_arn` - FSx file system ARN
- `fsx_dns_name` - DNS name for mounting
- `fsx_network_interface_ids` - Network interface IDs

## Module Usage

### Basic Usage

For basic usage, see the [examples](../../examples/) folder.

Available examples:
- [Basic Windows](../../examples/basic-windows/) - Single-AZ Windows file server
- [Windows Self-Managed AD](../../examples/windows-self-managed-ad/) - Windows with custom AD
- [Lustre](../../examples/lustre/) - High-performance Lustre file system
- [ONTAP Complete](../../examples/ontap-complete/) - NetApp ONTAP with full features
- [ONTAP Multi-Protocol](../../examples/ontap-multi-protocol/) - ONTAP with NFS/SMB/iSCSI
- [OpenZFS Complete](../../examples/openzfs-complete/) - OpenZFS with snapshots

This example will create:

- FSx file system of the specified type
- Security group with protocol-specific rules
- Optional backup configuration
- Optional IAM roles and policies
- Network interfaces in specified subnets

### Tips and Recommendations

- The module focuses on provisioning FSx file systems with security best practices. The convention-based approach enables downstream services to easily attach to the file systems.
- Use `skip_final_backup = true` in `backup_configuration` to prevent backup creation during destruction
- Configure security groups appropriately for your FSx type (SMB/445 for Windows, NFS/2049 for ONTAP/OpenZFS)
- For Lustre with S3, ensure proper IAM permissions for data repository access
- Consider Multi-AZ deployment for production Windows and ONTAP file systems

## Troubleshooting

### Common Issues

**Backup Creation During Destroy**: By default, FSx creates final backups when destroyed. To skip:
```hcl
backup_configuration = {
  skip_final_backup = true
}
```

**Security Group Access**: Ensure security groups allow the correct ports:
- Windows: 445 (SMB), 135 (RPC), 137-139 (NetBIOS)
- Lustre: 988, 1021-1023
- ONTAP: 111, 635, 2049 (NFS), 445 (SMB)
- OpenZFS: 111, 2049 (NFS)

**Active Directory Issues**: For Windows FSx, ensure:
- AD is in the same VPC or connected via VPC peering/transit gateway
- DNS resolution is working between FSx subnets and AD

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-fsx).

## Security Considerations

### AWS VPC

Understand the security considerations related to FSx file systems on AWS when using this module:

- FSx file systems are deployed within your VPC for network isolation
- Security groups control access to FSx endpoints
- Network ACLs provide additional subnet-level security
- Consider using VPC endpoints for S3 access with Lustre

### Best Practices for AWS FSx

Follow best practices to ensure secure FSx configurations:

- [AWS FSx Security Best Practices](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/security.html)
- Enable encryption at rest using KMS keys
- Use least-privilege IAM policies
- Implement proper backup and retention policies
- Monitor access using CloudTrail and VPC Flow Logs
- Use Multi-AZ deployments for high availability

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-fsx).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!

