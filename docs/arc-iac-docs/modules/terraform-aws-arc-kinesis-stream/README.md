![Module Structure](./static/banner.png)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
# [terraform-aws-arc-kinesis-stream](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream)

<a href="https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-kinesis-stream.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-kinesis-stream.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)


[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-kinesis-stream&token=b4da1709f70e10c956ed98d2510423b22dde8564)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-kinesis-stream)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/actions/workflows/snyk.yaml)
## Overview

For more information about this repository and its usage, please see [Terraform AWS ARC GitHub Kinesis Module Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/blob/main/docs/module-usage-guide/README.md).

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module simplifies the creation and management of essential AWS infrastructure components. It is designed to provision and configure the following resources:

1. Amazon Kinesis Data Stream (aws_kinesis_stream):
    - Name: A unique name for the Kinesis stream, generated using a local variable.
    - Shard Count: The number of shards provisioned for the stream. This can be dynamically set based  on  the stream mode (PROVISIONED or ON_DEMAND).
    - Retention Period: The length of time that data records are accessible after they are added to the stream.
    - Shard Level Metrics: Metrics to be enabled for monitoring the stream at the shard level.
    - Enforce Consumer Deletion: A flag to enforce consumer deletion when the stream is deleted.
    - Encryption Type: The encryption type to be used for the stream.
    - KMS Key ID: The KMS key ID for encrypting data records in the stream.
    - Stream Mode Details: Dynamic configuration block to set the stream mode (PROVISIONED or ON_DEMAND).
    - Tags: Key-value pairs to tag the stream for identification and management.  

2. Amazon Kinesis Stream Consumer (aws_kinesis_stream_consumer):  
    - Count: The number of consumer instances to create, determined by the var.consumer_count variables.
    - Name: A unique name for each consumer, generated using a local variable and the count index
    - Stream ARN: The Amazon Resource Name (ARN) of the Kinesis stream to which the consumer is attached.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:



```plaintext
ec2/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "kinesis" {
  source         = "sourcefuse/arc-kinesis-stream/aws"
  version        = "0.0.1"
  name           = "${var.namespace}-${var.environment}-kinesis"
  shard_count    = var.shard_count
  consumer_count = var.consumer_count

  tags = module.tags.tags
}

```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "name" {
  description = "Name of the Kinesis stream."
  value       = module.kinesis.name
}

output "shard_count" {
  description = "Number of shards provisioned."
  value       = module.kinesis.shard_count
}

output "stream_arn" {
  description = "ARN of the Kinesis stream."
  value       = module.kinesis.stream_arn
}

```

## First Time Usage
***uncomment the backend block in [main.tf](./example/main.tf)***
```shell
terraform init -backend-config=config.dev.hcl
```
***If testing locally, `terraform init` should be fine***

Create a `dev` workspace
```shell
terraform workspace new dev
```

Plan Terraform
```shell
terraform plan -var-file terraform.tfvars
```

Apply Terraform
```shell
terraform apply -var-file terraform.tfvars
```

## Production Setup
```shell
terraform init -backend-config=config.prod.hcl
```

Create a `prod` workspace
```shell
terraform workspace new prod
```

Plan Terraform
```shell
terraform plan -var-file prod.tfvars
```

Apply Terraform
```shell
terraform apply -var-file prod.tfvars  
```

## Cleanup  
Destroy Terraform
```shell
terraform destroy -var-file dev.tfvars
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kinesis_stream.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream) | resource |
| [aws_kinesis_stream_consumer.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream_consumer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_consumer_count"></a> [consumer\_count](#input\_consumer\_count) | Number of consumers to register with Kinesis stream | `number` | `0` | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | The encryption type to use. Acceptable values are `NONE` and `KMS`. | `string` | `"KMS"` | no |
| <a name="input_enforce_consumer_deletion"></a> [enforce\_consumer\_deletion](#input\_enforce\_consumer\_deletion) | A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. | `bool` | `true` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The GUID for the customer-managed KMS key to use for encryption. | `string` | `"alias/aws/kinesis"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of kinesis-stream | `string` | n/a | yes |
| <a name="input_retention_period"></a> [retention\_period](#input\_retention\_period) | Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24. | `number` | `24` | no |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | The number of shards that the stream will use | `number` | `1` | no |
| <a name="input_shard_level_metrics"></a> [shard\_level\_metrics](#input\_shard\_level\_metrics) | A list of shard-level CloudWatch metrics which can be enabled for the stream. | `list(string)` | <pre>[<br>  "IncomingBytes",<br>  "OutgoingBytes"<br>]</pre> | no |
| <a name="input_stream_mode"></a> [stream\_mode](#input\_stream\_mode) | Specifies the capacity mode of the stream. Must be either `PROVISIONED` or `ON_DEMAND`. If `ON_DEMAND` is used, then `shard_count` is ignored. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for AWS elasticache redis | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_consumers"></a> [consumers](#output\_consumers) | List of consumers registered with Kinesis stream. |
| <a name="output_name"></a> [name](#output\_name) | Name of the Kinesis stream. |
| <a name="output_shard_count"></a> [shard\_count](#output\_shard\_count) | Number of shards provisioned. |
| <a name="output_stream_arn"></a> [stream\_arn](#output\_stream\_arn) | ARN of the Kinesis stream. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly



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
- SourceFuse

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/mayank0202"><img src="https://avatars.githubusercontent.com/u/83959396?v=4?s=100" width="100px;" alt="Mayank Sharma"/><br /><sub><b>Mayank Sharma</b></sub></a><br /><a href="#infra-mayank0202" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-mayank0202" title="Maintenance">🚧</a> <a href="#mentoring-mayank0202" title="Mentoring">🧑‍🏫</a> <a href="https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/commits?author=mayank0202" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!