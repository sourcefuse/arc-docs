# Terraform AWS ARC Redshift Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to create Redshift cluster using the module.

### Module Overview

 Terraform module for provisioning and managing Amazon Redshift — supporting both Redshift Serverless and provisioned clusters. This module follows AWS and Terraform best practices, with built-in support for secure password management, VPC integration, IAM roles, and custom configuration parameters. Designed for scalability, security, and automation across development, staging, and production environments

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, All Redshift services and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-redshift" {
  source                 = "sourcefuse/arc-redshift/aws"
  version                = "0.0.1"
  namespace   = var.namespace
  environment = var.environment
  name        = var.name

  # Network configuration - using the subnets we created
  vpc_id     = data.aws_vpc.vpc.id
  subnet_ids = data.aws_subnets.private.ids

  # Cluster configuration
  database_name        = var.database_name
  master_username      = var.master_username
  manage_user_password = var.manage_user_password
  security_group_data    = var.security_group_data
  security_group_name           = var.security_group_name
  node_type            = var.node_type
  number_of_nodes      = var.node_count
  cluster_type         = var.node_count > 1 ? "multi-node" : "single-node"

  # Other configuration
  skip_final_snapshot = true
  publicly_accessible = false
  encrypted           = true

  tags = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-redshift/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/redshift named .
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

- All redshift services 
- VPC and networking configuration

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-redshift#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-redshift?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-redshift/tree/main/examples) folder.

This example will create:

- **Redshift Studio Domain**: Complete 

### Tips and Recommendations

- The module focuses on provisioning redshift. The convention-based approach enables downstream services to easily attach to the redshift. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-redshift/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Redshift on AWS when using this module.

### Best Practices for AWS Redshift

Follow best practices to ensure secure Redshift configurations:

- [AWS Redshift Security Best Practices](https://docs.aws.amazon.com/redshift/latest/dg/best-practices.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-redshift/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-redshift/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-redshift/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
