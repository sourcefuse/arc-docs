![Module Logo](./static/terraform-aws-arc-dynamodb.png)

# Terraform AWS Arc DynamoDB Module

![GitHub release (latest by date)](https://img.shields.io/github/v/release/sourcefuse/terraform-aws-arc-dynamodb)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/sourcefuse/terraform-aws-arc-dynamodb)
![GitHub](https://img.shields.io/github/license/sourcefuse/terraform-aws-arc-dynamodb)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-dynamodb&token=15abaa99afec2eb3d56c7793f74ab85043345289)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-dynamodb)


## Overview

SourceFuse AWS Arc DynamoDB Terraform module provides comprehensive configuration for AWS DynamoDB tables with support for all major features including Global Tables, autoscaling, streams, encryption, and backup management.

## Features

- **Flexible Billing Models**: Support for both provisioned and pay-per-request billing modes
- **Index Management**: Complete support for Global Secondary Indexes (GSI) and Local Secondary Indexes (LSI)
- **Autoscaling**: Automatic capacity scaling for both table and GSI read/write operations
- **Global Tables**: Multi-region replication support for globally distributed applications
- **Data Streams**: DynamoDB Streams configuration for real-time data processing
- **Advanced Security**: Server-side encryption with customer-managed or AWS-managed keys
- **Backup & Recovery**: Point-in-time recovery and automated backup management
- **Monitoring**: CloudWatch contributor insights and comprehensive metrics
- **Data Import**: Support for importing data from S3 with multiple formats
- **TTL Management**: Time-to-live configuration for automatic item expiration
- **Flexible Storage Classes**: Support for Standard and Standard-IA storage classes

## Usage

### Basic Example

```hcl
module "dynamodb_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "my-application-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attributes = [
    {
      name = "id"
      type = "S"
    }
  ]

  server_side_encryption_enabled = true
  point_in_time_recovery_enabled = true

  tags = {
    Environment = "production"
    Application = "my-app"
  }
}
```

### Complete Example with All Features

```hcl
module "dynamodb_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  # Basic Configuration
  table_name   = "gaming-leaderboard"
  billing_mode = "PROVISIONED"
  hash_key     = "userId"
  range_key    = "timestamp"

  # Table Attributes
  attributes = [
    {
      name = "userId"
      type = "S"
    },
    {
      name = "timestamp"
      type = "N"
    },
    {
      name = "gameTitle"
      type = "S"
    },
    {
      name = "topScore"
      type = "N"
    }
  ]

  # Provisioned Capacity
  read_capacity  = 20
  write_capacity = 20

  # Autoscaling Configuration
  autoscaling_enabled = true
  autoscaling_read = {
    max_capacity = 100
    min_capacity = 5
    target_value = 70
  }
  autoscaling_write = {
    max_capacity = 100
    min_capacity = 5
    target_value = 70
  }

  # Global Secondary Indexes
  global_secondary_indexes = [
    {
      name            = "GameTitleIndex"
      hash_key        = "gameTitle"
      range_key       = "topScore"
      read_capacity   = 10
      write_capacity  = 10
      projection_type = "INCLUDE"
      non_key_attributes = ["userId"]
    }
  ]

  # Stream Configuration
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  # TTL Configuration
  ttl_enabled        = true
  ttl_attribute_name = "expires"

  # Encryption
  server_side_encryption_enabled    = true
  server_side_encryption_kms_key_arn = "alias/dynamodb-key"

  # Backup and Recovery
  point_in_time_recovery_enabled = true

  # Global Tables (Multi-region)
  replica_regions = [
    {
      region_name = "us-west-2"
    },
    {
      region_name = "eu-west-1"
    }
  ]

  # Monitoring
  table_contributor_insights_enabled = true

  tags = {
    Environment = "production"
    Application = "gaming-platform"
  }
}
```

### Serverless (Pay-per-Request) Example

```hcl
module "dynamodb_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "serverless-app-table"
  billing_mode = "PAY_PER_REQUEST"
  table_class  = "STANDARD_INFREQUENT_ACCESS"
  hash_key     = "pk"
  range_key    = "sk"

  attributes = [
    {
      name = "pk"
      type = "S"
    },
    {
      name = "sk"
      type = "S"
    },
    {
      name = "gsi1pk"
      type = "S"
    }
  ]

  global_secondary_indexes = [
    {
      name            = "GSI1"
      hash_key        = "gsi1pk"
      projection_type = "ALL"
    }
  ]

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  ttl_enabled        = true
  ttl_attribute_name = "expires_at"

  server_side_encryption_enabled = true
  point_in_time_recovery_enabled = true

  tags = {
    BillingMode = "serverless"
    CostCenter  = "engineering"
  }
}
```
### Global Tables (Pay-per-Request) Example

```hcl
module "dynamodb_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "serverless-app-table"
  billing_mode = "PAY_PER_REQUEST"
  table_class  = "STANDARD_INFREQUENT_ACCESS"
  hash_key     = "pk"
  range_key    = "sk"

  attributes = [
    {
      name = "pk"
      type = "S"
    },
    {
      name = "sk"
      type = "S"
    },
    {
      name = "gsi1pk"
      type = "S"
    }
  ]

  global_secondary_indexes = [
    {
      name            = "GSI1"
      hash_key        = "gsi1pk"
      projection_type = "ALL"
    }
  ]

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  ttl_enabled        = true
  ttl_attribute_name = "expires_at"

  server_side_encryption_enabled = true
  point_in_time_recovery_enabled = true

  # Global Tables (Multi-region replication) - Works with PAY_PER_REQUEST
  replica_regions = [
    {
      region_name = "us-east-2"
    }
  ]

  tags = {
    BillingMode = "serverless"
    CostCenter  = "engineering"
  }
}
```

## Examples

To view examples for how you can leverage this module, please see the [examples](https://github.com/sourcefuse/terraform-aws-arc-dynamodb/tree/main/examples) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.20.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_appautoscaling_policy.gsi_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.gsi_write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.table_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.table_write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_target.gsi_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_appautoscaling_target.gsi_write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_appautoscaling_target.table_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_appautoscaling_target.table_write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_dynamodb_contributor_insights.gsi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_contributor_insights) | resource |
| [aws_dynamodb_contributor_insights.table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_contributor_insights) | resource |
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | List of nested attribute definitions. Only required for hash\_key, range\_key and indexes | <pre>list(object({<br/>    name = string<br/>    type = string<br/>  }))</pre> | n/a | yes |
| <a name="input_autoscaling_enabled"></a> [autoscaling\_enabled](#input\_autoscaling\_enabled) | Whether to enable autoscaling for DynamoDB table | `bool` | `false` | no |
| <a name="input_autoscaling_read"></a> [autoscaling\_read](#input\_autoscaling\_read) | A map of read autoscaling settings | <pre>object({<br/>    scale_in_cooldown  = optional(number, 60)<br/>    scale_out_cooldown = optional(number, 60)<br/>    target_value       = optional(number, 70)<br/>    max_capacity       = number<br/>    min_capacity       = optional(number, 1)<br/>  })</pre> | `null` | no |
| <a name="input_autoscaling_write"></a> [autoscaling\_write](#input\_autoscaling\_write) | A map of write autoscaling settings | <pre>object({<br/>    scale_in_cooldown  = optional(number, 60)<br/>    scale_out_cooldown = optional(number, 60)<br/>    target_value       = optional(number, 70)<br/>    max_capacity       = number<br/>    min_capacity       = optional(number, 1)<br/>  })</pre> | `null` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | Controls how you are charged for read and write throughput and how you manage capacity. The valid values are PROVISIONED and PAY\_PER\_REQUEST | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_deletion_protection_enabled"></a> [deletion\_protection\_enabled](#input\_deletion\_protection\_enabled) | Enables deletion protection for table | `bool` | `false` | no |
| <a name="input_global_secondary_indexes"></a> [global\_secondary\_indexes](#input\_global\_secondary\_indexes) | Describe a GSI for the table | <pre>list(object({<br/>    name               = string<br/>    hash_key           = string<br/>    range_key          = optional(string)<br/>    write_capacity     = optional(number)<br/>    read_capacity      = optional(number)<br/>    projection_type    = optional(string, "ALL")<br/>    non_key_attributes = optional(list(string), [])<br/>  }))</pre> | `[]` | no |
| <a name="input_gsi_autoscaling_read"></a> [gsi\_autoscaling\_read](#input\_gsi\_autoscaling\_read) | A map of read autoscaling settings for GSI | <pre>map(object({<br/>    scale_in_cooldown  = optional(number, 60)<br/>    scale_out_cooldown = optional(number, 60)<br/>    target_value       = optional(number, 70)<br/>    max_capacity       = number<br/>    min_capacity       = optional(number, 1)<br/>  }))</pre> | `{}` | no |
| <a name="input_gsi_autoscaling_write"></a> [gsi\_autoscaling\_write](#input\_gsi\_autoscaling\_write) | A map of write autoscaling settings for GSI | <pre>map(object({<br/>    scale_in_cooldown  = optional(number, 60)<br/>    scale_out_cooldown = optional(number, 60)<br/>    target_value       = optional(number, 70)<br/>    max_capacity       = number<br/>    min_capacity       = optional(number, 1)<br/>  }))</pre> | `{}` | no |
| <a name="input_gsi_contributor_insights_enabled"></a> [gsi\_contributor\_insights\_enabled](#input\_gsi\_contributor\_insights\_enabled) | Whether to enable contributor insights on GSI | `map(bool)` | `{}` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | The attribute to use as the hash (partition) key. Must also be defined as an attribute | `string` | n/a | yes |
| <a name="input_import_table"></a> [import\_table](#input\_import\_table) | Configuration for importing data into the table | <pre>object({<br/>    s3_bucket_source = object({<br/>      bucket       = string<br/>      bucket_owner = optional(string)<br/>      key_prefix   = optional(string)<br/>    })<br/>    input_format = string<br/>    input_format_options = optional(object({<br/>      csv = optional(object({<br/>        delimiter   = optional(string, ",")<br/>        header_list = optional(list(string))<br/>      }))<br/>    }))<br/>    input_compression_type = optional(string, "NONE")<br/>  })</pre> | `null` | no |
| <a name="input_local_secondary_indexes"></a> [local\_secondary\_indexes](#input\_local\_secondary\_indexes) | Describe a LSI on the table | <pre>list(object({<br/>    name               = string<br/>    range_key          = string<br/>    projection_type    = optional(string, "ALL")<br/>    non_key_attributes = optional(list(string), [])<br/>  }))</pre> | `[]` | no |
| <a name="input_point_in_time_recovery_enabled"></a> [point\_in\_time\_recovery\_enabled](#input\_point\_in\_time\_recovery\_enabled) | Whether to enable point-in-time recovery | `bool` | `true` | no |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | The attribute to use as the range (sort) key. Must also be defined as an attribute | `string` | `null` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | The number of read units for this table. If the billing\_mode is PROVISIONED, this field is required | `number` | `null` | no |
| <a name="input_replica_regions"></a> [replica\_regions](#input\_replica\_regions) | List of regions to create replicas in for Global Tables V2 | <pre>list(object({<br/>    region_name                    = string<br/>    kms_key_arn                    = optional(string)<br/>    propagate_tags                 = optional(bool, true)<br/>    point_in_time_recovery_enabled = optional(bool, true)<br/>    table_class                    = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_server_side_encryption_enabled"></a> [server\_side\_encryption\_enabled](#input\_server\_side\_encryption\_enabled) | Whether to enable server-side encryption | `bool` | `true` | no |
| <a name="input_server_side_encryption_kms_key_arn"></a> [server\_side\_encryption\_kms\_key\_arn](#input\_server\_side\_encryption\_kms\_key\_arn) | The ARN of the CMK that should be used for the AWS KMS encryption. This attribute should only be specified if the key is different from the default DynamoDB CMK, alias/aws/dynamodb. | `string` | `null` | no |
| <a name="input_stream_enabled"></a> [stream\_enabled](#input\_stream\_enabled) | Indicates whether Streams are to be enabled (true) or disabled (false) | `bool` | `false` | no |
| <a name="input_stream_view_type"></a> [stream\_view\_type](#input\_stream\_view\_type) | When an item in the table is modified, StreamViewType determines what information is written to the table's stream | `string` | `"NEW_AND_OLD_IMAGES"` | no |
| <a name="input_table_class"></a> [table\_class](#input\_table\_class) | Storage class of the table. Valid values are STANDARD and STANDARD\_INFREQUENT\_ACCESS | `string` | `"STANDARD"` | no |
| <a name="input_table_contributor_insights_enabled"></a> [table\_contributor\_insights\_enabled](#input\_table\_contributor\_insights\_enabled) | Whether to enable contributor insights on table | `bool` | `false` | no |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | Name of the DynamoDB table | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_ttl_attribute_name"></a> [ttl\_attribute\_name](#input\_ttl\_attribute\_name) | The name of the table attribute to store the TTL timestamp in | `string` | `"ttl"` | no |
| <a name="input_ttl_enabled"></a> [ttl\_enabled](#input\_ttl\_enabled) | Indicates whether ttl is enabled | `bool` | `false` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | The number of write units for this table. If the billing\_mode is PROVISIONED, this field is required | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb_gsi_autoscaling_read_policy_arns"></a> [dynamodb\_gsi\_autoscaling\_read\_policy\_arns](#output\_dynamodb\_gsi\_autoscaling\_read\_policy\_arns) | ARNs of autoscaling read policies for GSI |
| <a name="output_dynamodb_gsi_autoscaling_read_targets"></a> [dynamodb\_gsi\_autoscaling\_read\_targets](#output\_dynamodb\_gsi\_autoscaling\_read\_targets) | Autoscaling read targets for GSI |
| <a name="output_dynamodb_gsi_autoscaling_write_policy_arns"></a> [dynamodb\_gsi\_autoscaling\_write\_policy\_arns](#output\_dynamodb\_gsi\_autoscaling\_write\_policy\_arns) | ARNs of autoscaling write policies for GSI |
| <a name="output_dynamodb_gsi_autoscaling_write_targets"></a> [dynamodb\_gsi\_autoscaling\_write\_targets](#output\_dynamodb\_gsi\_autoscaling\_write\_targets) | Autoscaling write targets for GSI |
| <a name="output_dynamodb_gsi_contributor_insights_status"></a> [dynamodb\_gsi\_contributor\_insights\_status](#output\_dynamodb\_gsi\_contributor\_insights\_status) | Status of contributor insights on GSI |
| <a name="output_dynamodb_table_arn"></a> [dynamodb\_table\_arn](#output\_dynamodb\_table\_arn) | ARN of the DynamoDB table |
| <a name="output_dynamodb_table_attributes"></a> [dynamodb\_table\_attributes](#output\_dynamodb\_table\_attributes) | List of table attributes |
| <a name="output_dynamodb_table_autoscaling_read_policy_arn"></a> [dynamodb\_table\_autoscaling\_read\_policy\_arn](#output\_dynamodb\_table\_autoscaling\_read\_policy\_arn) | ARN of autoscaling read policy for the table |
| <a name="output_dynamodb_table_autoscaling_read_target"></a> [dynamodb\_table\_autoscaling\_read\_target](#output\_dynamodb\_table\_autoscaling\_read\_target) | Autoscaling read target for the table |
| <a name="output_dynamodb_table_autoscaling_write_policy_arn"></a> [dynamodb\_table\_autoscaling\_write\_policy\_arn](#output\_dynamodb\_table\_autoscaling\_write\_policy\_arn) | ARN of autoscaling write policy for the table |
| <a name="output_dynamodb_table_autoscaling_write_target"></a> [dynamodb\_table\_autoscaling\_write\_target](#output\_dynamodb\_table\_autoscaling\_write\_target) | Autoscaling write target for the table |
| <a name="output_dynamodb_table_billing_mode"></a> [dynamodb\_table\_billing\_mode](#output\_dynamodb\_table\_billing\_mode) | Billing mode of the DynamoDB table |
| <a name="output_dynamodb_table_contributor_insights_status"></a> [dynamodb\_table\_contributor\_insights\_status](#output\_dynamodb\_table\_contributor\_insights\_status) | Status of contributor insights on the table |
| <a name="output_dynamodb_table_global_secondary_index_names"></a> [dynamodb\_table\_global\_secondary\_index\_names](#output\_dynamodb\_table\_global\_secondary\_index\_names) | List of global secondary index names |
| <a name="output_dynamodb_table_global_secondary_indexes"></a> [dynamodb\_table\_global\_secondary\_indexes](#output\_dynamodb\_table\_global\_secondary\_indexes) | List of global secondary indexes and their attributes |
| <a name="output_dynamodb_table_hash_key"></a> [dynamodb\_table\_hash\_key](#output\_dynamodb\_table\_hash\_key) | Hash key of the DynamoDB table |
| <a name="output_dynamodb_table_id"></a> [dynamodb\_table\_id](#output\_dynamodb\_table\_id) | ID of the DynamoDB table |
| <a name="output_dynamodb_table_local_secondary_index_names"></a> [dynamodb\_table\_local\_secondary\_index\_names](#output\_dynamodb\_table\_local\_secondary\_index\_names) | List of local secondary index names |
| <a name="output_dynamodb_table_local_secondary_indexes"></a> [dynamodb\_table\_local\_secondary\_indexes](#output\_dynamodb\_table\_local\_secondary\_indexes) | List of local secondary indexes and their attributes |
| <a name="output_dynamodb_table_name"></a> [dynamodb\_table\_name](#output\_dynamodb\_table\_name) | Name of the DynamoDB table |
| <a name="output_dynamodb_table_point_in_time_recovery"></a> [dynamodb\_table\_point\_in\_time\_recovery](#output\_dynamodb\_table\_point\_in\_time\_recovery) | Point in time recovery configuration of the DynamoDB table |
| <a name="output_dynamodb_table_range_key"></a> [dynamodb\_table\_range\_key](#output\_dynamodb\_table\_range\_key) | Range key of the DynamoDB table |
| <a name="output_dynamodb_table_read_capacity"></a> [dynamodb\_table\_read\_capacity](#output\_dynamodb\_table\_read\_capacity) | Read capacity of the DynamoDB table |
| <a name="output_dynamodb_table_replicas"></a> [dynamodb\_table\_replicas](#output\_dynamodb\_table\_replicas) | List of replicas of the DynamoDB table |
| <a name="output_dynamodb_table_server_side_encryption"></a> [dynamodb\_table\_server\_side\_encryption](#output\_dynamodb\_table\_server\_side\_encryption) | Server side encryption configuration of the DynamoDB table |
| <a name="output_dynamodb_table_stream_arn"></a> [dynamodb\_table\_stream\_arn](#output\_dynamodb\_table\_stream\_arn) | ARN of the DynamoDB table stream |
| <a name="output_dynamodb_table_stream_label"></a> [dynamodb\_table\_stream\_label](#output\_dynamodb\_table\_stream\_label) | Timestamp, in ISO 8601 format, for this stream |
| <a name="output_dynamodb_table_stream_view_type"></a> [dynamodb\_table\_stream\_view\_type](#output\_dynamodb\_table\_stream\_view\_type) | When an item in the table is modified, StreamViewType determines what information is written to the table's stream |
| <a name="output_dynamodb_table_table_class"></a> [dynamodb\_table\_table\_class](#output\_dynamodb\_table\_table\_class) | Storage class of the DynamoDB table |
| <a name="output_dynamodb_table_tags"></a> [dynamodb\_table\_tags](#output\_dynamodb\_table\_tags) | Tags of the DynamoDB table |
| <a name="output_dynamodb_table_ttl"></a> [dynamodb\_table\_ttl](#output\_dynamodb\_table\_ttl) | TTL configuration of the DynamoDB table |
| <a name="output_dynamodb_table_write_capacity"></a> [dynamodb\_table\_write\_capacity](#output\_dynamodb\_table\_write\_capacity) | Write capacity of the DynamoDB table |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)
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
  go mod init github.com/sourcefuse/terraform-aws-arc-dynamodb
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test
  ```sh
  go test
  ```

## Authors

This project is authored by:
- SourceFuse
