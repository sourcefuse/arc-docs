# [terraform-aws-arc-github-iam](https://github.com/sourcefuse/terraform-aws-arc-github-iam)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-github-iam)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-github-iam)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-github-iam/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-github-iam/actions/workflows/snyk.yaml)

## Overview
SourceFuse AWS Reference Architecture (ARC) Terraform module for managing GitHub OIDC IAM access to your account.

Please note, this module creates a GitHub identity provider by default for your AWS account. You can only have **ONE** GitHub identity provider per AWS account.
If you already have the identity provider configured, or you need to run this multiple times for your account, set `var.create_github_oidc_provider` to `false`.

For more information about this repository and its usage, please see [Terraform AWS ARC GitHub IAM Module Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-github-iam/blob/main/.docs/terraform-aws-arc-github-iam-module-usage-guide.md).

## Usage
To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-github-iam/blob/main/example/main.tf) file in the example folder.

```hcl
module "github_iam" {
  source = "../"

  environment = var.environment
  namespace   = var.namespace

  ## role settings
  role_max_session_duration = var.role_max_session_duration
  github_subscriptions      = var.github_subscriptions

  ## policies
  policies = [
    {
      name   = "${var.namespace}-${var.environment}-s3-access"
      policy_json = data.aws_iam_policy_document.s3.json
    }
  ]
  aws_managed_iam_policy_names = [
    "ReadOnlyAccess"
  ]

  tags = module.tags.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.created](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_openid_connect_provider) | data source |
| [aws_iam_policy.managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_iam_policy_names"></a> [additional\_iam\_policy\_names](#input\_additional\_iam\_policy\_names) | List of IAM Policy names to lookup and assign to the created IAM Role | `list(string)` | `[]` | no |
| <a name="input_create_github_oidc_provider"></a> [create\_github\_oidc\_provider](#input\_create\_github\_oidc\_provider) | Create the OIDC GitHub Provider. If false, this module assume it exists and does a data lookup. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_github_subscriptions"></a> [github\_subscriptions](#input\_github\_subscriptions) | GitHub repo subscriptions for AWS account access | `list(string)` | n/a | yes |
| <a name="input_github_thumbprint_list"></a> [github\_thumbprint\_list](#input\_github\_thumbprint\_list) | GitHub thumbprint list | `list(string)` | <pre>[<br>  "6938fd4d98bab03faadb97b34396831e3780aea1",<br>  "1c58a3a8518e8759bf075b76b750d4f2df264fcd"<br>]</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | n/a | yes |
| <a name="input_policies"></a> [policies](#input\_policies) | The IAM policies to create and attach to the IAM role for managing AWS resources | <pre>list(object({<br>    name        = string<br>    path        = optional(string, "/")<br>    policy_json = any<br>  }))</pre> | `[]` | no |
| <a name="input_role_max_session_duration"></a> [role\_max\_session\_duration](#input\_role\_max\_session\_duration) | Session duration of the assumed role | `number` | `3600` | no |
| <a name="input_role_name_override"></a> [role\_name\_override](#input\_role\_name\_override) | Base name to assign resources. If null, it will default to `{var.namespace}-{var.environment}-github-oidc` | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign created resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policies"></a> [policies](#output\_policies) | n/a |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | The ARN of the IAM role |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | The ID of the IAM role |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | The name of the IAM role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
