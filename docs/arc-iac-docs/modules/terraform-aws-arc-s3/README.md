![Module Structure](./static/s3.png)

# [terraform-aws-arc-s3](https://github.com/sourcefuse/terraform-aws-arc-s3)

<a href="https://github.com/sourcefuse/terraform-aws-arc-s3/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-s3.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-s3/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-s3.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-s3&token=3c75a1b94d1b6ab3f1b98785e484d5ede197851e)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-s3)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-s3/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-s3/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing the s3 module.

## Features
- Manages S3 Buckets: Handles the creation, deletion, and maintenance of Amazon S3 (Simple Storage Service) buckets, which are containers for storing data in the cloud.

- Supports Lifecycle Rules: Enables the setup and management of lifecycle rules that automate the transition of data between different storage classes and the deletion of objects after a specified period.

- Configurable Bucket Policies and Access Controls: Allows for the configuration of bucket policies and access control lists (ACLs) to define permissions and manage access to the data stored in S3 buckets, ensuring data security and compliance.

- Supports CORS and Website Configurations: Provides support for Cross-Origin Resource Sharing (CORS) configurations to manage cross-origin requests to the bucket's resources, and allows for configuring the bucket to host static websites, including setting index and error documents.

- Cross-Region Replication: Facilitates the automatic, asynchronous copying of objects across different AWS regions to enhance data availability, disaster recovery, and data compliance requirements.

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module for managing Amazon S3 buckets using Terraform. It simplifies the creation, configuration, and management of S3 buckets by providing a set of predefined settings and options. The module supports advanced features such as bucket policies, access control lists (ACLs), lifecycle rules, and versioning. It also includes support for configuring Cross-Origin Resource Sharing (CORS) and cross-region replication for enhanced data availability and resilience. By leveraging this module, users can ensure consistent, secure, and efficient management of their S3 resources within an infrastructure-as-code (IaC) framework.

## Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-s3/blob/feature/fix-docs/examples/simple/main.tf) file in the example folder.  

