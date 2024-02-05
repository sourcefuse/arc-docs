# Terraform AWS ARC-GITHUB-RUNNER Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for managing the self hosted GitHub Actions Runner.

### Module Overview

The [terraform-aws-arc-github-runner](https://github.com/sourcefuse/terraform-aws-arc-github-runner) module facilitates the deployment of a self-hosted GitHub Runner in AWS. This module streamlines the creation of necessary resources, such as an EC2 instance, S3 bucket, IAM policies, SSH key pair, and SSM parameters, enabling seamless integration of a self-hosted GitHub Runner into your AWS environment.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- You will need to have a GitHub Personal Access Token (PAT) with `admin:org` permissions in order to manage GitHub runners for the Organization.
If you do not have sufficient permissions to GitHub, the runner will not register.

Once you've obtained a PAT, you will need to set it so Terraform can access it.
The recommended approach to this is to save it in _Systems Manager Parameter Store_ with the Parameter name of: `/<namespace>/<environment>/github/token`
You can reference this parameter via a data lookup:
```hcl
data "aws_ssm_parameter" "github_token" {
  name = "/${var.namespace}/${var.environment}/github/token"
}
```

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-github-runner" {
  source  = "sourcefuse/arc-github-runner/aws"
  version = "0.2.6"
  # insert the 6 required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `github-runner`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-github-runner/tree/main/example/) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create Ec2, ssm , iam policies , s3 bucket.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-github-runner?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-github-runner?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-github-runner/tree/main/example) folder.

This example will create:

This module will create the following resources in a specified AWS Account:
* S3 bucket: used for storing the generated `docker-compose.yml`
* EC2 instance: Used for running the runner container on
* SSH Key Pair: Used for decrypting EC2 password
* SSM Documents: Used for installing dependencies and updating the SSM Agent
* IAM Policies: For accessing created resources
* SSM Parameter: For storing the runner token

This module utilizes different `local-exec` provisioners to execute scripts for obtaining the needed GitHub Runner token
and remove the runner from the organization when the resources are destroyed.
See [Pre-Requisites](#pre-requisites) for information on the needed permissions these scripts will require.

### Tips and Recommendations

The module focuses on provisioning self hosted github-runner. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-github-runer/issues).

## Security Considerations

Follow best practices to ensure secure Github-runner configurations:

[Github Actions security](https://docs.github.com/en/actions/security-guides)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-github-runner/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-github-runner/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-github-runner/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
