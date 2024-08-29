# Terraform AWS ARC Transit Gateway Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform module for managing and automating AWS Transit Gateway with integrated configurations.

### Module Overview

The [terraform-aws-arc-transit-gateway](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway) Terraform module provides a robust solution for managing complex network architectures within AWS. This module simplifies the creation, configuration, and management of AWS Transit Gateway, VPC attachments, and routing between VPCs. It ensures efficient network integration and connectivity across multiple AWS accounts by leveraging AWS best practices and conditional resource creation, making it ideal for scalable and flexible network solutions.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- Creating Roles in Target Accounts.
- Knowledge of AWS Transit Gateway.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
provider "aws" {
  region = var.region
}


provider "aws" {
  alias  = "target"
  region = var.region
  assume_role {
    role_arn = "arn:aws:iam::123456789000:role/arc-destination-role"
  }
}

module "transit_gateway" {
  source = "../."

  create_transit_gateway                             = true
  create_transit_gateway_attacment_in_source_account = true
  transit_gateway_name                               = "${var.project_name}-Transit-GW"

  target_account_id      = ["123456789000"]
  source_vpc_id          = "vpc-0828676a85368a010"
  source_subnet_ids      = ["subnet-0bd3777718064b8c1", "subnet-0ceedb9d964271d63"]
  source_route_table_ids = ["rtb-0f47f5b2f4294ed68", "rtb-0f91ca3850d4802eb"]
  providers = {
    aws        = aws
    aws.target = aws.target
  }

  target_vpc_id          = "vpc-021a5ebd8765454be"
  target_subnet_ids      = ["subnet-0967757bbf9e8b397", "subnet-0ba1d81aa9a056822"]
  target_route_table_ids = ["rtb-03694d12130a3ee16", "rtb-0a95cb0a679c62206"]

}

provider "aws" {
  alias  = "target2"
  region = var.region
  assume_role {
    role_arn = "arn:aws:iam::098765432100:role/arc-destination-role-2"
  }
}

module "transit_gateway_target2" {
  source = "../."

  # Set below to 'false' as the Transit Gateway is created in the previous module.
  create_transit_gateway                             = false
  # Set below to 'false' as the Transit Gateway attachment source is created in the previous module.
  create_transit_gateway_attacment_in_source_account = false
  existing_transit_gateway_id                        = module.transit_gateway.transit_gateway_id

  source_route_table_ids = ["rtb-0f47f5b2f4294ed68", "rtb-0f91ca3850d4802eb"]

  target_account_id = ["098765432100"]

  providers = {
    aws        = aws
    aws.target = aws.target2
  }

  target_vpc_id          = "vpc-0d56ce6a38df0434e"
  target_subnet_ids      = ["subnet-033eebbeceed00181", "subnet-034a98a9e9d325bd6"]
  target_route_table_ids = ["rtb-0ca108fb6702dbb22", "rtb-0d50d045823996e9e"]

  depends_on = [module.transit_gateway]
}

```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in terraform/ named transit-gateway.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/tree/main/example) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and manage transit gateway

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway#outputs) section.

## Module Usage

### Basic Usage

For usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/tree/main/example) folder.

This example will create:
Transit Gateway resources across multiple accounts.
The first module creates a Transit Gateway in a source account, shares it with target accounts via AWS Resource Access Manager (RAM), and establishes TGW attachments and routing in both the source and target accounts.
The second module uses the existing Transit Gateway, creates additional TGW attachments in another target account, and configures route tables to manage traffic between the source and destination CIDR blocks.

### Tips and Recommendations

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/issues).

## Security Considerations

### Best Practices for AWS Transit Gateway

Follow best practices to ensure secure and efficient configurations for Transit Gateway.
[Transit Gateway Best Practices](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-best-design-practices.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/blob/main/CONTRIBUTING.md) file.

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-transit-gateway/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
