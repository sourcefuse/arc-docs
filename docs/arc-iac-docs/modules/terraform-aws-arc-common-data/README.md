<!-- ![Module Banner](./static/banner.png) -->

# [terraform-aws-arc-common-data](https://github.com/sourcefuse/terraform-aws-arc-common-data)

> **Module:** `sourcefuse/arc-common-data/aws`

> **Registry:** [https://registry.terraform.io/modules/sourcefuse/arc-common-data/aws](https://registry.terraform.io/modules/sourcefuse/arc-common-data/aws)

> **Category:** Utility / Data


> **Source:** [https://github.com/sourcefuse/terraform-aws-arc-common-data](https://github.com/sourcefuse/terraform-aws-arc-common-data)

[![Latest Release](https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-common-data.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-common-data/releases/latest)
[![Last Updated](https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-common-data.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-common-data/commits)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality Gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-common-data)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-common-data)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for querying the most commonly referenced components in the ARC IaC modules.
* VPC
* Public Subnets
* Private Subnets

## Usage

To see a full example, check out the [main.tf](./example/main.tf) file in the example folder.  

## What It Does

- VPC lookup by namespace and environment tags
- Public subnet IDs lookup
- Private subnet IDs lookup
- Zero resources created — data sources only

For more information about this repository and its usage, please see [Terraform AWS COMMON DATA Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-common-data/blob/main/docs/module-usage-guide/README.md).

## Quickstart

```hcl
module "this" {
  source = "git::https://github.com/sourcefuse/terraform-aws-arc-common-data"
  environment = var.environment
  namespace   = var.namespace
  region      = var.region
}
```

## Required Inputs

| Name | Type | Description |
|------|------|-------------|
| `namespace` | `string` | Namespace tag value to filter VPC/subnets |
| `environment` | `string` | Environment tag value to filter VPC/subnets |
| `region` | `string` | AWS region |
## Key Outputs

| Name | Description |
|------|-------------|
| `vpc_id` | VPC ID |
| `private_subnet_ids` | Private subnet IDs |
| `public_subnet_ids` | Public subnet IDs |
## Full Variable & Output Reference

The complete inputs/outputs reference is auto-generated below.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_subnets.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_subnets.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private subnet IDs |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public subnet IDs |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of the VPC |
| <a name="output_vpc_name"></a> [vpc\_name](#output\_vpc\_name) | Name of the VPC |
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

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

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

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for commit conventions and development setup.

## Authors

This project is authored by:
- SourceFuse ARC Team
