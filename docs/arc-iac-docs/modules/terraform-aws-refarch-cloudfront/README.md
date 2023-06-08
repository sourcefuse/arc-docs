# [terraform-aws-refarch-cloudfront](https://github.com/sourcefuse/terraform-aws-refarch-cloudfront)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-refarch-cloudfront/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-refarch-cloudfront/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing Cloudfront, S3, Route53 and ACM.

## Usage

To see a full example, check out the [main.tf](./example/main.tf) file in the example folder.

``` hcl
module "cloudfront" {
  source = "../"

  bucket_name            = "test-cloudfront-arc"
  namespace              = "test"
  description            = "This is a test Cloudfront distribution"
  route53_root_domain    = "sfrefarch.com" // Used to fetch the Hosted Zone
  create_route53_records = var.create_route53_records
  aliases                = ["cf.sfrefarch.com", "www.cf.sfrefarch.com"]
  enable_logging         = var.enable_logging // Create a new S3 bucket for storing Cloudfront logs

  default_cache_behavior = {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "dummy"
    compress               = false
    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 86400
    max_ttl                = 31536000
  }

  viewer_certificate = {
    cloudfront_default_certificate = false // false :  It will create ACM certificate with details provided in acm_details
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }

  acm_details = {
    domain_name               = "cf.sfrefarch.com",
    subject_alternative_names = ["www.cf.sfrefarch.com"]
  }

  cache_policy = {
    default_ttl = 86400,
    max_ttl     = 31536000,
    min_ttl     = 0,
    cookies_config = {
      cookie_behavior = "none",
      items           = []
    },
    headers_config = {
      header_behavior = "whitelist",
      items           = ["Authorization", "Origin", "Accept", "Access-Control-Request-Method", "Access-Control-Request-Headers", "Referer"]
    },
    query_string_behavior = {
      header_behavior = "none",
      items           = []
    },
    query_strings_config = {
      query_string_behavior = "none",
      items                 = []
    }
  }

  s3_kms_details = {
    kms_key_administrators = [],
    kms_key_users          = ["arn:aws:iam::757583164619:role/sourcefuse-poc-2-admin-role"] // Note :- Add users/roles who wanted to read/write to S3 bucket
  }

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | ./modules/kms | n/a |
| <a name="module_s3_bucket"></a> [s3\_bucket](#module\_s3\_bucket) | git::https://github.com/cloudposse/terraform-aws-s3-bucket | 3.1.2 |
| <a name="module_s3_bucket_logs"></a> [s3\_bucket\_logs](#module\_s3\_bucket\_logs) | git::https://github.com/cloudposse/terraform-aws-s3-bucket | 3.1.2 |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_cloudfront_cache_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy) | resource |
| [aws_cloudfront_distribution.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_control.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control) | resource |
| [aws_cloudfront_origin_request_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_request_policy) | resource |
| [aws_route53_record.root_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_s3_bucket_policy.cdn_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_partition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_details"></a> [acm\_details](#input\_acm\_details) | Details required for creating certificate<br>eg. {<br>		domain\_name               = "test.com",<br>		subject\_alternative\_names = ["www.test.com"]<br>	} | <pre>object({<br>    domain_name               = string,<br>    subject_alternative_names = list(string),<br>  })</pre> | <pre>{<br>  "domain_name": "",<br>  "subject_alternative_names": []<br>}</pre> | no |
| <a name="input_aliases"></a> [aliases](#input\_aliases) | Fully qualified domain name for site being hosted | `list(string)` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Bucket name. If provided, the bucket will be created with this name instead of generating the name from the context | `string` | `null` | no |
| <a name="input_cache_behaviors"></a> [cache\_behaviors](#input\_cache\_behaviors) | Set the cache behaviors for the distribution , Note:-  You cannot use an origin request policy in a cache behavior without a cache policy. | <pre>list(object({<br>    path_pattern    = string<br>    allowed_methods = list(string)<br>    cached_methods  = list(string)<br>    function_association = optional(list(object({ // Specific event to trigger this function. Valid values: viewer-request or viewer-response.<br>      event_type   = string,<br>      function_arn = string<br>    })))<br>    lambda_function_association = optional(list(object({ // A config block that triggers a lambda function with specific actions (maximum 4).<br>      event_type   = string,<br>      lambda_arn   = string,<br>      include_body = bool // When set to true it exposes the request body to the lambda function.<br>    })))<br>    use_aws_managed_cache_policy          = bool,<br>    cache_policy_name                     = string, // It can be custom or aws managed policy name , if custom cache_policies variable key should match<br>    use_aws_managed_origin_request_policy = optional(bool),<br>    origin_request_policy_name            = optional(string), // It can be custom or aws managed policy name , if custom origin_request_policies variable key should match<br>    compress                              = bool,<br>    viewer_protocol_policy                = string<br>  }))</pre> | `[]` | no |
| <a name="input_cache_policies"></a> [cache\_policies](#input\_cache\_policies) | Cache policies,<br>eg. {<br>	"cache-policy-1" = {<br>	default\_ttl = 86400,<br>	max\_ttl     = 31536000,<br>	min\_ttl     = 0,<br>	cookies\_config = {<br>		cookie\_behavior = "none",<br>		items           = []<br>	},<br>	headers\_config = {<br>		header\_behavior = "whitelist",<br>		items           = ["Authorization", "Origin", "Accept", "Access-Control-Request-Method", "Access-Control-Request-Headers", "Referer"]<br>	},<br>	query\_string\_behavior = {<br>		header\_behavior = "none",<br>		items           = []<br>	},<br>	query\_strings\_config = {<br>		query\_string\_behavior = "none",<br>		items                 = []<br>	}<br>} } | <pre>map(object(<br>    {<br>      default_ttl = number,<br>      max_ttl     = number,<br>      min_ttl     = number,<br>      cookies_config = object({<br>        cookie_behavior = string<br>        items           = list(string)<br>      }),<br>      headers_config = object({<br>        header_behavior = string<br>        items           = list(string)<br>      }),<br>      query_strings_config = object({<br>        query_string_behavior = string<br>        items                 = list(string)<br>      })<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_cors_configuration"></a> [cors\_configuration](#input\_cors\_configuration) | Specifies the allowed headers, methods, origins and exposed headers when using CORS on this bucket | <pre>list(object({<br>    allowed_headers = list(string)<br>    allowed_methods = list(string)<br>    allowed_origins = list(string)<br>    expose_headers  = list(string)<br>    max_age_seconds = number<br>  }))</pre> | `null` | no |
| <a name="input_create_route53_records"></a> [create\_route53\_records](#input\_create\_route53\_records) | made optional route53 | `bool` | `false` | no |
| <a name="input_custom_error_responses"></a> [custom\_error\_responses](#input\_custom\_error\_responses) | One or more custom error response elements | <pre>list(object({<br>    error_caching_min_ttl = optional(number),<br>    error_code            = string,<br>    response_code         = optional(string),<br>    response_page_path    = optional(string) // eg:  /custom_404.html<br>  }))</pre> | `[]` | no |
| <a name="input_default_cache_behavior"></a> [default\_cache\_behavior](#input\_default\_cache\_behavior) | Default cache behavior for the distribution | <pre>object({<br>    allowed_methods = list(string)<br>    cached_methods  = list(string)<br>    function_association = optional(list(object({ // A config block that triggers a lambda function with specific actions (maximum 4).<br>      event_type   = string,                      // Specific event to trigger this function. Valid values: viewer-request or viewer-response.<br>      function_arn = string<br>    })))<br>    lambda_function_association = optional(list(object({ // A config block that triggers a lambda function with specific actions (maximum 4).<br>      event_type   = string,<br>      lambda_arn   = string,<br>      include_body = bool // When set to true it exposes the request body to the lambda function.<br>    })))<br>    use_aws_managed_cache_policy          = bool,<br>    cache_policy_name                     = string, // It can be custom or aws managed policy name , if custom cache_policies variable key should match<br>    use_aws_managed_origin_request_policy = optional(bool),<br>    origin_request_policy_name            = optional(string), // It can be custom or aws managed policy name , if custom origin_request_policies variable key should match<br>    compress                              = bool<br>    viewer_protocol_policy                = string<br>  })</pre> | n/a | yes |
| <a name="input_default_root_object"></a> [default\_root\_object](#input\_default\_root\_object) | Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL. | `string` | `"index.html"` | no |
| <a name="input_description"></a> [description](#input\_description) | CloudFron destribution description | `string` | n/a | yes |
| <a name="input_enable_logging"></a> [enable\_logging](#input\_enable\_logging) | Enable logging for Clouffront destribution, this will create new S3 bucket | `bool` | `false` | no |
| <a name="input_geo_restriction"></a> [geo\_restriction](#input\_geo\_restriction) | Geographic restriction | <pre>object({<br>    restriction_type = string,<br>    locations        = list(string)<br>  })</pre> | <pre>{<br>  "locations": [],<br>  "restriction_type": "none"<br>}</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | `null` | no |
| <a name="input_origin_request_policies"></a> [origin\_request\_policies](#input\_origin\_request\_policies) | Origin request policies,<br>		eg. {<br>	"origin-req-policy" = {<br>	cookies\_config = {<br>		cookie\_behavior = "none",<br>		items           = []<br>	},<br>	headers\_config = {<br>		header\_behavior = "whitelist",<br>		items = ["Accept", "Accept-Charset", "Accept-Datetime", "Accept-Language",<br>		"Access-Control-Request-Method", "Access-Control-Request-Headers", "CloudFront-Forwarded-Proto", "CloudFront-Is-Android-Viewer",<br>		"CloudFront-Is-Desktop-Viewer", "CloudFront-Is-IOS-Viewer"]<br>	},<br>	query\_strings\_config = {<br>		query\_string\_behavior = "none",<br>		items                 = []<br>	}<br>} } | <pre>map(object({<br>    cookies_config = object({<br>      cookie_behavior = string<br>      items           = list(string)<br>    }),<br>    headers_config = object({<br>      header_behavior = string<br>      items           = list(string)<br>    }),<br>    query_strings_config = object({<br>      query_string_behavior = string<br>      items                 = list(string)<br>    })<br>  }))</pre> | `{}` | no |
| <a name="input_price_class"></a> [price\_class](#input\_price\_class) | Price class for this distribution. One of PriceClass\_All, PriceClass\_200, PriceClass\_100. | `string` | `"PriceClass_All"` | no |
| <a name="input_route53_record_ttl"></a> [route53\_record\_ttl](#input\_route53\_record\_ttl) | TTL for Route53 record | `string` | `60` | no |
| <a name="input_route53_root_domain"></a> [route53\_root\_domain](#input\_route53\_root\_domain) | Domain to add to route 53 as alias to distribution | `string` | n/a | yes |
| <a name="input_s3_kms_details"></a> [s3\_kms\_details](#input\_s3\_kms\_details) | KMS details for S3 encryption | <pre>object({<br>    s3_bucket_encryption_type = string,                 //Encryption for S3 bucket , options : SSE-S3 - AES256 , SSE-KMS - aws:kms<br>    kms_key_administrators    = optional(list(string)), // "Environment where deploying,List of AWS arns that will have permissions to use kms key"<br>    kms_key_users             = optional(list(string)), // "Environment where deploying,List of AWS arns that will have permissions to use kms key"<br>    kms_key_arn               = optional(string)        // In case if we need to use CMK created else where, set as null if not used<br>  })</pre> | <pre>{<br>  "kms_key_administrators": [],<br>  "kms_key_arn": null,<br>  "kms_key_users": [],<br>  "s3_bucket_encryption_type": "SSE-S3"<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for AWS resources | `map(string)` | `{}` | no |
| <a name="input_viewer_certificate"></a> [viewer\_certificate](#input\_viewer\_certificate) | The SSL configuration for this distribution | <pre>object({<br>    cloudfront_default_certificate = bool,<br>    minimum_protocol_version       = string,<br>    ssl_support_method             = string<br>  })</pre> | <pre>{<br>  "cloudfront_default_certificate": false,<br>  "minimum_protocol_version": "TLSv1.2_2018",<br>  "ssl_support_method": "sni-only"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | Certificate ARN |
| <a name="output_cloudfront_arn"></a> [cloudfront\_arn](#output\_cloudfront\_arn) | CloudFront ARN |
| <a name="output_cloudfront_domain_name"></a> [cloudfront\_domain\_name](#output\_cloudfront\_domain\_name) | CloudFront Domain name |
| <a name="output_cloudfront_hosted_zone_id"></a> [cloudfront\_hosted\_zone\_id](#output\_cloudfront\_hosted\_zone\_id) | CloudFront Hosted zone ID |
| <a name="output_cloudfront_id"></a> [cloudfront\_id](#output\_cloudfront\_id) | CloudFront ID |
| <a name="output_logging_s3_bucket"></a> [logging\_s3\_bucket](#output\_logging\_s3\_bucket) | Logging bucket name |
| <a name="output_origin_s3_bucket"></a> [origin\_s3\_bucket](#output\_origin\_s3\_bucket) | Origin bucket name |
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
### Tests

- Tests are available in `test` directory
- Configure the dependencies

```sh
cd test
go mod init github.com/sourcefuse/terraform-aws-refarch-cloudfront
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
