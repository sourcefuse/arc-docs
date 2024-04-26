# [terraform-aws-arc-billing](https://github.com/sourcefuse/terraform-aws-arc-billing)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-billing)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-billing)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-billing/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-billing/actions/workflows/snyk.yaml)

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module streamlines budget management and billing alarms in AWS environments. With predefined budgets and real-time Slack and email alerts, organizations stay on top of spending trends and prevent cost overruns. This proactive approach optimizes resource usage and ensures financial transparency across cloud deployments.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.
- IAM billing role

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:



```plaintext
billing/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "example_budgets" {
  source      = "sourcefuse/arc-billing/aws"
  version     = "0.0.1"

  namespace   = var.namespace
  environment = var.environment

  budgets = var.budgets

  notifications_enabled = var.notifications_enabled
  encryption_enabled    = var.encryption_enabled

  slack_webhook_url = var.slack_webhook_url
  slack_channel     = var.slack_channel
  slack_username    = var.slack_username

  billing_alerts_sns_subscribers = var.billing_alerts_sns_subscribers
}

```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "sns_topic_name" {
  value       = module.budgets.sns_topic_name
}

output "lambda_function_arn" {
  value       = module.budgets.lambda_function_arn
}
```

5. **.tfvars**

Inside the `.tfvars` file of the module, you can provide desired values that can be referenced in the main configuration. For example:

Edit the [dev.tfvars](./example/dev.tfvars) file and provide desired values.  
The `budgets` variable is used to define list billing budgets to be managed by terraform  
This module sends notifications to both slack and email.  
Use the `billing_notification_emails`, to pass emails that will receive the billing alarms  

```hcl
region      = "us-east-1"
namespace   = "arc"
environment = "dev"

budgets = [
  {
    name            = "ec2-monthly-budget-50"
    budget_type     = "COST"
    limit_amount    = "50"
    limit_unit      = "USD"
    time_period_end = "2025-06-15_00:00"
    time_unit       = "MONTHLY"

    cost_filter = {
      Service = ["Amazon Elastic Compute Cloud - Compute"]
    }

    cost_types = {
      include_discount           = true
      include_other_subscription = true
      include_recurring          = true
      include_subscription       = true
      include_tax                = true
      include_upfront            = true
      include_support            = true
      include_refund             = false
      include_credit             = false
      use_blended                = false
    }

    notification = {
      comparison_operator        = "GREATER_THAN"
      threshold                  = "100"
      threshold_type             = "PERCENTAGE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = ["example@example-email.com"]
    }
  },
  {
    name         = "total-monthly-100"
    budget_type  = "COST"
    limit_amount = "100"
    limit_unit   = "USD"
    time_unit    = "MONTHLY"

    notification = {
      comparison_operator        = "GREATER_THAN"
      threshold                  = "100"
      threshold_type             = "PERCENTAGE"
      notification_type          = "ACTUAL"
      subscriber_email_addresses = ["example@example-email.com"]
    }
  }
]

encryption_enabled    = true
notifications_enabled = true
slack_webhook_url     = null
slack_channel         = null
slack_username        = null

