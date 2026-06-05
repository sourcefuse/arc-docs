![Module Banner](./static/banner.png)

# [terraform-aws-arc-kms](https://github.com/sourcefuse/terraform-aws-arc-kms)

> **Module:** `sourcefuse/arc-kms/aws`

> **Registry:** [https://registry.terraform.io/modules/sourcefuse/arc-kms/aws](https://registry.terraform.io/modules/sourcefuse/arc-kms/aws)

> **Category:** Security / Encryption

> **Source:** [https://github.com/sourcefuse/terraform-aws-arc-kms](https://github.com/sourcefuse/terraform-aws-arc-kms)

[![Latest Release](https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-kms.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-kms/releases/latest)
[![Last Updated](https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-kms.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-kms/commits)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-kms)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-kms)

## Overview

Creates and manages AWS KMS customer-managed keys (CMKs) with aliases, key policies, and automatic key rotation.

## What It Does

- KMS CMK with configurable deletion window
- Automatic key rotation
- Key alias management
- Custom key policy support
- Enable/disable key without deletion

## Quickstart

```hcl
module "kms" {
  source                  = "sourcefuse/arc-kms/aws"
  version                 = "1.0.0"
  enabled                 = var.enabled
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  alias                   = var.alias
  tags                    = module.tags.tags
  policy                  = var.policy
}
```

## Required Inputs

| Name | Type | Description |
|------|------|-------------|
| `alias` | `string` | KMS key alias (must start with alias/) |
## Key Outputs

| Name | Description |
|------|-------------|
| `key_id` | KMS key ID |
| `key_arn` | KMS key ARN |
| `alias_arn` | KMS alias ARN |
## Full Variable & Output Reference

The complete inputs/outputs reference is auto-generated below.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0, < 7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | The display name of the alias. The name must start with the word `alias` followed by a forward slash. If not specified, the alias name will be auto-generated. | `string` | n/a | yes |
| <a name="input_customer_master_key_spec"></a> [customer\_master\_key\_spec](#input\_customer\_master\_key\_spec) | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, or `ECC_SECG_P256K1`. | `string` | `"SYMMETRIC_DEFAULT"` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | Duration in days after which the key is deleted after destruction of the resource | `number` | `10` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the key as viewed in AWS console | `string` | `"KMS master key"` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Specifies whether key rotation is enabled | `bool` | `true` | no |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT` or `SIGN_VERIFY`. | `string` | `"ENCRYPT_DECRYPT"` | no |
| <a name="input_multi_region"></a> [multi\_region](#input\_multi\_region) | Indicates whether the KMS key is a multi-Region (true) or regional (false) key. | `bool` | `false` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | A valid KMS policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to add to your resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias_arn"></a> [alias\_arn](#output\_alias\_arn) | Alias ARN |
| <a name="output_alias_name"></a> [alias\_name](#output\_alias\_name) | Alias name |
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | Key ARN |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | Key ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Contributing
See [CONTRIBUTING.md](./CONTRIBUTING.md) for commit conventions and development setup.

## Authors

This project is authored by:
- SourceFuse ARC Team
