# Terraform AWS ARC WAF Module Usage Guide

## Introduction

### Purpose of the Document

This document provides a Terraform module for AWS WAF, streamlining the configuration and deployment of WAF policies on AWS.
### Module Overview

The [terraform-aws-arc-waf](https://github.com/sourcefuse/terraform-aws-arc-waf) AWS WAF Terraform module facilitates the creation and management of web ACLs, IP sets, and associations, empowering users to enforce tailored security controls for their web applications with ease.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS WAF

## Getting Started

**Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "waf" {
  source  = "sourcefuse/arc-waf/aws"
  version = "1.0.2"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `waf`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-waf/tree/main/examples/simple) to base off of.

```plaintext
waf/
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

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to set up AWS WAF

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-waf?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-waf?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-waf/tree/main/example) folder.

This example will create:

A Web ACL which acts as a firewall to control traffic to or from a service.

The Web ACL is configured with a default action of block, meaning it will block requests that match any of the conditions in the web_acl_rules variable.

It also creates an IP set, which is a list of IP addresses from which AWS WAF should allow or block requests.

### Tips and Recommendations

The module focuses on setting up setting up an AWS WAF. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-waf/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to AWS WAF when using this module.

### Best Practices for AWS WAF

Follow best practices to ensure best Security configurations.
[AWS WAF security on AWS](https://docs.aws.amazon.com/config/latest/developerguide/security-best-practices-for-aws-waf.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-waf/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-waf/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-waf/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
