# Terraform AWS ARC CloudFront Module Usage Guide

## Introduction
This document offers guidelines and instructions to users seeking to deploy the Terraform AWS ARC module for the management of AWS CloudFront Distribution.

### Module Overview
The [Terraform AWS ARC CloudFront](https://github.com/sourcefuse/terraform-aws-refarch-cloudfront) module streamlines the creation of CloudFront Distribution with capabilities for S3 and custom Origins.

### Prerequisites
Before using this module, ensure you have the following:
- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS CloudFront and Terraform concepts.

## Getting Started

### Module Source
To use the module in your Terraform configuration, include the following source block:
```tcl
module "cloudfront" {
  source  = "sourcefuse/arc-cloudfront/aws"
  version = "4.0.5"
  # insert the required variables here
}
```
Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-cloudfront/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:
1. Create a new folder in `terraform/` named `cloudfront`.
2. Create the required files, see the [example](https://github.com/sourcefuse/terraform-aws-arc-cloudfront/tree/main/example) to base off of.
3. Configure with your backend( To store the Terraform state remotely)
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions
Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create and modify
- CloudFront
- ACM
- Route53

## Module Configuration

### Input Variables
For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-cloudfront?tab=readme-ov-file#inputs) section.

### Output Values
For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-cloudfront?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage
For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-cloudfront/tree/main/example) folder.

This example will create:
- CloudFront Domain
- ACM Cetificate
- Origin Request policy
- Cache policy
- Route53 record
- Lambda@Edge
- CloudFront Function

### Tips and Recommendations
- Module supports multiple Origins
- Supports multiple domains( mention the domaisn in `acm_details` variable)

## Troubleshooting

### Reporting Issues
If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-cloudfront/issues).

## Contributing and Community Support

### Contributing Guidelines
Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-cloudfront/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues
If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-cloudfront/issues).

## License

### License Information
This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-cloudfront/blob/main/LICENSE) file for more details.

### Open Source Contribution
Contribute to open source by using and enhancing this module. Your contributions are welcome!
