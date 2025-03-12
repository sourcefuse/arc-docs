# Terraform AWS ARC ECS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC ECS module for setting up and running a production ready ECS cluster.

### Module Overview

The [Terraform AWS ARC ECS](https://github.com/sourcefuse/terraform-aws-arc-ecs) module provides a secure and modular foundation for deploying ECS clusters on AWS.

The Module assumes there is a docker image present on ECR which will serve as ECS service if the optional ECS module is called.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, ECS and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl

##########################################
## ecs cluster with ec2
##########################################
module "arc-ecs" {
  source  = "sourcefuse/arc-ecs/aws"
  version = "1.5.0"
  ecs_cluster       = local.ecs_cluster
  capacity_provider = local.capacity_provider
  ecs_service       = local.ecs_service
  launch_template   = local.launch_template
  asg               = local.asg
  tags              = module.tags.tags
}

##########################################
## ecs cluster with fargate
##########################################
module "ecs_cluster" {
  source  = "sourcefuse/arc-ecs/aws"
  version = "1.5.0"
  ecs_cluster       = local.ecs_cluster
  capacity_provider = local.capacity_provider
  ecs_service       = local.ecs_service
  tags              = module.tags.tags
}

```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-ecs/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `ecs`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-ecs/tree/main/examples) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- ECS cluster
- Application load balancer
- SSM Parameters
- Cloudwatch Log groups
- IAM roles and policies

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-ecs?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-ecs?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-ecs/tree/main/examples) folder.

This example will create:

- An ECS Cluster with Fargate launch type.
- Application Load Balancer with default port 80.
- Health Check Service: A vanilla docker healthcheck service serving as the default target group for the load balancer to      ensure core infrastructure, networking, security groups, etc. are configured correctly.
- Task Execution IAM Role: Used by downstream services for task execution.
- Tags: The module tags resources for easy reference in the AWS console.

### Tips and Recommendations

- The module focuses on provisioning an ECS Cluster using Fargate launch type, an ALB with a default port redirect, a health check service, a task execution IAM role, and an ACM certificate for secure communication. The convention-based approach enables downstream services to easily attach to the ECS Fargate cluster. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-ecs/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to ECS clusters on AWS when using this module.

### Best Practices for AWS ECS

Follow best practices to ensure secure ECS configurations:

- [ECS security on AWS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-ecs/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-ecs/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-ecs/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
