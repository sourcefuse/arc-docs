# Terraform AWS ARC EC2 Autoscale Group Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC EC2 Autoscale Group module for setting up and running a production ready EC2 Autoscale group.

### Module Overview

The Terraform AWS ARC EC2 Autoscale Group module provides a secure and modular foundation for deploying EC2 Autoscale Group on AWS.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC,EC2,Autoscale Group, and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "asg" {
  source                           = "sourcefuse/arc-ec2-autoscale-group/aws"
  version = "0.0.1"
  launch_template                  = local.launch_template
  asg                              = local.asg_config
  security_group_data              = local.security_group_data
  security_group_name              = local.security_group_name
  vpc_id                           = data.aws_vpc.default.id
  autoscaling_notification_enabled = local.autoscaling_notification_enabled
  autoscaling_notification_types   = local.autoscaling_notification_types
  autoscaling_sns_topic_arn        = local.autoscaling_sns_topic_arn
  schedules                        = local.schedules
  autoscaling_policy               = local.autoscaling_policy
  predictive_scaling_configuration = local.predictive_scaling_configuration
  create_autoscaling_attachment    = local.create_autoscaling_attachment
  autoscaling_attachments          = local.autoscaling_attachments
  instance_profile_name            = local.instance_profile_name
  tags                             = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-ec2-autoscale-group/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named asg.
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

- EC2
- Autoscale Group
- Application load balancer
- Cloudwatch Log groups
- IAM roles and policies

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs]() section.

### Output Values

For a list of outputs, see the README [Outputs]() section.

## Module Usage

### Basic Usage

For basic usage, see the [example]() folder.

This example will create:

- launch template
- EC2 Auto Scaling Group

### Tips and Recommendations

- This module provisions EC2 Auto Scaling Groups with robust support for custom launch templates, instance profiles, scaling policies, and health checks. Built using a convention-based approach, it integrates seamlessly with other ARC infrastructure components such as ALBs, VPCs, and security groups. The module also offers optional configurations for CloudWatch metrics, enabling visibility into instance health and scaling activity. Users can fine-tune instance types, desired capacity, and scaling strategies to match workload requirements and cost considerations. Additionally, it supports tagging and lifecycle hooks to facilitate autoscaling-aware applications and ensure smooth instance termination during scale-in events.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to EC2 Autoscale Group on AWS when using this module.

### Best Practices for AWS EC2 Autoscale Group
Follow best practices to ensure secure EC2 Autoscale Group configurations:

- [AWS EC2 Auto Scaling Security Best Practices](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
