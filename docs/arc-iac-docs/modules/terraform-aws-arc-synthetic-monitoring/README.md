![Module Structure](./static/banner.png)

# [terraform-aws-arc-synthetic-monitoring](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

<a href="https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-synthetic-monitoring.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-synthetic-monitoring.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-synthetic-monitoring&token=86c4365844146b19d7ee637439416373f834e97a)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-synthetic-monitoring)

[![snyk](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing synthetic canaries.

## Features

- Allows creation of AWS Synthetics canaries with VPC configurations.
- Supports custom IAM roles and policies.
- Flexible configuration options for canaries.

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module for Synthetics Canaries centralizes and automates the monitoring of your applications and APIs. By leveraging AWS CloudWatch Synthetics, this module allows you to create and manage canary scripts that continuously check the availability and performance of your endpoints. It provides a comprehensive solution to detect anomalies, pinpoint performance issues, and ensure that your applications are functioning as expected. The module also supports scheduling canary runs, capturing and analyzing logs and metrics, and integrating with other AWS services for alerting and reporting. With cross-region and cross-account capabilities, it enhances monitoring coverage and resilience for your applications.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:


```plaintext
synthetics/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "synthetic-monitoring" {
  source            = "sourcefuse/arc-synthetic-monitoring/aws"
  version           = "0.0.1"
  sns_topic_name    = var.sns_topic_name
  endpoint          = var.endpoint
  kms_key_alias     = var.kms_key_alias
  canaries_with_vpc = local.canaries_with_vpc
  bucket_name       = var.bucket_name
  tags              = module.tags.tags
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "canary_arns" {
  value = module.synthetic-monitoring.canary_arns
}

```
## Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/blob/main/example/main.tf) file in the example folder.  

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | 2.4.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | sourcefuse/arc-kms/aws | 0.0.4 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.fail_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.success_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_iam_policy.canary_execution_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.canary_execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.canary_execution_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_s3_bucket.artifcats_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_cors_configuration.cors](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration) | resource |
| [aws_s3_bucket_public_access_block.public_access_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_synthetics_canary.dynamic_canaries_with_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/synthetics_canary) | resource |
| [random_pet.iam_role_name](https://registry.terraform.io/providers/hashicorp/random/3.6.2/docs/resources/pet) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.sns_topic_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_role.execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_block_public_acls"></a> [block\_public\_acls](#input\_block\_public\_acls) | Whether Amazon S3 should block public ACLs for this bucket. | `bool` | `true` | no |
| <a name="input_block_public_policy"></a> [block\_public\_policy](#input\_block\_public\_policy) | Whether Amazon S3 should block public bucket policies for this bucket. | `bool` | `true` | no |
| <a name="input_bucket_key_enabled"></a> [bucket\_key\_enabled](#input\_bucket\_key\_enabled) | Specifies whether bucket key is enabled. | `bool` | `false` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket. | `string` | n/a | yes |
| <a name="input_canaries_with_vpc"></a> [canaries\_with\_vpc](#input\_canaries\_with\_vpc) | List of canaries with VPC configuration | <pre>map(object({<br>    name     = string<br>    handler  = string<br>    zip_file = string<br>    s3_details = optional(object({<br>      s3_bucket  = string<br>      s3_key     = string<br>      s3_version = string<br>    }), null)<br>    runtime_version          = string<br>    start_canary             = bool<br>    failure_retention_period = number<br>    success_retention_period = number<br>    schedule_expression      = string<br>    environment_variables    = map(string)<br>  }))</pre> | n/a | yes |
| <a name="input_cloudwatch_metric_alarms_enabled"></a> [cloudwatch\_metric\_alarms\_enabled](#input\_cloudwatch\_metric\_alarms\_enabled) | Boolean flag to enable/disable CloudWatch metrics alarms | `bool` | `false` | no |
| <a name="input_cors_configuration"></a> [cors\_configuration](#input\_cors\_configuration) | The CORS configuration for the S3 bucket. | <pre>list(object({<br>    allowed_headers = list(string)<br>    allowed_methods = list(string)<br>    allowed_origins = list(string)<br>    expose_headers  = list(string)<br>    max_age_seconds = number<br>  }))</pre> | <pre>[<br>  {<br>    "allowed_headers": [<br>      "Authorization"<br>    ],<br>    "allowed_methods": [<br>      "GET",<br>      "POST"<br>    ],<br>    "allowed_origins": [<br>      "*"<br>    ],<br>    "expose_headers": [<br>      "x-amz-server-side-encryption"<br>    ],<br>    "max_age_seconds": 3000<br>  }<br>]</pre> | no |
| <a name="input_custom_kms_policy"></a> [custom\_kms\_policy](#input\_custom\_kms\_policy) | Custom KMS policy to apply if enabled. If not provided, a default policy will be used. | `string` | `""` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | Duration in days after which the key is deleted after destruction of the resource | `number` | `10` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Specifies whether key rotation is enabled | `bool` | `true` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the KMS module is enabled. If true, a custom KMS key will be used for encryption. If false, the default AWS managed KMS key will be used. | `bool` | `true` | no |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | The endpoint for the SNS subscription. | `string` | n/a | yes |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Specifies whether to force destroy the bucket (and all objects) when the bucket is removed. | `bool` | `true` | no |
| <a name="input_ignore_public_acls"></a> [ignore\_public\_acls](#input\_ignore\_public\_acls) | Whether Amazon S3 should ignore public ACLs for this bucket. | `bool` | `true` | no |
| <a name="input_kms_key_alias"></a> [kms\_key\_alias](#input\_kms\_key\_alias) | Alias for the custom KMS key (if enabled). | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | The protocol for the SNS subscription endpoint. | `string` | `"email"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-east-1"` | no |
| <a name="input_restrict_public_buckets"></a> [restrict\_public\_buckets](#input\_restrict\_public\_buckets) | Whether Amazon S3 should restrict public bucket policies for this bucket. | `bool` | `true` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security group IDs for the canary | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | Name for the SNS topic. | `string` | n/a | yes |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | The server-side encryption algorithm to use. Valid values are `AES256` and `aws:kms` | `string` | `"aws:kms"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs where the canary will run | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to the canary | `map(string)` | n/a | yes |
| <a name="input_versioning_enabled"></a> [versioning\_enabled](#input\_versioning\_enabled) | Enable versioning for the S3 bucket. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_canary_arns"></a> [canary\_arns](#output\_canary\_arns) | ARNs of all canaries created |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning  
This project uses a `.version` file at the root of the repo which the pipeline reads from and does a git tag.  

When you intend to commit to `main`, you will need to increment this version. Once the project is merged,
the pipeline will kick off and tag the latest git commit.  

## Development

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations

- Configure pre-commit hooks
  ```sh
  pre-commit install
  ```

### Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests
- Tests are available in `test` directory
- Configure the dependencies
  ```sh
  cd test/
  go mod init github.com/sourcefuse/terraform-aws-refarch-<module_name>
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:
- SourceFuse ARC Team

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="http://mayankdevops.com"><img src="https://avatars.githubusercontent.com/u/83959396?v=4?s=100" width="100px;" alt="Mayank Sharma"/><br /><sub><b>Mayank Sharma</b></sub></a><br /><a href="https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/commits?author=mayank0202" title="Code">💻</a> <a href="https://github.com/sourcefuse/terraform-aws-arc-synthetic-monitoring/commits?author=mayank0202" title="Documentation">📖</a> <a href="#infra-mayank0202" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-mayank0202" title="Maintenance">🚧</a> <a href="#mentoring-mayank0202" title="Mentoring">🧑‍🏫</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
