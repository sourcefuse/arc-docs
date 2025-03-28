# Terraform AWS ARC Opensearch Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for supporting AWS OpenSearch.

### Module Overview

The [terraform-aws-arc-opensearch](https://github.com/sourcefuse/terraform-aws-arc-opensearch) to implement Terraform module for setting up an OpenSearch cluster

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS opensearch

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "opensearch" {
  source                         = "sourcefuse/arc-opensearch/aws"
  version                        = "0.1.7"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `opensearch`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-opensearch/tree/main/examples/vpc) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create an AWS OpenSearch service.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-opensearch?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-opensearch?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-opensearch/tree/main/examples) folder.

This example will create:

An OpenSearch cluster with the specified parameters. The cluster is named according to the environment and namespace, placed within the default VPC, and distributed across the specified availability zones.

The module also specifies the instance type, instance count, and EBS volume size for the OpenSearch nodes. The created resources are tagged using the tags generated by the tags module..

### Tips and Recommendations

The module focuses on setting up setting up OpenSearch cluster on AWS. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-opensearch/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to opensearch when using this module.

### Best Practices for AWS Opensearch Security

Follow best practices to ensure best Security configurations.
[Opensearch Security on AWS](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/bp.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-opensearch/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-opensearch/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-opensearch/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
