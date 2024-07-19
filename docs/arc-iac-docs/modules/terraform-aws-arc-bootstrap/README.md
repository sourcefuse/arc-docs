![Module Structure](./images/banner.png)

# [terraform-aws-arc-bootstrap](https://github.com/sourcefuse/terraform-aws-arc-bootstrap)

<a href="https://github.com/sourcefuse/terraform-aws-arc-bootstrap/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-bootstrap.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-bootstrap/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-bootstrap.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-bootstrap)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-bootstrap)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-bootstrap/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-bootstrap/actions/workflows/snyk.yaml)

## Introduction
---
A backend specifies the location where Terraform stores its state data files. Terraform relies on persistent state data to monitor the resources under its management. This enables collaborative access to the state data, allowing multiple individuals to collaborate on the management of a set of infrastructure resources.
This module creates and configures a S3 bucket backend along with a DynamoDB lock table to store Terraform state files.
As a best practice use this module to create the backend for Terraform<br><br><br>


![image search api](images/terraform-state.png)<br><br><br>


### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.


## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:



```plaintext
bootstrap/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example


```hcl
module "bootstrap" {
  source  = "sourcefuse/arc-bootstrap/aws"
  # version = "x.x.x"  # we recommend pinning the module to a specific version

  bucket_name              = var.bucket_name
  dynamodb_name            = var.dynamodb_name
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "bucket_id" {
  value = module.bootstrap.bucket_id
}

output "bucket_name" {
  value = module.bootstrap.bucket_name
}
```

5. **Execute Terraform Commands**

After defining your main configuration, navigate to the directory containing your Terraform files and run the following commands:


```bash
terraform init
terraform apply
```

6. **Review and Confirm**

Terraform will display a plan showing the changes it intends to make. Review the plan and confirm by typing 'yes' when prompted.


7. **Migrating local state to backend**

After the initial apply of terraform, you can add backend section to migrate Terraforn state to S3 bucket
```hcl
terraform {
  required_version = ">= 1.4"

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

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.terraform_state_lock](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_analytics_configuration.private_analytics_config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_analytics_configuration) | resource |
| [aws_s3_bucket_cors_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration) | resource |
| [aws_s3_bucket_inventory.inventory](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_inventory) | resource |
| [aws_s3_bucket_lifecycle_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration) | resource |
| [aws_s3_bucket_logging.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |
| [aws_s3_bucket_ownership_controls.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.public_access_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_abort_incomplete_multipart_upload_days"></a> [abort\_incomplete\_multipart\_upload\_days](#input\_abort\_incomplete\_multipart\_upload\_days) | Specifies the number of days after initiating a multipart upload when the multipart upload must be completed. | `number` | `14` | no |
| <a name="input_bucket_key_enabled"></a> [bucket\_key\_enabled](#input\_bucket\_key\_enabled) | Whether or not to use Amazon S3 Bucket Keys for SSE-KMS. | `bool` | `false` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the bucket. | `string` | n/a | yes |
| <a name="input_cors_rules"></a> [cors\_rules](#input\_cors\_rules) | List of maps containing rules for Cross-Origin Resource Sharing. | `list(any)` | `[]` | no |
| <a name="input_dynamo_kms_master_key_id"></a> [dynamo\_kms\_master\_key\_id](#input\_dynamo\_kms\_master\_key\_id) | The Default ID of an AWS-managed customer master key (CMK) for Amazon Dynamo | `string` | `null` | no |
| <a name="input_dynamodb_hash_key"></a> [dynamodb\_hash\_key](#input\_dynamodb\_hash\_key) | The attribute to use as the hash (partition) key. | `string` | `"LockID"` | no |
| <a name="input_dynamodb_name"></a> [dynamodb\_name](#input\_dynamodb\_name) | The name of the table, this needs to be unique within a region. | `string` | n/a | yes |
| <a name="input_enable_analytics"></a> [enable\_analytics](#input\_enable\_analytics) | Enables storage class analytics on the bucket. | `bool` | `true` | no |
| <a name="input_enable_bucket_force_destroy"></a> [enable\_bucket\_force\_destroy](#input\_enable\_bucket\_force\_destroy) | A boolean that indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. | `bool` | `false` | no |
| <a name="input_enable_bucket_inventory"></a> [enable\_bucket\_inventory](#input\_enable\_bucket\_inventory) | If set to true, Bucket Inventory will be enabled. | `bool` | `false` | no |
| <a name="input_enable_bucket_logging"></a> [enable\_bucket\_logging](#input\_enable\_bucket\_logging) | Enable bucket activity logging. | `bool` | `false` | no |
| <a name="input_enable_dynamodb_point_in_time_recovery"></a> [enable\_dynamodb\_point\_in\_time\_recovery](#input\_enable\_dynamodb\_point\_in\_time\_recovery) | Whether to enable point-in-time recovery - note that it can take up to 10 minutes to enable for new tables. | `bool` | `true` | no |
| <a name="input_enable_s3_public_access_block"></a> [enable\_s3\_public\_access\_block](#input\_enable\_s3\_public\_access\_block) | Bool for toggling whether the s3 public access block resource should be enabled. | `bool` | `true` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. | `bool` | `true` | no |
| <a name="input_expiration"></a> [expiration](#input\_expiration) | Specifies a period in the object's expire. | `list(any)` | <pre>[<br>  {<br>    "expired_object_delete_marker": true<br>  }<br>]</pre> | no |
| <a name="input_inventory_bucket_format"></a> [inventory\_bucket\_format](#input\_inventory\_bucket\_format) | The format for the inventory file. Default is ORC. Options are ORC or CSV. | `string` | `"ORC"` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | The AWS KMS master key ID used for the SSE-KMS encryption. | `string` | `""` | no |
| <a name="input_logging_bucket_name"></a> [logging\_bucket\_name](#input\_logging\_bucket\_name) | The S3 bucket to send S3 access logs. | `string` | `""` | no |
| <a name="input_logging_bucket_target_prefix"></a> [logging\_bucket\_target\_prefix](#input\_logging\_bucket\_target\_prefix) | To specify a key prefix for log objects. | `string` | `""` | no |
| <a name="input_mfa_delete"></a> [mfa\_delete](#input\_mfa\_delete) | mfa\_delete is disabled | `bool` | `false` | no |
| <a name="input_noncurrent_version_expiration"></a> [noncurrent\_version\_expiration](#input\_noncurrent\_version\_expiration) | Number of days until non-current version of object expires | `number` | `365` | no |
| <a name="input_noncurrent_version_transitions"></a> [noncurrent\_version\_transitions](#input\_noncurrent\_version\_transitions) | Non-current version transition blocks | `list(any)` | <pre>[<br>  {<br>    "days": 30,<br>    "storage_class": "STANDARD_IA"<br>  }<br>]</pre> | no |
| <a name="input_schedule_frequency"></a> [schedule\_frequency](#input\_schedule\_frequency) | The S3 bucket inventory frequency. Defaults to Weekly. Options are 'Weekly' or 'Daily'. | `string` | `"Weekly"` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"AES256"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the bucket. | `map(string)` | <pre>{<br>  "Module": "terraform-aws-arc-bootstrap",<br>  "TerraformManaged": "true"<br>}</pre> | no |
| <a name="input_transitions"></a> [transitions](#input\_transitions) | Current version transition blocks | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | Bucket's ARN |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | Bucket's ID |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Bucket's Name |
| <a name="output_dynamodb_arn"></a> [dynamodb\_arn](#output\_dynamodb\_arn) | DynamoDB's ARN |
| <a name="output_dynamodb_id"></a> [dynamodb\_id](#output\_dynamodb\_id) | DynamoDB's ID |
| <a name="output_dynamodb_name"></a> [dynamodb\_name](#output\_dynamodb\_name) | DynamoDB's Name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Versioning  

While Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

### Prerequisites

- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)

### Configurations

- Configure pre-commit hooks
```shell
pre-commit install
```

- Execute pre-commit
```shell
pre-commit run -a
```

## Authors
This project is authored by below people

- SourceFuse ARC Team
