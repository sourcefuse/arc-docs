# Terraform AWS ARC (Load Balancer) Module Usage Guide

## Introduction

### Purpose of the Document

This document outlines guidelines and instructions for users implementing the Terraform module for AWS Load Balance

### Module Overview

The [terraform-aws-arc-load-balancer](https://github.com/sourcefuse/terraform-aws-arc-load-balancer) to implement Terraform module for setting up an AWS Load Balancer

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, S3, Load balancer and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "alb" {
  source                         = "sourcefuse/arc-load-balancer/aws"
  version                        = "0.0.1"
  load_balancer_config           = local.load_balancer_config
  target_group_config            = local.target_group_config
  target_group_attachment_config = local.target_group_attachment_config
  alb_listener                   = local.alb_listener
  default_action                 = local.default_action
  listener_rules                 = local.listener_rules
  security_group_data            = local.security_group_data
  security_group_name            = local.security_group_name
  vpc_id                         = data.aws_vpc.default.id
  tags                           = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-load-balancer/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named load-balancer.
- Create the required files, see the [example](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/tree/main/example)
to base off of.
- Configure with your backend:
   - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- Load balancer
- s3


## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-load-balancer#inputs)  section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-load-balancer?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/tree/main/example) folder.

This example will create:

- ALB: An Application Load Balancer for handling HTTP/HTTPS traffic at Layer 7 (Application).
- Security Group: To control access to the ALB and associated backend services.
- Subnets: To ensure high availability across multiple Availability Zones.
- CloudWatch Logs: For logging requests and responses passing through the ALB.
- A Network Load Balancer for handling TCP traffic at Layer 4 (Transport)

### Tips and Recommendations

- The module focuses on provisioning Load Balancer. The convention-based approach enables downstream services to easily attach to the Load Balancer. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Load Balancer on AWS when using this module.

### Best Practices for AWS Load Balancer

Follow best practices to ensure secure Security configurations:

- [AWS Load Balancer Security Best Practices]()

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
