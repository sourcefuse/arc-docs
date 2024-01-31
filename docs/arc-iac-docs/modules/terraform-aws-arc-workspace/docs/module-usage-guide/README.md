# Terraform AWS ARC WORKSPACE Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC WORKSPACE module for setting up and running a production ready Azure Directory and AD Connector.

### Module Overview

The [Terraform AWS ARC WORKSPACE](https://github.com/sourcefuse/terraform-aws-arc-workspace) module provides a secure and modular foundation for deploying Azure Directory and AD Connector with workspaces on AWS.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Amazon workspaces , Azure directory and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-workspace" {
  source  = "sourcefuse/arc-workspace/aws"
  version = "1.1.1"
  # insert the 5 required variables here
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-workspace/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `workspace`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-workspace/tree/main/examples) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- Directory Service
- Amazon Workspace
- SSM Parameters
- Cloudwatch Log groups
- IAM roles and policies

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-workspace?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-workspace?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-workspace/tree/main/examples) folder.

This example facilitates the creation of:

- An AWS Workspaces Module supporting both Microsoft AD and AD Connector scenarios.
- AWS Directory Service creation based on the specified condition, determining whether it will be AD Connector or Microsoft AD.
- Automatic generation and storage of random passwords using AWS SSM.
- IAM role creation for use during the creation of workspaces.
- Default Security Group provisioning for workspaces.
- Configuration of IP groups/rules according to the provided settings.

### Best Practices for AWS Workspaces Module

This module facilitates the provisioning of AWS Workspaces, offering support for both Microsoft AD and AD Connector scenarios. Key features include:

1. AWS Directory Service Creation: The module intelligently creates an AWS Directory Service based on the specified condition, allowing flexibility between AD Connector and Microsoft AD setups.

2. Secure Password Management: Random passwords for workspaces are automatically generated and securely stored using AWS Systems Manager (SSM), ensuring robust security practices.

3. IAM Role Configuration: IAM roles are systematically created to be utilized during the workspace creation process, enhancing the security posture of your AWS Workspaces.

4. Default Security Group: A default Security Group is provisioned for workspaces, providing a foundational layer of network security. Further customization can be applied to align with specific requirements.

5. IP Group/Rule Configuration: IP groups and rules are configured as per the provided settings, allowing you to define specific network access controls for your workspaces.

### Tips for Module Usage

1. Conditional Directory Service Configuration: Leverage the flexibility of the module to conditionally set up AWS Directory Service based on your requirements, choosing between AD Connector and Microsoft AD.

2. SSM for Secure Password Management: Take advantage of AWS Systems Manager for secure password storage. Utilize randomly generated passwords to enhance the overall security of your AWS Workspaces.

3. IAM Role Best Practices: Ensure that IAM roles adhere to best practices, limiting permissions to the minimum necessary for workspace creation and operations. Regularly review and update IAM policies as needed.

4. Security Group Customization: Customize the default Security Group provisioned by the module to align with your organization's security policies. Consider additional rules or restrictions as required.

5. IP Group/Rules Definition: Clearly define IP groups and rules according to your organization's network access policies. Regularly review and update these configurations to adapt to evolving security requirements.

6. Regular Module Updates: Stay informed about updates to the AWS Workspaces module to benefit from new features, enhancements, and security improvements. Regularly review and update the module configuration as needed for your use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-workspace/issues).

## Security Considerations

Understand the security considerations related to Amazon Workspaces on AWS when using this module.

- [Workspace security on AWS](https://docs.aws.amazon.com/workspaces/latest/adminguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-workspace/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-workspace/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-workspace/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
