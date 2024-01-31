# Terraform AWS ARC EKS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC EKS module for setting up and running a production ready EKS cluster.

### Module Overview

The [Terraform AWS ARC EKS](https://github.com/sourcefuse/terraform-aws-arc-eks) module provides a secure and modular foundation for deploying EKS clusters on AWS.

![arc_eks_hla](./static/arc_eks_hla.png)

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, EKS, Kubernetes, Helm and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-eks" {
  source  = "sourcefuse/arc-eks/aws"
  version = "5.0.0"
  # insert the 8 required variables here
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-eks/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `eks`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/example) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- EKS cluster
- EKS node groups, EC2 AMIs, Launch templates
- EKS Fargate profile
- Security Groups and Security Group rules
- Cloudwatch Log groups
- IAM roles and policies
- AWS OIDC providers for the account.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-eks?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-eks?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/example) folder.

This example will create:

- An EKS cluster with a single EC2 node group.

### Tips and Recommendations

- This module only creates a single node group with up to 20 distinct instance types. If additional node groups groups are needed, the same may be provisioned downstream.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-eks/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to EKS and Kubernetes clusters on AWS when using this module.

### Best Practices for AWS EKS

Follow best practices to ensure secure EKS configurations:

- [EKS security on AWS](https://docs.aws.amazon.com/eks/latest/userguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-eks/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-eks/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-eks/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