billing_alerts_sns_subscribers = {
  "opsgenie" = {
    protocol               = "https"
    endpoint               = "https://api.opsgenie.com/v1/json/amazonsns?apiKey=xxxx-xxx-xx-xxx-xxxxxx"
    endpoint_auto_confirms = true
    raw_message_delivery   = false
  }
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
terraform plan -var-file dev.tfvars
```

Apply Terraform
```shell
terraform apply -var-file dev.tfvars
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

***Note:***  
&emsp;&emsp;***The emails will need to confirm subscription to SNS, in order to continue to receive billing alarms.***  
&emsp;&emsp;***An email will be sent from AWS to the emails***  
&emsp;&emsp;***The services mentioned in cost_filter have to be accurate; otherwise, budgeted data doesn’t get generated.***
```shell
  cost_filter = {
      Service = ["Amazon Elastic Compute Cloud - Compute"]
    }
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.46.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_budgets"></a> [budgets](#module\_budgets) | cloudposse/budgets/aws | 0.4.0 |
| <a name="module_this"></a> [this](#module\_this) | cloudposse/label/null | 0.25.0 |

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional key-value pairs to add to each map in `tags_as_list_of_maps`. Not added to `tags` or `id`.<br>This is for some rare cases where resources want additional configuration of tags<br>and therefore take a list of maps with tag key, value, and additional configuration. | `map(string)` | `{}` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | ID element. Additional attributes (e.g. `workers` or `cluster`) to add to `id`,<br>in the order they appear in the list. New attributes are appended to the<br>end of the list. The elements of the list are joined by the `delimiter`<br>and treated as a single ID element. | `list(string)` | `[]` | no |
| <a name="input_billing_alerts_sns_subscribers"></a> [billing\_alerts\_sns\_subscribers](#input\_billing\_alerts\_sns\_subscribers) | A map of subscription configurations for SNS topics<br><br>For more information, see:<br>https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference<br><br>protocol:<br>  The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially<br>  supported, see link) (email is an option but is unsupported in terraform, see link).<br>endpoint:<br>  The endpoint to send data to, the contents will vary with the protocol. (see link for more information)<br>endpoint\_auto\_confirms:<br>  Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty. Default is<br>  false<br>raw\_message\_delivery:<br>  Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property).<br>  Default is false | <pre>map(object({<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>  }))</pre> | `null` | no |
| <a name="input_budgets"></a> [budgets](#input\_budgets) | A list of Budgets to create. | `any` | `[]` | no |
| <a name="input_budgets_kms_master_key"></a> [budgets\_kms\_master\_key](#input\_budgets\_kms\_master\_key) | KMS CMK to be used for encryption | `string` | `null` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": null,<br>  "descriptor_formats": {},<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "labels_as_tags": [],<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {},<br>  "tenant": null<br>}</pre> | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between ID elements.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_descriptor_formats"></a> [descriptor\_formats](#input\_descriptor\_formats) | Describe additional descriptors to be output in the `descriptors` output map.<br>Map of maps. Keys are names of descriptors. Values are maps of the form<br>`{<br>   format = string<br>   labels = list(string)<br>}`<br>(Type is `any` so the map values can later be enhanced to provide additional options.)<br>`format` is a Terraform format string to be passed to the `format()` function.<br>`labels` is a list of labels, in order, to pass to `format()` function.<br>Label values will be normalized before being passed to `format()` so they will be<br>identical to how they appear in `id`.<br>Default is `{}` (`descriptors` output will be empty). | `any` | `{}` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_encryption_enabled"></a> [encryption\_enabled](#input\_encryption\_enabled) | Whether or not to use encryption. If set to `true` and no custom value for KMS key (kms\_master\_key\_id) is provided, a KMS key is created. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for keep the existing setting, which defaults to `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | Controls the letter case of the `tags` keys (label names) for tags generated by this module.<br>Does not affect keys of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The order in which the labels (ID elements) appear in the `id`.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 6 labels ("tenant" is the 6th), but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | Controls the letter case of ID elements (labels) as included in `id`,<br>set as tag values, and output by this module individually.<br>Does not affect values of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Set this to `title` and set `delimiter` to `""` to yield Pascal Case IDs.<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_labels_as_tags"></a> [labels\_as\_tags](#input\_labels\_as\_tags) | Set of labels (ID elements) to include as tags in the `tags` output.<br>Default is to include all labels.<br>Tags with empty values will not be included in the `tags` output.<br>Set to `[]` to suppress all generated tags.<br>**Notes:**<br>  The value of the `name` tag, if included, will be the `id`, not the `name`.<br>  Unlike other `null-label` inputs, the initial setting of `labels_as_tags` cannot be<br>  changed in later chained modules. Attempts to change it will be silently ignored. | `set(string)` | <pre>[<br>  "default"<br>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.<br>This is the only ID element not also included as a `tag`.<br>The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input. | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique | `string` | `null` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Terraform regular expression (regex) string.<br>Characters matching the regex will be removed from the ID elements.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_slack_channel"></a> [slack\_channel](#input\_slack\_channel) | The name of the channel in Slack for notifications. Only used when `notifications_enabled` is `true` | `string` | `""` | no |
| <a name="input_slack_notifications_enabled"></a> [slack\_notifications\_enabled](#input\_slack\_notifications\_enabled) | Whether or not to setup Slack notifications. Set to `true` to create an SNS topic and Lambda function to send alerts to Slack. | `bool` | `false` | no |
| <a name="input_slack_username"></a> [slack\_username](#input\_slack\_username) | The username that will appear on Slack messages. Only used when `notifications_enabled` is `true` | `string` | `""` | no |
| <a name="input_slack_webhook_url"></a> [slack\_webhook\_url](#input\_slack\_webhook\_url) | The URL of Slack webhook. Only used when `notifications_enabled` is `true` | `string` | `""` | no |
| <a name="input_sns_topic_arn"></a> [sns\_topic\_arn](#input\_sns\_topic\_arn) | SNS topic arn, if slack notificaiton is disabled | `string` | `null` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`).<br>Neither the tag keys nor the tag values will be modified by this module. | `map(string)` | `{}` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | ID element \_(Rarely used, not included by default)\_. A customer identifier, indicating who this instance of a resource is for | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_budgets"></a> [budgets](#output\_budgets) | List of Budgets that are being managed by this module |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | ARN of the KMS CMK that was created specifically for budget notifications |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | ID of the KMS CMK that is used for SNS alerts |
| <a name="output_lambda_cloudwatch_log_group_arn"></a> [lambda\_cloudwatch\_log\_group\_arn](#output\_lambda\_cloudwatch\_log\_group\_arn) | The ARN of the Log Group used by the Slack Notify Lambda |
| <a name="output_lambda_function_arn"></a> [lambda\_function\_arn](#output\_lambda\_function\_arn) | The ARN of the Lambda function |
| <a name="output_lambda_function_invoke_arn"></a> [lambda\_function\_invoke\_arn](#output\_lambda\_function\_invoke\_arn) | The ARN to be used for invoking lambda function from API Gateway |
| <a name="output_lambda_function_name"></a> [lambda\_function\_name](#output\_lambda\_function\_name) | The name of the Lambda function |
| <a name="output_lambda_iam_role_arn"></a> [lambda\_iam\_role\_arn](#output\_lambda\_iam\_role\_arn) | The ARN of the IAM role used by Lambda function |
| <a name="output_sns_topic_arn"></a> [sns\_topic\_arn](#output\_sns\_topic\_arn) | ARN of the SNS topic created/used for alerts |
| <a name="output_sns_topic_name"></a> [sns\_topic\_name](#output\_sns\_topic\_name) | The name of the SNS topic created for notifications |
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
