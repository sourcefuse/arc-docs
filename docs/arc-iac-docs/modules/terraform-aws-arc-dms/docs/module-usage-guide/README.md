# Terraform AWS ARC DMS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform ARC module for using AWS Database Migration Service.

#### What is AWS DMS ?
AWS Database Migration Service (AWS DMS) is a cloud service that makes it possible to migrate relational databases, data warehouses, NoSQL databases, and other types of data stores.

### Module Overview

The [terraform-aws-arc-dms](https://github.com/sourcefuse/terraform-aws-arc-dms) The DMS setup allows users to migrate your data into the AWS Cloud or between combinations of cloud and on-premises setups.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- Working knowledge of AWS DMS

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```tcl
module "aws_dms" {
  source = "../modules/dms"
  version = "0.0.1"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `aws_dms`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-dms/tree/main/examples) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create
 - DMS Resources
 - IAM Role for Secrets Manager

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-dms?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-dms?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

#### DMS
For basic DMS usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-dms/tree/main/examples) folder.

This example will create:

- IAM Role for DMS secrets stored in AWS Secrets Manager.

- DMS Setup: It uses the sourcefuse/arc-dms/ aws module to create DMS setup which includes:

  - DMS Subnet Group
  - DMS replication instance
  - DMS Certificates
  - DMS Endpoints
  - DMS Replication task
  - DMS Event Subscription  

The DMS setup allows users to securely migrate data from source endpoint to target.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-dms/issues).

### Best Practices for AWS DMS

Follow best practices to ensure secure AWS DMS.
[AWS DMS Best Practices](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_BestPractices.html)

[AWS DMS Security] (https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-dms/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-dms/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-dms/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
