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
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_budgets"></a> [budgets](#module\_budgets) | cloudposse/budgets/aws | 0.3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_alerts_sns_subscribers"></a> [billing\_alerts\_sns\_subscribers](#input\_billing\_alerts\_sns\_subscribers) | A map of subscription configurations for SNS topics<br><br>For more information, see:<br>https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference<br><br>protocol:<br>  The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially<br>  supported, see link) (email is an option but is unsupported in terraform, see link).<br>endpoint:<br>  The endpoint to send data to, the contents will vary with the protocol. (see link for more information)<br>endpoint\_auto\_confirms:<br>  Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty. Default is<br>  false<br>raw\_message\_delivery:<br>  Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property).<br>  Default is false | <pre>map(object({<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>  }))</pre> | `null` | no |
| <a name="input_budgets"></a> [budgets](#input\_budgets) | A list of Budgets to create. | `any` | `[]` | no |
| <a name="input_budgets_kms_master_key"></a> [budgets\_kms\_master\_key](#input\_budgets\_kms\_master\_key) | KMS CMK to be used for encryption | `string` | `null` | no |
| <a name="input_encryption_enabled"></a> [encryption\_enabled](#input\_encryption\_enabled) | Whether or not to use encryption. If set to `true` and no custom value for KMS key (kms\_master\_key\_id) is provided, a KMS key is created. | `bool` | `true` | no |
| <a name="input_notifications_enabled"></a> [notifications\_enabled](#input\_notifications\_enabled) | Whether or not to setup Slack notifications. Set to `true` to create an SNS topic and Lambda function to send alerts to Slack. | `bool` | `false` | no |
| <a name="input_slack_channel"></a> [slack\_channel](#input\_slack\_channel) | The name of the channel in Slack for notifications. Only used when `notifications_enabled` is `true` | `string` | `""` | no |
| <a name="input_slack_username"></a> [slack\_username](#input\_slack\_username) | The username that will appear on Slack messages. Only used when `notifications_enabled` is `true` | `string` | `""` | no |
| <a name="input_slack_webhook_url"></a> [slack\_webhook\_url](#input\_slack\_webhook\_url) | The URL of Slack webhook. Only used when `notifications_enabled` is `true` | `string` | `""` | no |

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
| <a name="output_sns_topic_arn"></a> [sns\_topic\_arn](#output\_sns\_topic\_arn) | ARN of the SNS topic created for alerts |
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