```hcl
module "s3" {
  source      = "sourcefuse/arc-s3/aws"
  version     = "0.0.1"

  name             = var.name
  acl              = var.acl
  lifecycle_config = local.lifecycle_config
  tags             = module.tags.tags
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket"></a> [bucket](#module\_bucket) | ./modules/bucket | n/a |
| <a name="module_replication"></a> [replication](#module\_replication) | ./modules/replication | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | Please node ACL is deprecated by AWS in favor of bucket policies.<br>Defaults to "private" for backwards compatibility,recommended to set `s3_object_ownership` to "BucketOwnerEnforced" instead. | `string` | `"private"` | no |
| <a name="input_availability_zone_id"></a> [availability\_zone\_id](#input\_availability\_zone\_id) | The ID of the availability zone. | `string` | `""` | no |
| <a name="input_bucket_logging_data"></a> [bucket\_logging\_data](#input\_bucket\_logging\_data) | (optional) Bucket logging data | <pre>object({<br>    enable        = optional(bool, false)<br>    target_bucket = optional(string, null)<br>    target_prefix = optional(string, null)<br>  })</pre> | <pre>{<br>  "enable": false,<br>  "target_bucket": null,<br>  "target_prefix": null<br>}</pre> | no |
| <a name="input_bucket_policy_doc"></a> [bucket\_policy\_doc](#input\_bucket\_policy\_doc) | (optional) S3 bucket Policy doc | `string` | `null` | no |
| <a name="input_cors_configuration"></a> [cors\_configuration](#input\_cors\_configuration) | List of S3 bucket CORS configurations | <pre>list(object({<br>    id              = optional(string)<br>    allowed_headers = optional(list(string))<br>    allowed_methods = optional(list(string))<br>    allowed_origins = optional(list(string))<br>    expose_headers  = optional(list(string))<br>    max_age_seconds = optional(number)<br>  }))</pre> | `[]` | no |
| <a name="input_create_bucket"></a> [create\_bucket](#input\_create\_bucket) | (optional) Whether to create bucket | `bool` | `true` | no |
| <a name="input_create_s3_directory_bucket"></a> [create\_s3\_directory\_bucket](#input\_create\_s3\_directory\_bucket) | Control the creation of the S3 directory bucket. Set to true to create the bucket, false to skip. | `bool` | `false` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | Whether to enable versioning for the bucket | `bool` | `true` | no |
| <a name="input_event_notification_details"></a> [event\_notification\_details](#input\_event\_notification\_details) | (optional) S3 event notification details | <pre>object({<br>    enabled = bool<br>    lambda_list = optional(list(object({<br>      lambda_function_arn = string<br>      events              = optional(list(string), ["s3:ObjectCreated:*"])<br>      filter_prefix       = string<br>      filter_suffix       = string<br>    })), [])<br><br>    queue_list = optional(list(object({<br>      queue_arn = string<br>      events    = optional(list(string), ["s3:ObjectCreated:*"])<br>    })), [])<br><br>    topic_list = optional(list(object({<br>      topic_arn = string<br>      events    = optional(list(string), ["s3:ObjectCreated:*"])<br>    })), [])<br><br>  })</pre> | <pre>{<br>  "enabled": false<br>}</pre> | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | (Optional, Default:false) Boolean that indicates all objects (including any locked objects) should be deleted from the bucket when the bucket is destroyed so that the bucket can be destroyed without error. These objects are not recoverable. This only deletes objects when the bucket is destroyed, not when setting this parameter to true. Once this parameter is set to true, there must be a successful terraform apply run before a destroy is required to update this value in the resource state. Without a successful terraform apply after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful terraform apply is required to set this value in state before it will take effect on a destroy operation. | `bool` | `false` | no |
| <a name="input_lifecycle_config"></a> [lifecycle\_config](#input\_lifecycle\_config) | (optional) S3 Lifecycle configuration | <pre>object({<br>    enabled = bool<br><br>    expected_bucket_owner = optional(string, null)<br><br>    rules = list(object({<br>      id = string<br><br>      expiration = optional(object({<br>        date                         = optional(string, null)<br>        days                         = optional(string, null)<br>        expired_object_delete_marker = optional(bool, false)<br>      }), null)<br>      transition = optional(object({<br>        date          = string<br>        days          = number<br>        storage_class = string<br>      }), null)<br>      noncurrent_version_expiration = optional(object({<br>        newer_noncurrent_versions = number<br>        noncurrent_days           = number<br>      }), null)<br>      noncurrent_version_transition = optional(object({<br>        newer_noncurrent_versions = number<br>        noncurrent_days           = number<br>        storage_class             = string<br>      }), null)<br><br>      filter = optional(object({<br>        object_size_greater_than = string<br>        object_size_less_than    = string<br>        prefix                   = string<br>        tags                     = map(string)<br>      }), null)<br><br><br>    }))<br><br>  })</pre> | <pre>{<br>  "enabled": false,<br>  "rules": []<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Bucket name. If provided, the bucket will be created with this name instead of generating the name from the context | `string` | n/a | yes |
| <a name="input_object_lock_config"></a> [object\_lock\_config](#input\_object\_lock\_config) | (optional) Object Lock configuration | <pre>object({<br>    mode = optional(string, "COMPLIANCE")<br>    days = optional(number, 30)<br>  })</pre> | <pre>{<br>  "days": 30,<br>  "mode": "COMPLIANCE"<br>}</pre> | no |
| <a name="input_object_lock_enabled"></a> [object\_lock\_enabled](#input\_object\_lock\_enabled) | (Optional, Forces new resource) Indicates whether this bucket has an Object Lock configuration enabled. Valid values are true or false. This argument is not supported in all regions or partitions. | `string` | `false` | no |
| <a name="input_object_ownership"></a> [object\_ownership](#input\_object\_ownership) | (Optional) Object ownership. Valid values: BucketOwnerPreferred, ObjectWriter or BucketOwnerEnforced<br> BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the bucket-owner-full-control canned ACL.<br> ObjectWriter - Uploading account will own the object if the object is uploaded with the bucket-owner-full-control canned ACL.<br> BucketOwnerEnforced - Bucket owner automatically owns and has full control over every object in the bucket. ACLs no longer affect permissions to data in the S3 bucket. | `string` | `"BucketOwnerPreferred"` | no |
| <a name="input_public_access_config"></a> [public\_access\_config](#input\_public\_access\_config) | (Optional)<br>block\_public\_acls - Whether Amazon S3 should block public ACLs for this bucket. Defaults to false. Enabling this setting does not affect existing policies or ACLs. When set to true causes the following behavior:<br>  PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access.<br>  PUT Object calls will fail if the request includes an object ACL.<br>block\_public\_policy - Whether Amazon S3 should block public bucket policies for this bucket. Defaults to false. Enabling this setting does not affect the existing bucket policy.<br>  When set to true causes Amazon S3 to:<br>  Reject calls to PUT Bucket policy if the specified bucket policy allows public access.<br>ignore\_public\_acls - Whether Amazon S3 should block public bucket policies for this bucket. Defaults to false. Enabling this setting does not affect the existing bucket policy.<br>  When set to true causes Amazon S3 to:<br>  Reject calls to PUT Bucket policy if the specified bucket policy allows public access.<br>restrict\_public\_buckets - Whether Amazon S3 should block public bucket policies for this bucket. Defaults to false. Enabling this setting does not affect the existing bucket policy.<br>  When set to true causes Amazon S3 to:<br>  Reject calls to PUT Bucket policy if the specified bucket policy allows public access. | <pre>object({<br>    block_public_acls       = optional(bool, true)<br>    block_public_policy     = optional(bool, true)<br>    ignore_public_acls      = optional(bool, true)<br>    restrict_public_buckets = optional(bool, true)<br>  })</pre> | <pre>{<br>  "block_public_acls": true,<br>  "block_public_policy": true,<br>  "ignore_public_acls": true,<br>  "restrict_public_buckets": true<br>}</pre> | no |
| <a name="input_replication_config"></a> [replication\_config](#input\_replication\_config) | Replication configuration for S3 bucket | <pre>object({<br>    enable    = bool<br>    role_name = optional(string, null) // if null , it will create new role<br><br>    rules = list(object({<br>      id = optional(string, null) // if null "${var.source_bucket_name}-rule-index"<br>      filter = optional(list(object({<br>        prefix = optional(string, null)<br>        tags   = optional(map(string), {})<br>      })), [])<br><br>      delete_marker_replication = optional(string, "Enabled")<br><br>      source_selection_criteria = optional(object({<br>        replica_modifications = optional(object({<br>          status = optional(string, "Enabled")<br>        }))<br>        kms_key_id = optional(string, null)<br>        sse_kms_encrypted_objects = optional(object({<br>          status = optional(string, "Enabled")<br>        }))<br>      }))<br><br><br>      destinations = list(object({<br>        bucket        = string<br>        storage_class = optional(string, "STANDARD")<br>        encryption_configuration = optional(object({<br>          replica_kms_key_id = optional(string, null)<br>        }))<br>      }))<br>    }))<br><br>  })</pre> | <pre>{<br>  "enable": false,<br>  "role_name": null,<br>  "rules": []<br>}</pre> | no |
| <a name="input_server_side_encryption_config_data"></a> [server\_side\_encryption\_config\_data](#input\_server\_side\_encryption\_config\_data) | (optional) S3 encryption details | <pre>object({<br>    bucket_key_enabled = optional(bool, true)<br>    sse_algorithm      = optional(string, "AES256")<br>    kms_master_key_id  = optional(string, null)<br>  })</pre> | <pre>{<br>  "bucket_key_enabled": true,<br>  "kms_master_key_id": null,<br>  "sse_algorithm": "AES256"<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign the resources. | `map(string)` | `{}` | no |
| <a name="input_transfer_acceleration_enabled"></a> [transfer\_acceleration\_enabled](#input\_transfer\_acceleration\_enabled) | (optional) Whether to enable Trasfer accelaration | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | Bucket ARN |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | Bucket ID or Name |
| <a name="output_destination_buckets"></a> [destination\_buckets](#output\_destination\_buckets) | n/a |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | Role used to S3 replication |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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

### Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

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
