# [terraform-aws-refarch-healthcheck](https://github.com/sourcefuse/terraform-aws-refarch-healthcheck)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-refarch-healthcheck/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-refarch-healthcheck/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for Endpoint health check using Route53
## Usage

To see a full example, check out the [main.tf](./example/main.tf) file in the example folder.

``` hcl

module "tags" {
  source  = "sourcefuse/arc-tags/aws"
  version = "1.2.3"

  environment = "dev"
  project     = "test"

  extra_tags = {
    RepoName = "terraform-aws-refarch-healthcheck"
  }
}

module "health_check" {
  source            = "../"
  name              = "test-health-check"
  domain_name       = "microservices.io"
  resource_path     = "/patterns/observability/health-check-api.html"
  type              = "HTTPS_STR_MATCH"
  measure_latency   = true
  alarm_prefix      = "test"
  failure_threshold = 2
  request_interval  = 10
  search_string     = "Pattern: Health Check API"
  alarm_endpoint    = "https://api.opsgenie.com/v1/json/cloudwatch?apiKey=75f8c6f7-5655-4a1c-b826-cef87e52e5c9"

  tags = module.tags.tags

}



```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0, < 2.0.0 |
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
| [aws_cloudwatch_metric_alarm.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
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
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name or ip address of checking service. | `string` | n/a | yes |
| <a name="input_evaluation_periods"></a> [evaluation\_periods](#input\_evaluation\_periods) | The number of periods over which data is compared to the specified threshold. | `number` | `2` | no |
| <a name="input_failure_threshold"></a> [failure\_threshold](#input\_failure\_threshold) | The number of consecutive health checks that an endpoint must pass or fail. | `number` | n/a | yes |
| <a name="input_kms_id"></a> [kms\_id](#input\_kms\_id) | KMS id to encrpyt SNS, note : AWS managed keys doesn't work | `string` | `null` | no |
| <a name="input_measure_latency"></a> [measure\_latency](#input\_measure\_latency) | Indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console. | `string` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Health check name | `string` | n/a | yes |
| <a name="input_period"></a> [period](#input\_period) | The period in seconds over which the specified statistic is applied. Valid values are 10, 30, or any multiple of 60 | `number` | `10` | no |
| <a name="input_port"></a> [port](#input\_port) | Port number of checking service. | `number` | `443` | no |
| <a name="input_request_interval"></a> [request\_interval](#input\_request\_interval) | The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request. | `number` | n/a | yes |
| <a name="input_resource_path"></a> [resource\_path](#input\_resource\_path) | Resource path eg. /health | `string` | `""` | no |
| <a name="input_search_string"></a> [search\_string](#input\_search\_string) | String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with HTTP\_STR\_MATCH and HTTPS\_STR\_MATCH | `string` | `null` | no |
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

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)

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
cd test
go mod init github.com/sourcefuse/terraform-aws-refarch-healthcheck
go get github.com/gruntwork-io/terratest/modules/terraform
```

- Now execute the test

```sh
cd test/
go test
```
## Authors

This project is authored by:

- SourceFuse ARC Team
