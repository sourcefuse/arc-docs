# Terraform AWS ARC Broker MQ Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform module for supporting AWS Broker MQ

### Module Overview

The [terraform-aws-arc-mq-broker](https://github.com/sourcefuse/terraform-aws-arc-mq-broker) to implement Terraform module for setting up an AWS Broker MQ

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, Borker MQ, and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-mq-broker" {
  source              = "sourcefuse/arc-mq-broker/aws"
  version             = "0.0.1"
  name                = var.name
  broker_type         = var.broker_type
  engine_version      = var.engine_version
  host_instance_type  = var.host_instance_type
  vpc_id              = data.aws_vpc.default.id
  subnet_ids          = data.aws_subnets.private.ids
  publicly_accessible = var.publicly_accessible
  deployment_mode     = var.deployment_mode
  users               = var.users
  enable_logging      = var.enable_logging
  security_group_data = local.security_group_data
  tags                = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-mq-broker/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named brokermq.
- Create the required files, see the [example](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/tree/main/example) to base off of.
- Configure with your backend:
   - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create an AWS Broker MQ.


## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-mq-broker#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-mq-broker?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/tree/main/example) folder.

This example will create:

- A RabbitMQ broker named example-broker in Active-Standby Multi-AZ deployment mode.
- A security group with ingress and egress rules to allow communication within the VPC and outbound traffic.
- Subnets for deploying the broker for high availability.
- A CloudWatch log group for broker logs.
- User credentials for managing broker access.

### Tips and Recommendations

- The Terraform module for Amazon MQ Broker offers a straightforward and efficient way to deploy and manage Amazon MQ brokers. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Broker MQ on AWS when using this module.

### Best Practices for AWS Borker MQ

Follow best practices to ensure secure Security configurations:

- [AWS Broker MQ Security Best Practices]()

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-mq-broker/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
