# Terraform AWS ARC Network Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC Network module for managing VPC and other network resources on AWS.

### Module Overview

The [Terraform AWS ARC Network](https://github.com/sourcefuse/terraform-aws-arc-network) module provides a secure and modular foundation for building robust and secure VPC and network resources on AWS.

![arc_network_hla](../../static/arc_network_hla.png)

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, Networking and Terraform concepts.

## Getting Started

### Module Source

To incorporate the module into your main Terraform configuration file (e.g., main.tf), declare the module and define its source along with the desired version. For instance, you can specify the module source and version as follows:

```hcl
module "network" {
  source  = "sourcefuse/arc-network/aws"
  version = "2.6.10"
  # insert the required variables here
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-network/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `network`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-network/tree/main/examples/simple) to base off of.
  ```plaintext
  network/
  |-- main.tf
  |-- variables.tf
  |-- outputs.tf
  ```
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend
4. Execute Terraform Commands
  - After defining your main configuration, navigate to the directory containing your Terraform files and run the following commands:

  ```bash
  terraform init
  terraform apply
  ```
5. Review and Confirm
  - Terraform will display a plan showing the changes it intends to make. Review the plan and confirm by typing 'yes' when prompted.

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and modify VPC and network resources (like site to site vpn, client vpn, vpc endpoints etc. as per your need) for the account.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-network?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-network?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-network/tree/main/examples/simple) folder.

This example will create:

- A VPC with CIDR block `10.9.0.0/16`
- Two subnets in availability zones : `"us-east-1a"`, `"us-east-1b"`
- Route tables, internet gateway, NAT Gateways
- vpc endpoints for the services: s3, kms, cloudwatch, elb, dynamodb, ec2, sns, sqs, ecs, rds

### Tips and Recommendations

- If you want to create custom subnet ranges, check [example](https://github.com/sourcefuse/terraform-aws-arc-network/tree/main/examples/custom-subnets)
- If you want to create your own nat gateway(s) check [example](https://github.com/sourcefuse/terraform-aws-arc-network/tree/main/examples/custom-nat-gateways)
- If you have disabled the default nat gateways for your custom subnets
  then you need to pass a nat gateway id for each private subnet that
  you are creating. If custom_az_ngw_ids is left empty in this case
  then no default route is created by the module.
- Creating nat gateway as demonstrated in this example is a 3 step process:
  - STEP 1 : Apply the configuration without any nat gateway and eip resources and without custom_az_ngw_ids value
  - STEP 2 : Add nat gateway and eip resources and run apply
  - STEP 3 : finally add custom_az_ngw_ids input map and run apply
  This does introduce a cyclical dependency between the network module and the nat and eip resources, but it is expected
  since its a deviation from the [recommended aws nat gateway configuration](https://aws.amazon.com/blogs/networking-and-content-delivery/using-nat-gateways-with-multiple-amazon-vpcs-at-scale/).

  <details><summary>tldr</summary>

  NAT Gateways within an AZ are automatically implemented with redundancy. However, while Amazon VPCs can span multiple AZs, each NAT Gateway operates within a single AZ. If the NAT Gateway fails, then connections with resources using that NAT Gateway also fail. Therefore, we recommend deploying one NAT Gateway in each AZ and routing traffic locally within the same AZ.</details>

  Handling multiple scenarios for nat gateway routes in the module does not seems feasible. Hence the mapping of nat gateways to availability zones is off-loaded to the end user of the module.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-network/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Network Security on AWS when using this module.

### Best Practices for AWS Network

Follow best practices to ensure secure Network configurations:

- [Network security on AWS](https://aws.amazon.com/solutions/guidance/network-security-on-aws/)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-network/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-network/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-network/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
