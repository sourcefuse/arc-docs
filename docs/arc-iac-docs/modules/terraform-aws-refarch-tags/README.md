![Module Structure](./static/banner.png)

# [terraform-aws-arc-tags](https://github.com/sourcefuse/terraform-aws-arc-tags)

<a href="https://github.com/sourcefuse/terraform-aws-arc-tags/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-tags.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-tags/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-tags.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-tags)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-tags)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-refarch-tags/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-refarch-tags/actions/workflows/snyk.yaml)

## terraform-aws-arc-tags

This module is responsible for managing the tags we use at SourceFuse when creating resources in AWS.

## Usage

```hcl
module "terraform-aws-arc-tags" {
  source      = "sourcefuse/arc-tags/aws"
  # version     = "x.x.x"  # we recommend pinning to a specific version
  environment = "dev"
  project     = "Example"

  extra_tags = {
    RepoName = "terraform-aws-arc-ecs"
    Example  = "true"
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The environment the resource will be created in. | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags to add to your resources. | `map(string)` | `{}` | no |
| <a name="input_project"></a> [project](#input\_project) | The name of the project being worked on. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_extra_tags"></a> [extra\_tags](#output\_extra\_tags) | n/a |
| <a name="output_tags"></a> [tags](#output\_tags) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name                                                               | Description                                      | Type          | Default | Required |
| ------------------------------------------------------------------ | ------------------------------------------------ | ------------- | ------- | :------: |
| <a name="input_environment"></a> [environment](#input_environment) | The environment the resource will be created in. | `any`         | n/a     |   yes    |
| <a name="input_extra_tags"></a> [extra_tags](#input_extra_tags)    | Additional tags to add to your resources.        | `map(string)` | `{}`    |    no    |
| <a name="input_project"></a> [project](#input_project)             | The name of the project being worked on.         | `any`         | n/a     |   yes    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_extra_tags"></a> [extra_tags](#output_extra_tags) | n/a         |
| <a name="output_tags"></a> [tags](#output_tags)                   | n/a         |

<!-- END_TF_DOCS -->

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```

By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly
