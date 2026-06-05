# [terraform-aws-arc-cloud-custodian](https://github.com/sourcefuse/terraform-aws-arc-cloud-custodian)

> **Module:** `sourcefuse/arc-cloud-custodian/aws`

> **Registry:** [https://registry.terraform.io/modules/sourcefuse/arc-cloud-custodian/aws](https://registry.terraform.io/modules/sourcefuse/arc-cloud-custodian/aws)

> **Category:** Governance / Compliance


> **Source:** [https://github.com/sourcefuse/terraform-aws-arc-cloud-custodian](https://github.com/sourcefuse/terraform-aws-arc-cloud-custodian)

[![Latest Release](https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-cloud-custodian.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-cloud-custodian/releases/latest)
[![Last Updated](https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-cloud-custodian.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-cloud-custodian/commits)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality Gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-cloud-custodian)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-cloud-custodian)

## Overview

Provisions Cloud Custodian infrastructure (IAM role, S3 output bucket, CloudTrail, SQS) and runs custodian policies from template files.

## What It Does

- IAM role for Cloud Custodian Lambda execution
- S3 bucket for custodian output
- CloudTrail with SQS queue for event-driven policies
- Template-based policy files with Terraform variable interpolation
- Automatic policy execution

For more information about this repository and its usage, please see [Terraform AWS CLOUD CUSTODIAN Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-cloud-custodian/blob/main/docs/module-usage-guide/README.md)

## Quickstart
## Requirements 

```shell
Terraform >= 1.0.5  
Pip >= 20.0.2   
Python >= 3.8 
``` 

## Getting started 
You must have Python 3.8 or above installed.

To install Cloud Custodian, you can download it using Pip:

```shell
pip install c7n 
```
* Pip package notes
  * c7n is for AWS
  * c7n_azure us for Azure
  * c7n_gcp is for Google Compute  

## Usage

```hcl
terraform {
  required_version = "~> 1.0.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_policy" "ec2" {
  name        = "cloud-custodian-allow-ec2-management"
  description = "Cloud Custodian EC2 policy."

  # This policy is for example purposes only
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:*",
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "aws_lambda_basic_execution_role" {
  role       = module.cloud_custodian.role_name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy_attachment" "ec2" {
  role       = module.cloud_custodian.role_name
  policy_arn = aws_iam_policy.ec2.arn
}

module "cloud_custodian" {
  source = "../."

  name      = "tf-cloud-custodian"
  namespace = "refarch"
  region    = "us-east-1"

  stage                    = "example"
  cloudtrail_sqs_enabled   = true
  custodian_files_path     = "${path.root}/files"
  custodian_templates_path = "${path.root}/templates"

  template_file_vars = {
    EC2_TAG_ROLE = module.cloud_custodian.role_name
    SQS_ARN      = module.cloud_custodian.sqs_arn
    REGION       = "us-east-1"
  }

  tags = {
    Module  = "terraform-aws-cloud-custodian"
    Example = "true"
  }
}
```

## Required Inputs

| Name | Type | Description |
|------|------|-------------|
| `name` | `string` | Name for the deployment |
| `namespace` | `string` | Namespace prefix |
| `region` | `string` | AWS region |
| `stage` | `string` | Deployment stage |
| `tags` | `map(string)` | Resource tags |
## Key Outputs

| Name | Description |
|------|-------------|
| `role_arn` | IAM role ARN for Cloud Custodian |
| `bucket_id` | S3 output bucket name |
| `sqs_arn` | SQS queue ARN |
## Full Variable & Output Reference

The complete inputs/outputs reference is auto-generated below.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 2.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 2.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.68.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.1.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudtrail"></a> [cloudtrail](#module\_cloudtrail) | git::https://github.com/cloudposse/terraform-aws-cloudtrail.git | 0.20.1 |
| <a name="module_cloudtrail_s3_bucket"></a> [cloudtrail\_s3\_bucket](#module\_cloudtrail\_s3\_bucket) | git::https://github.com/cloudposse/terraform-aws-cloudtrail-s3-bucket.git | 0.26.2 |
| <a name="module_cloudtrail_sqs_queue"></a> [cloudtrail\_sqs\_queue](#module\_cloudtrail\_sqs\_queue) | git::https://github.com/terraform-aws-modules/terraform-aws-sqs.git | v3.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.custodian_output_s3_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.cloudtrail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.cloudwatchlogs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.s3_output](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.sqs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.tags](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_s3_bucket.custodian_output](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.server_side_encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [local_file.cc_files](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [null_resource.run_custodian](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudtrail_enabled"></a> [cloudtrail\_enabled](#input\_cloudtrail\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_cloudtrail_s3_bucket_enabled"></a> [cloudtrail\_s3\_bucket\_enabled](#input\_cloudtrail\_s3\_bucket\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_cloudtrail_sqs_enabled"></a> [cloudtrail\_sqs\_enabled](#input\_cloudtrail\_sqs\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_custodian_files_path"></a> [custodian\_files\_path](#input\_custodian\_files\_path) | Path to where the custodian files are located. | `string` | `null` | no |
| <a name="input_custodian_templates_path"></a> [custodian\_templates\_path](#input\_custodian\_templates\_path) | Path to where the custodian template files are located. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of invocation. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | A namespace for all the resources to live in. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region to create objects in. | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage of pipeline (Eg. sbx, dev, staging, uat, prod). | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to assign resources. | `map(string)` | n/a | yes |
| <a name="input_template_file_vars"></a> [template\_file\_vars](#input\_template\_file\_vars) | Variable name and value maps. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | ARN of the bucket. |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | Name of the bucket. |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | ARN of the role created. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of the role created. |
| <a name="output_sqs_arn"></a> [sqs\_arn](#output\_sqs\_arn) | ARN of the SQS queue |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning  
This project uses a `.version` file at the root of the repo which the pipeline reads from and does a git tag.  

On commits to `main`, you will need to increment this version. Once the project is merged, the pipeline will kick off and tag the latest git commit.  

## Development

### Prerequisites

Install the prerequisites:
* [pre-commit](https://pre-commit.com/#install)
* [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
* [terraform-docs](https://github.com/segmentio/terraform-docs)

Then run `pre-commit` on the repo:  

```shell
pre-commit install
pre-commit run --all-files
```


## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for commit conventions and development setup.

## Authors

This project is authored by:
- SourceFuse ARC Team
