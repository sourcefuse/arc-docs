# [terraform-aws-arc-security](https://github.com/sourcefuse/terraform-aws-arc-security)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-security)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-security)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-security/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-security/actions/workflows/snyk.yaml)
## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing Security Hub components.

## Usage

To see a full example, check out the [main.tf](./example/main.tf) file in the example folder.

```hcl
module "cloud_security" {
  source      = "sourcefuse/arc-security/aws"
  version     = "0.0.4"
  region      = var.region
  environment = var.environment
  namespace   = var.namespace

  enable_inspector    = true
  enable_aws_config   = true
  enable_guard_duty   = true
  enable_security_hub = false

  create_config_iam_role = true

  aws_config_sns_subscribers   = local.aws_config_sns_subscribers
  guard_duty_sns_subscribers   = local.guard_duty_sns_subscribers
  security_hub_sns_subscribers = local.security_hub_sns_subscribers

  aws_config_managed_rules       = var.aws_config_managed_rules
  enabled_security_hub_standards = local.security_hub_standards

  create_inspector_iam_role               = var.create_inspector_iam_role
  inspector_enabled_rules                 = var.inspector_enabled_rules
  inspector_schedule_expression           = var.inspector_schedule_expression
  inspector_assessment_event_subscription = var.inspector_assessment_event_subscription

  tags = module.tags.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_config_storage"></a> [aws\_config\_storage](#module\_aws\_config\_storage) | cloudposse/config-storage/aws | 1.0.0 |
| <a name="module_config"></a> [config](#module\_config) | cloudposse/config/aws | 1.1.0 |
| <a name="module_guard_duty"></a> [guard\_duty](#module\_guard\_duty) | cloudposse/guardduty/aws | 0.5.0 |
| <a name="module_inspector"></a> [inspector](#module\_inspector) | cloudposse/inspector/aws | 0.4.0 |
| <a name="module_security_hub"></a> [security\_hub](#module\_security\_hub) | git::https://github.com/sourcefuse/terraform-aws-security-hub.git | chore/partitions-and-condition-overrides |
| <a name="module_sns_guard_duty"></a> [sns\_guard\_duty](#module\_sns\_guard\_duty) | cloudposse/sns-topic/aws | 0.21.0 |

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_session_context.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_session_context) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_config_managed_rules"></a> [aws\_config\_managed\_rules](#input\_aws\_config\_managed\_rules) | A list of AWS Managed Rules that should be enabled on the account.<br><br>See the following for a list of possible rules to enable:<br>https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html | <pre>map(object({<br>    description      = string<br>    identifier       = string<br>    input_parameters = any<br>    tags             = map(string)<br>    enabled          = bool<br>  }))</pre> | `{}` | no |
| <a name="input_aws_config_sns_subscribers"></a> [aws\_config\_sns\_subscribers](#input\_aws\_config\_sns\_subscribers) | A map of subscription configurations for SNS topics<br><br>For more information, see:<br>https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference<br><br>protocol:<br>  The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially<br>  supported, see link) (email is an option but is unsupported in terraform, see link).<br>endpoint:<br>  The endpoint to send data to, the contents will vary with the protocol. (see link for more information)<br>endpoint\_auto\_confirms:<br>  Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty. Default is<br>  false<br>raw\_message\_delivery:<br>  Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property).<br>  Default is false | <pre>map(object({<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>  }))</pre> | n/a | yes |
| <a name="input_create_config_iam_role"></a> [create\_config\_iam\_role](#input\_create\_config\_iam\_role) | Flag to indicate whether an iam role should be created for aws config. | `bool` | `false` | no |
| <a name="input_create_inspector_iam_role"></a> [create\_inspector\_iam\_role](#input\_create\_inspector\_iam\_role) | Toggle to create aws inspector iam role | `bool` | `true` | no |
| <a name="input_enable_aws_config"></a> [enable\_aws\_config](#input\_enable\_aws\_config) | Whether to enable AWS Config | `bool` | `true` | no |
| <a name="input_enable_guard_duty"></a> [enable\_guard\_duty](#input\_enable\_guard\_duty) | Whether to enable Guard Duty | `bool` | `true` | no |
| <a name="input_enable_inspector"></a> [enable\_inspector](#input\_enable\_inspector) | Whether to enable Inspector | `bool` | `true` | no |
| <a name="input_enable_security_hub"></a> [enable\_security\_hub](#input\_enable\_security\_hub) | Whether to enable Security Hub | `bool` | `true` | no |
| <a name="input_enabled_security_hub_standards"></a> [enabled\_security\_hub\_standards](#input\_enabled\_security\_hub\_standards) | A list of standards/rulesets to enable<br><br>See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription#argument-reference<br><br>The possible values are:<br><br>  - standards/aws-foundational-security-best-practices/v/1.0.0<br>  - ruleset/cis-aws-foundations-benchmark/v/1.2.0<br>  - standards/pci-dss/v/3.2.1 | `list(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_guard_duty_s3_protection_enabled"></a> [guard\_duty\_s3\_protection\_enabled](#input\_guard\_duty\_s3\_protection\_enabled) | Flag to indicate whether S3 protection will be turned on in GuardDuty. | `bool` | `false` | no |
| <a name="input_guard_duty_sns_subscribers"></a> [guard\_duty\_sns\_subscribers](#input\_guard\_duty\_sns\_subscribers) | A map of subscription configurations for SNS topics<br><br>For more information, see:<br>https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference<br><br>protocol:<br>  The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially<br>  supported, see link) (email is an option but is unsupported in terraform, see link).<br>endpoint:<br>  The endpoint to send data to, the contents will vary with the protocol. (see link for more information)<br>endpoint\_auto\_confirms:<br>  Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty. Default is<br>  false<br>raw\_message\_delivery:<br>  Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property).<br>  Default is false | <pre>map(object({<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>  }))</pre> | n/a | yes |
| <a name="input_inspector_assessment_event_subscription"></a> [inspector\_assessment\_event\_subscription](#input\_inspector\_assessment\_event\_subscription) | Configures sending notifications about a specified assessment template event to a designated SNS topic | <pre>map(object({<br>    event     = string<br>    topic_arn = string<br>  }))</pre> | `{}` | no |
| <a name="input_inspector_enabled_rules"></a> [inspector\_enabled\_rules](#input\_inspector\_enabled\_rules) | list of rules to pass to inspector | `list(string)` | `[]` | no |
| <a name="input_inspector_schedule_expression"></a> [inspector\_schedule\_expression](#input\_inspector\_schedule\_expression) | AWS Schedule Expression to indicate how often the inspector scheduled event shoud run | `string` | `"rate(7 days)"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-east-1"` | no |
| <a name="input_security_hub_sns_subscribers"></a> [security\_hub\_sns\_subscribers](#input\_security\_hub\_sns\_subscribers) | A map of subscription configurations for SNS topics<br><br>For more information, see:<br>https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference<br><br>protocol:<br>  The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially<br>  supported, see link) (email is an option but is unsupported in terraform, see link).<br>endpoint:<br>  The endpoint to send data to, the contents will vary with the protocol. (see link for more information)<br>endpoint\_auto\_confirms:<br>  Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty. Default is<br>  false<br>raw\_message\_delivery:<br>  Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property).<br>  Default is false | <pre>map(object({<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for AWS resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_config_configuration_recorder_id"></a> [aws\_config\_configuration\_recorder\_id](#output\_aws\_config\_configuration\_recorder\_id) | The ID of the AWS Config Recorder |
| <a name="output_aws_config_iam_role"></a> [aws\_config\_iam\_role](#output\_aws\_config\_iam\_role) | IAM Role used to make read or write requests to the delivery channel and to describe the AWS resources associated with<br>the account. |
| <a name="output_aws_config_sns_topic"></a> [aws\_config\_sns\_topic](#output\_aws\_config\_sns\_topic) | SNS topic |
| <a name="output_aws_config_sns_topic_subscriptions"></a> [aws\_config\_sns\_topic\_subscriptions](#output\_aws\_config\_sns\_topic\_subscriptions) | SNS topic subscriptions |
| <a name="output_aws_inspector_assessment_template"></a> [aws\_inspector\_assessment\_template](#output\_aws\_inspector\_assessment\_template) | The AWS Inspector assessment template |
| <a name="output_guard_duty_detector"></a> [guard\_duty\_detector](#output\_guard\_duty\_detector) | GuardDuty detector |
| <a name="output_guard_duty_sns_topic"></a> [guard\_duty\_sns\_topic](#output\_guard\_duty\_sns\_topic) | SNS topic |
| <a name="output_guard_duty_sns_topic_subscriptions"></a> [guard\_duty\_sns\_topic\_subscriptions](#output\_guard\_duty\_sns\_topic\_subscriptions) | SNS topic subscriptions |
| <a name="output_inspector_assessment_target"></a> [inspector\_assessment\_target](#output\_inspector\_assessment\_target) | The AWS Inspector assessment target |
| <a name="output_inspector_aws_cloudwatch_event_rule"></a> [inspector\_aws\_cloudwatch\_event\_rule](#output\_inspector\_aws\_cloudwatch\_event\_rule) | The AWS Inspector event rule |
| <a name="output_inspector_aws_cloudwatch_event_target"></a> [inspector\_aws\_cloudwatch\_event\_target](#output\_inspector\_aws\_cloudwatch\_event\_target) | The AWS Inspector event target |
| <a name="output_security_hub_enabled_subscriptions"></a> [security\_hub\_enabled\_subscriptions](#output\_security\_hub\_enabled\_subscriptions) | A list of subscriptions that have been enabled |
| <a name="output_security_hub_sns_topic"></a> [security\_hub\_sns\_topic](#output\_security\_hub\_sns\_topic) | The SNS topic that was created |
| <a name="output_security_hub_sns_topic_subscriptions"></a> [security\_hub\_sns\_topic\_subscriptions](#output\_security\_hub\_sns\_topic\_subscriptions) | The SNS topic that was created |
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
