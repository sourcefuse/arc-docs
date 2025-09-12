# Terraform AWS ARC (Cognito User Pool) Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC Cognito User Pool module.
The module simplifies and standardizes the provisioning of Amazon Cognito User Pools, App Clients, Identity Providers, Lambda triggers, and advanced security.

### Module Overview

The Terraform AWS ARC Cognito User Pool module provides a secure, opinionated, and modular foundation for deploying Cognito-based authentication and authorization in AWS.

It supports:

- Cognito User Pools with configurable attributes and policies.

- App Clients with OAuth2 and Hosted UI options.

- Federated Identity Providers (SAML, OIDC, or social).

- Lambda triggers for pre-sign-up, post-confirmation, pre-authentication, etc.

- Advanced security which includes MFA, Threat detection, Account takeover risk & logging to CloudWatch Logs, Amazon S3, or Kinesis Firehose.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of:
  - AWS IAM & Cognito basics
  - Terraform HCL
  - Optional: VPC networking if using Lambda triggers with VPC integration.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-cognito-userpool" {
  source  = "sourcefuse/arc-cognito-userpool/aws"
  version = "1.0.0"

  environment      = "dev"
  project          = "arc"
  name             = "auth"
  region           = "us-east-1"

  # Example basic config
  cognito_user_pool_name = "arc-demo-user-pool"
  # Add further required variables
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-cognito-userpool/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named cognito-userpool
- Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool/examples) to base off of.
- Configure with your backend:
   - Create the environment backend configuration file: config.<environment>.hcl
   - region: Where the backend resides
   - key: <working_directory>/terraform.tfstate
   - bucket: Bucket name where the terraform state will reside
   - dynamodb_table: Lock table so there are not duplicate tfplans in the mix
   - encrypt: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- cognito-idp:* (User Pools, App Clients, Identity Providers, Log Delivery Configurations)
- iam:PassRole (for Lambda triggers)
- lambda:* (if using triggers)
- s3:* (if using S3 as a logging destination)
- logs:* (if using CloudWatch Logs as a logging destination)
- firehose:* (if using Firehose as a logging destination)

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples/basic-user-pool](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool/examples/basic-user-pool) folder.

This example will create:

- A basic AWS Cognito User Pool
- Two app clients
- Create Users & Groups and further associate users to specified groups

### Tips and Recommendations

- The module focuses on provisioning AWS Cognito User Pool.
- Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool).

## Security Considerations

### Best Practices for AWS ___

Follow best practices to ensure secure AWS Cognito User Pool configurations:

- [AWS Cognito User Pool Security Best Practices](https://docs.aws.amazon.com/cognito/latest/developerguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
