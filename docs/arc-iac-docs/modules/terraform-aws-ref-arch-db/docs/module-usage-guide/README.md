# Terraform AWS ARC DB Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for managing Aurora cluster and SQL Server RDS instance.

### Module Overview

The [terraform-aws-arc-db](https://github.com/sourcefuse/terraform-aws-arc-db) module provides a secure and modular foundation for managing Aurora cluster and SQL Server RDS instances.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS Aurora cluster and SQL Server RDS instance.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "aurora" {
  source = "sourcefuse/arc-db/aws"
  version = "2.0.6"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `db`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-db/tree/main/examples/simple) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create Aurora cluster and SQL Server RDS instance.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-db?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-db?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-db/tree/main/example) folder.

This example will create:

module "aurora": This module is creating an Aurora database cluster.The module is configuring the Aurora cluster with various settings, such as the instance type, the number of instances in the cluster, the subnets and security groups it's associated with, and more.

module "rds_sql_server": This module is creating an Amazon RDS instance for SQL Server.This module is configuring the RDS instance with various settings, such as the database engine and version, the instance class, the allocated storage, the security groups it's associated with, and more.

Both of these modules are using data sources (data.aws_vpc.vpc, data.aws_subnets.private, data.aws_security_groups.db_sg, etc.) to fetch information about the existing AWS infrastructure, such as the VPC, subnets, and security groups, and use that information to configure the databases.

### Tips and Recommendations

The module focuses on provisioning Aurora database cluster and Amazon RDS instance for SQL Server. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-db/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Aurora database cluster and Amazon RDS instance for SQL Server on AWS when using this module.

### Best Practices for Aurora database cluster

Follow best practices to ensure secure DB configurations:

[Aurora security on AWS](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_BestPractices.Security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-db/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-db/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-db/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
