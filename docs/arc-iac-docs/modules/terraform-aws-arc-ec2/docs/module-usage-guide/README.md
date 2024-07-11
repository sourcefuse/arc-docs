# Terraform AWS ARC ec2 Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to create EC2 instance and Loadbalancer using ARC EC2 module.

### Module Overview

The [terraform-aws-arc-ec2](https://github.com/sourcefuse/terraform-aws-arc-ec2) module can be used to create CICI pipelines using Codepipeline.
### Prerequisites

Before using this module, ensure you have the following:
- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS EC2 , Certificates and Load Balancer

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "ec2" {
  source  = "sourcefuse/arc-ec2/aws"
  version = "0.0.1"
  # insert the required variables here
}
```
Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-ec2/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `ec2`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-ec2/tree/main/examples/terraform) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend


### Required AWS Permissions

- Ensure that the AWS credentials used to execute Terraform have the necessary permissions to set up a cloud EC2 instance on AWS.
- ACM certificate incase https has to be enabled for Loadbalancer


## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-ec2?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-ec2?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-ec2/tree/main/examples/terraform) folder.

This example will create:

IAM Role : IAM role for Codebuild project and Codepipelines

Codebuild project : Reusable codebuild project

Codepipeline : Codepipelines using codebuild projects


## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-ec2/issues).

## ec2 Considerations

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-ec2/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-ec2/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-ec2/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
