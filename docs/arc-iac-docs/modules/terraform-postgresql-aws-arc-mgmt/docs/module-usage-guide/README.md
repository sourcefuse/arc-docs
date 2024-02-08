# Terraform AWS ARC POSTGRESQL Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines for the Terraform PostgreSQL provider which is used to manage resources in a PostgreSQL database.

### Module Overview

The [terraform-aws-arc-postgresql-mgmt](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt) module provides a secure and modular foundation on how to create and manage a PostgreSQL database, roles, schemas, and associated resources on AWS.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS POSTGRESQL provider.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "postgresql" {
  source                        = "sourcefuse/arc-postgresql-mgmt/aws"
  version                       = "0.0.6"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `postgresql`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt/tree/main/examples/simple) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create PostgreSQL database.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt/tree/main/example) folder.

This example will create:

It configures the PostgreSQL provider with parameters such as host, port, database name, superuser status, username, password, SSL mode, and connection timeout. Most of these values are fetched from AWS SSM parameters.

It generates random passwords for a set of PostgreSQL users using the random_password resource.

It uses the sourcefuse/arc-postgresql-mgmt/aws module to manage PostgreSQL resources. This includes creating roles, setting default privileges, creating a schema, and managing AWS SSM parameters for PostgreSQL. The specific roles, database, privileges, schema, and SSM parameters are all specified by variables.

### Tips and Recommendations

The module focuses on provisioning an POSTGRESQL database. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to POSTGRESQL database on AWS when using this module.

### Best Practices for AWS POSTGRESQL

Follow best practices to ensure secure POSTGRESQL database configurations:

[POSTGRESQL best practices] (https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-postgresql-mgmt/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
