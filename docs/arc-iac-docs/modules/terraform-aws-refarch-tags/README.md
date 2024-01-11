# [terraform-aws-arc-tags](https://github.com/sourcefuse/terraform-aws-arc-tags)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-tags)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-tags)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-refarch-tags/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-refarch-tags/actions/workflows/snyk.yaml)

## terraform-aws-arc-tags

This module is responsible for managing the tags we use at SourceFuse when creating resources in AWS.

## Usage

```hcl
module "terraform-aws-arc-tags" {
  source      = "sourcefuse/arc-tags/aws"
  version     = "1.2.2"
  environment = var.environment
  project     = "Example"

  extra_tags = {
    RepoName = "terraform-aws-refarch-ecs"
    Example  = "true"
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name                                                                     | Version |
| ------------------------------------------------------------------------ | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.4  |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name                                                               | Description                                      | Type          | Default | Required |
| ------------------------------------------------------------------ | ------------------------------------------------ | ------------- | ------- | :------: |
| <a name="input_environment"></a> [environment](#input_environment) | The environment the resource will be created in. | `string`      | n/a     |   yes    |
| <a name="input_extra_tags"></a> [extra_tags](#input_extra_tags)    | Additional tags to add to your resources.        | `map(string)` | `{}`    |    no    |
| <a name="input_project"></a> [project](#input_project)             | The name of the project being worked on.         | `string`      | n/a     |   yes    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_extra_tags"></a> [extra_tags](#output_extra_tags) | n/a         |
| <a name="output_tags"></a> [tags](#output_tags)                   | n/a         |

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
