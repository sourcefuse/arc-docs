# Terraform Module: Bootstrap
This module creates and configures a S3 bucket backend and DynamoDB lock table for terraform state files.  

## Getting Started  
```hcl
module "bootstrap" {
  source = "git::https://github.com/sourcefuse/terraform-module-aws-bootstrap"
  
  bucket_name   = "thisisasamplebucket"
  dynamodb_name = "terraform-lock"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.terraform_state_lock](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_analytics_configuration.private_analytics_config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_analytics_configuration) | resource |
| [aws_s3_bucket_inventory.inventory](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_inventory) | resource |
| [aws_s3_bucket_public_access_block.public_access_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_abort_incomplete_multipart_upload_days"></a> [abort\_incomplete\_multipart\_upload\_days](#input\_abort\_incomplete\_multipart\_upload\_days) | Specifies the number of days after initiating a multipart upload when the multipart upload must be completed. | `number` | `14` | no |
| <a name="input_bucket_key_enabled"></a> [bucket\_key\_enabled](#input\_bucket\_key\_enabled) | Whether or not to use Amazon S3 Bucket Keys for SSE-KMS. | `bool` | `false` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the bucket. | `any` | n/a | yes |
| <a name="input_cors_rules"></a> [cors\_rules](#input\_cors\_rules) | List of maps containing rules for Cross-Origin Resource Sharing. | `list(any)` | `[]` | no |
| <a name="input_dynamodb_hash_key"></a> [dynamodb\_hash\_key](#input\_dynamodb\_hash\_key) | The attribute to use as the hash (partition) key. | `string` | `"LockID"` | no |
| <a name="input_dynamodb_name"></a> [dynamodb\_name](#input\_dynamodb\_name) | The name of the table, this needs to be unique within a region. | `any` | n/a | yes |
| <a name="input_enable_analytics"></a> [enable\_analytics](#input\_enable\_analytics) | Enables storage class analytics on the bucket. | `bool` | `true` | no |
| <a name="input_enable_bucket_force_destroy"></a> [enable\_bucket\_force\_destroy](#input\_enable\_bucket\_force\_destroy) | A boolean that indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. | `bool` | `false` | no |
| <a name="input_enable_bucket_inventory"></a> [enable\_bucket\_inventory](#input\_enable\_bucket\_inventory) | If set to true, Bucket Inventory will be enabled. | `bool` | `false` | no |
| <a name="input_enable_bucket_logging"></a> [enable\_bucket\_logging](#input\_enable\_bucket\_logging) | Enable bucket activity logging. | `bool` | `false` | no |
| <a name="input_enable_dynamodb_point_in_time_recovery"></a> [enable\_dynamodb\_point\_in\_time\_recovery](#input\_enable\_dynamodb\_point\_in\_time\_recovery) | Whether to enable point-in-time recovery - note that it can take up to 10 minutes to enable for new tables. | `bool` | `false` | no |
| <a name="input_enable_s3_public_access_block"></a> [enable\_s3\_public\_access\_block](#input\_enable\_s3\_public\_access\_block) | Bool for toggling whether the s3 public access block resource should be enabled. | `bool` | `true` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. | `bool` | `true` | no |
| <a name="input_expiration"></a> [expiration](#input\_expiration) | Specifies a period in the object's expire. | `list(any)` | <pre>[<br>  {<br>    "expired_object_delete_marker": true<br>  }<br>]</pre> | no |
| <a name="input_inventory_bucket_format"></a> [inventory\_bucket\_format](#input\_inventory\_bucket\_format) | The format for the inventory file. Default is ORC. Options are ORC or CSV. | `string` | `"ORC"` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The AWS KMS master key ID used for the SSE-KMS encryption. | `string` | `""` | no |
| <a name="input_logging_bucket_name"></a> [logging\_bucket\_name](#input\_logging\_bucket\_name) | The S3 bucket to send S3 access logs. | `string` | `""` | no |
| <a name="input_logging_bucket_target_prefix"></a> [logging\_bucket\_target\_prefix](#input\_logging\_bucket\_target\_prefix) | To specify a key prefix for log objects. | `string` | `""` | no |
| <a name="input_noncurrent_version_expiration"></a> [noncurrent\_version\_expiration](#input\_noncurrent\_version\_expiration) | Number of days until non-current version of object expires | `number` | `365` | no |
| <a name="input_noncurrent_version_transitions"></a> [noncurrent\_version\_transitions](#input\_noncurrent\_version\_transitions) | Non-current version transition blocks | `list(any)` | <pre>[<br>  {<br>    "days": 30,<br>    "storage_class": "STANDARD_IA"<br>  }<br>]</pre> | no |
| <a name="input_schedule_frequency"></a> [schedule\_frequency](#input\_schedule\_frequency) | The S3 bucket inventory frequency. Defaults to Weekly. Options are 'Weekly' or 'Daily'. | `string` | `"Weekly"` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"AES256"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the bucket. | `map(string)` | <pre>{<br>  "Module": "terraform-module-aws-bootstrap",<br>  "TerraformManaged": "true"<br>}</pre> | no |
| <a name="input_transitions"></a> [transitions](#input\_transitions) | Current version transition blocks | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | n/a |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | n/a |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | n/a |
| <a name="output_dynamodb_arn"></a> [dynamodb\_arn](#output\_dynamodb\_arn) | n/a |
| <a name="output_dynamodb_id"></a> [dynamodb\_id](#output\_dynamodb\_id) | n/a |
| <a name="output_dynamodb_name"></a> [dynamodb\_name](#output\_dynamodb\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# Bootstrapping  

## Initial Setup
On initial run, this project will create a local terraform state file. **DO NOT** delete this file. Once our backend and lock table are created, we will migrate the state to the new backend.  

## Migrating local state to backend
:warning: This can only be done once without affecting all workspaces. :warning:  

After the initial apply of terraform, you can uncomment this section and save the state to the backend.  
```hcl
terraform {
  required_version = "~> 1.0.3"
  
  backend "s3" {
    region         = "us-east-1"
    key            = "terraform-bootstrap/terraform.tfstate"
    bucket         = "terraformbucketexample"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
```

Then run `terraform init` to initialize the new backend:  
```
Initializing modules...

Initializing the backend...
Do you want to migrate all workspaces to "aws"?
  Both the existing "local" backend and the newly configured "aws" backend
  support workspaces. When migrating between backends, Terraform will copy
  all workspaces (with the same names). THIS WILL OVERWRITE any conflicting
  states in the destination.

  Terraform initialization doesn't currently migrate only select workspaces.
  If you want to migrate a select number of workspaces, you must manually
  pull and push those states.

  If you answer "yes", Terraform will migrate all states. If you answer
  "no", Terraform will abort.
```

Our local state has now been migrated to the new backend. It is now safe to remove the local `terraform.tfstate`.

## Development

### Versioning  
Versioning is done manually at the moment and a tracking [issue](https://github.com/sourcefuse/terraform-module-aws-bootstrap/issues/1) has been created to automate the git tag task.   
On commits to `master`, you are required to update the `version.json` at the root of this project to the next semantic version.  

### Prerequisites

- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations

- Configure pre-commit hooks
```shell
pre-commit install
```

- Configure golang deps for tests
```shell
go get github.com/gruntwork-io/terratest/modules/terraform
go get github.com/stretchr/testify/assert
```

- Execute pre-commit
```shell
pre-commit run -a
```

## Authors
This project is authored by below people

- james.crowley@sourcefuse.com
- travis.saucier@sourcefuse.com

> This project was generated by [generator-tf-module](https://github.com/sudokar/generator-tf-module)
