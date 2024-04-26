# [terraform-aws-arc-waf](https://github.com/sourcefuse/terraform-aws-arc-waf)

<a href="https://github.com/sourcefuse/terraform-aws-arc-waf/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-waf.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-waf/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-waf.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-waf)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-waf)

[![Test](https://github.com/sourcefuse/terraform-aws-refarch-waf/actions/workflows/test.yml/badge.svg)](https://github.com/sourcefuse/terraform-aws-refarch-waf/actions/workflows/test.yml)

## Overview

SourceFuse's AWS Reference Architecture Terraform module for AWS WAF (Web Application Firewall) simplifies the setup and management of web access controls. Leveraging the hashicorp/aws Terraform provider, this module allows users to define and deploy WAF configurations, including web ACLs and IP sets, with ease. The module supports customizable rules, default actions, and visibility configurations, empowering users to tailor WAF policies based on their specific security requirements. By associating web ACLs with designated resources through the aws_wafv2_web_acl_association resource, the module ensures seamless integration and protection for web applications against various threats. With support for tags and dependency management, this WAF module provides a robust foundation for enhancing the security posture of AWS-hosted web applications.

For more information about this repository and its usage, please see [Terraform AWS ARC WAF Module Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-waf/blob/main/docs/module-usage-guide/README.md).


## Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-waf/blob/main/example/main.tf) file in the example folder.  

```hcl
module "waf" {
  source  = "sourcefuse/arc-waf/aws"
  version = "1.0.2"

  ## web acl
  create_web_acl         = true
  web_acl_name           = "${var.namespace}-${var.environment}-waf-web-acl"
  web_acl_description    = "Terraform managed Web ACL Configuration"
  web_acl_scope          = "REGIONAL"
  web_acl_default_action = "block"
  web_acl_visibility_config = {
    metric_name = "${var.namespace}-${var.environment}-waf-web-acl"
  }
  web_acl_rules = var.web_acl_rules

  ## ip set
  ip_set = [
    {
      name               = "example-ip-set"
      description        = "Example description"
      scope              = "REGIONAL"
      ip_address_version = "IPV4"
      addresses          = []
    }
  ]

  tags = module.tags.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_wafv2_ip_set.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_ip_set) | resource |
| [aws_wafv2_web_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl) | resource |
| [aws_wafv2_web_acl_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_association_resource_arns"></a> [association\_resource\_arns](#input\_association\_resource\_arns) | The Amazon Resource Name (ARN) of the resource to associate with the web ACL.<br>This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage, or an Amazon Cognito User Pool. | `list(string)` | `[]` | no |
| <a name="input_create_web_acl"></a> [create\_web\_acl](#input\_create\_web\_acl) | A Boolean indicates whether to create WAF Web ACL or not | `bool` | `true` | no |
| <a name="input_ip_set"></a> [ip\_set](#input\_ip\_set) | Configuration for WAFv2 IP Set.<br>  * name: A friendly name of the IP set.<br>  * description: A friendly description of the IP set. Default is "Terraform managed IP Set configuration."<br>  * scope: Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. Default is "REGIONAL."<br>  * ip\_address\_version: Specify IPV4 or IPV6. Valid values are IPV4 or IPV6. Default is "IPV4."<br>  * addresses: Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for /0. | <pre>list(object({<br>    name               = string<br>    description        = optional(string, "Terraform managed IP Set configuration")<br>    scope              = optional(string, "REGIONAL")<br>    ip_address_version = optional(string, "IPV4")<br>    addresses          = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. | `map(string)` | `{}` | no |
| <a name="input_web_acl_custom_response_body"></a> [web\_acl\_custom\_response\_body](#input\_web\_acl\_custom\_response\_body) | Defines custom response bodies that can be referenced by custom\_response actions | <pre>list(object({<br>    key          = string<br>    content      = string<br>    content_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_web_acl_default_action"></a> [web\_acl\_default\_action](#input\_web\_acl\_default\_action) | Action to perform if none of the rules contained in the WebACL match. Options are `allow` or `block` | `string` | n/a | yes |
| <a name="input_web_acl_description"></a> [web\_acl\_description](#input\_web\_acl\_description) | Description of the WebACL | `string` | `"Terraform managed Web ACL Configuration"` | no |
| <a name="input_web_acl_name"></a> [web\_acl\_name](#input\_web\_acl\_name) | Name of the WAFv2 Web ACL | `string` | n/a | yes |
| <a name="input_web_acl_rules"></a> [web\_acl\_rules](#input\_web\_acl\_rules) | Rule blocks used to identify the web requests that you want to allow, block, or count | `any` | `[]` | no |
| <a name="input_web_acl_scope"></a> [web\_acl\_scope](#input\_web\_acl\_scope) | Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL | `string` | `"REGIONAL"` | no |
| <a name="input_web_acl_visibility_config"></a> [web\_acl\_visibility\_config](#input\_web\_acl\_visibility\_config) | Defines and enables Amazon CloudWatch metrics and web request sample collection | <pre>object({<br>    cloudwatch_metrics_enabled = optional(bool, true)<br>    metric_name                = string<br>    sampled_requests_enabled   = optional(bool, true)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the WAF WebACL. |
| <a name="output_capacity"></a> [capacity](#output\_capacity) | Web ACL capacity units (WCUs) currently being used by this web ACL. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the WAF WebACL. |
| <a name="output_ip_set_arn"></a> [ip\_set\_arn](#output\_ip\_set\_arn) | The IP Set ARN |
| <a name="output_tags_all"></a> [tags\_all](#output\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
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
- SourceFuse ARC Team
