![Module Structure](./static/banner.png)

# [terraform-aws-refarch-healthcheck](https://github.com/sourcefuse/terraform-aws-refarch-healthcheck)

<a href="https://github.com/sourcefuse/terraform-aws-refarch-healthcheck/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-refarch-healthcheck.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-refarch-healthcheck/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-refarch-healthcheck.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-healthcheck)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-healthcheck)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-refarch-healthcheck/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-refarch-healthcheck/actions/workflows/snyk.yaml)

## Introduction

The SourceFuse AWS Reference Architecture (ARC) Terraform module facilitates endpoint health checks using Route53, enabling automated monitoring and management of endpoint health within AWS infrastructures for enhanced reliability and availability.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.


## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:


```plaintext
healthcheck/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```

2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

``` hcl

module "health_check" {
 source  = "sourcefuse/arc-healthcheck/aws"
  version = "0.0.3"

  name              = var.name
  domain_name       = var.domain_name
  resource_path     = var.resource_path
  type              = var.type
  measure_latency   = var.measure_latency
  alarm_prefix      = var.alarm_prefix
  failure_threshold = var.failure_threshold
  request_interval  = var.request_interval
  search_string     = var.search_string
  alarm_endpoint    = var.alarm_endpoint

}

```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl

output "cloudwatch_alarm_arn" {
  value       = aws_cloudwatch_metric_alarm.this.arn
}

output "route53_health_check_arn" {
  value       = aws_route53_health_check.this.arn
}

```

5. **.tfvars**

Inside the `.tfvars` file of the module, you can provide desired values that can be referenced in the main configuration. For example:

Edit the [dev.tfvars](./example/dev.tfvars) file and provide desired values.  

```hcl
region      = "us-east-1"
namespace   = "arc"
environment = "dev"

name              = "test-health-check"
domain_name       = "microservices.io"
resource_path     = "/patterns/observability/health-check-api.html"
type              = "HTTPS_STR_MATCH"
measure_latency   = true
alarm_prefix      = "test"
failure_threshold = 2
request_interval  = 10
search_string     = "Health"  // Note:- string with space(eg. "Health API") is not working , it always goes to in-alarm state
alarm_endpoint    = "https://api.opsgenie.com/v1/json/cloudwatch?apiKey=xxxxx-xx-4xxc9c-xx-xxxx"


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

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.alarm_breaching](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.ok](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_route53_health_check.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_health_check) | resource |
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_description"></a> [alarm\_description](#input\_alarm\_description) | Alarm description | `string` | `null` | no |
| <a name="input_alarm_endpoint"></a> [alarm\_endpoint](#input\_alarm\_endpoint) | Alarm endpoint, this get added as a subcription to SNS | `string` | `""` | no |
| <a name="input_alarm_endpoint_protocol"></a> [alarm\_endpoint\_protocol](#input\_alarm\_endpoint\_protocol) | Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported. See details below. | `string` | `"https"` | no |
| <a name="input_alarm_prefix"></a> [alarm\_prefix](#input\_alarm\_prefix) | Prefix for Alarm | `string` | n/a | yes |
| <a name="input_comparison_operator"></a> [comparison\_operator](#input\_comparison\_operator) | Specifies the arithmetic operation to use when comparing the specified statistic and threshold. The value should indicate the condition under which the alarm is triggered, such as 'GreaterThanThreshold', 'LessThanThreshold', 'GreaterThanOrEqualToThreshold', or 'LessThanOrEqualToThreshold'. | `string` | `"LessThanOrEqualToThreshold"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name or ip address of checking service. | `string` | n/a | yes |
| <a name="input_enable_alarm"></a> [enable\_alarm](#input\_enable\_alarm) | Flag to enable or disable the CloudWatch metric alarm. | `bool` | `false` | no |
| <a name="input_evaluation_periods"></a> [evaluation\_periods](#input\_evaluation\_periods) | The number of periods over which data is compared to the specified threshold. | `number` | `2` | no |
| <a name="input_failure_threshold"></a> [failure\_threshold](#input\_failure\_threshold) | The number of consecutive health checks that an endpoint must pass or fail. | `number` | n/a | yes |
| <a name="input_invert_healthcheck"></a> [invert\_healthcheck](#input\_invert\_healthcheck) | A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy. | `bool` | `false` | no |
| <a name="input_kms_id"></a> [kms\_id](#input\_kms\_id) | KMS id to encrpyt SNS, note : AWS managed keys doesn't work | `string` | `null` | no |
| <a name="input_measure_latency"></a> [measure\_latency](#input\_measure\_latency) | Indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console. | `string` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Health check name | `string` | n/a | yes |
| <a name="input_ok_alarm_description"></a> [ok\_alarm\_description](#input\_ok\_alarm\_description) | OK Alarm description | `string` | `null` | no |
| <a name="input_period"></a> [period](#input\_period) | The period in seconds over which the specified statistic is applied. Valid values are 10, 30, or any multiple of 60 | `number` | `10` | no |
| <a name="input_port"></a> [port](#input\_port) | Port number of checking service. | `number` | `443` | no |
| <a name="input_regions"></a> [regions](#input\_regions) | A list of AWS regions that you want Amazon Route 53 health checkers to check the specified endpoint from. | `list(string)` | <pre>[<br>  "us-east-1",<br>  "us-west-2",<br>  "us-west-1"<br>]</pre> | no |
| <a name="input_request_interval"></a> [request\_interval](#input\_request\_interval) | The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request. | `number` | n/a | yes |
| <a name="input_resource_path"></a> [resource\_path](#input\_resource\_path) | Resource path eg. /health | `string` | `""` | no |
| <a name="input_routing_control_arn"></a> [routing\_control\_arn](#input\_routing\_control\_arn) | The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is RECOVERY\_CONTROL | `string` | `""` | no |
| <a name="input_search_string"></a> [search\_string](#input\_search\_string) | String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with HTTP\_STR\_MATCH and HTTPS\_STR\_MATCH | `string` | `null` | no |
| <a name="input_statistic"></a> [statistic](#input\_statistic) | Specifies the metric statistic to use for the alarm. Common options include 'Average', 'Sum', 'SampleCount', 'Minimum', and 'Maximum'. This determines how the metric data points are aggregated over the specified period. | `string` | `"Average"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags object. | `map(string)` | `{}` | no |
| <a name="input_threshold"></a> [threshold](#input\_threshold) | The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models. | `number` | `1` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of health check. eg. HTTPS\_STR\_MATCH, HTTPS, HTTP | `string` | `"HTTPS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_alarm_arn"></a> [cloudwatch\_alarm\_arn](#output\_cloudwatch\_alarm\_arn) | Cloudwatch Alarm ARN |
| <a name="output_route53_health_check_arn"></a> [route53\_health\_check\_arn](#output\_route53\_health\_check\_arn) | Route53 Health check ARN |
| <a name="output_sns_arn"></a> [sns\_arn](#output\_sns\_arn) | SNS ARN |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Versioning  

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)

### Configurations

- Configure pre-commit hooks
```shell
pre-commit install
```

- Configure the dependencies
```sh
cd test
go mod init github.com/sourcefuse/terraform-aws-refarch-healthcheck
go get github.com/gruntwork-io/terratest/modules/terraform
```
- Execute pre-commit
```shell
pre-commit run -a
```
## Authors

This project is authored by:
- SourceFuse
