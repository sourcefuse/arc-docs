![Module Structure](./static/banner.png)

# [terraform-aws-arc-dms](https://github.com/sourcefuse/terraform-aws-arc-dms)

<a href="https://github.com/sourcefuse/terraform-aws-arc-dms/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-dms.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-dms/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-dms.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-dms&token=354a04a27a079f60a649f1f80de398dad83e8ca4)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-dms)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-dms/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-dms/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for creating Database Migration Service.

AWS DMS facilitates seamless, secure database migrations to AWS, enabling both homogeneous and heterogeneous data transfers with minimal downtime. DMS supports continuous data replication through Change Data Capture (CDC) and integrates with a broad range of source and target databases, providing a robust, scalable solution for reliable data migration.

For more information about this repository and its usage, please see [Terraform AWS ARC CloudFront Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-dms/blob/main/docs/module-usage-guide/README.md).

## Usage

To see a DMS example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-dms/tree/main/examples/main.tf) file in the example folder.

```tcl
module "aws_dms" {
  source = "../modules/dms"

  # Subnet
  subnet_group_id          = "dms-poc-public-subnet-group"
  subnet_group_description = "Subnet for DMS POC"
  subnet_group_subnet_ids  = ["subnet-1", "subnet-2"] #List of Subnet IDs

  # Instance
  instance_allocated_storage = 5
  instance_apply_immediately = true
  instance_network_type      = "IPV4"
  instance_class             = "dms.t2.micro"
  instance_id                = "DMS-POC"
  instance_subnet_group_id   = "dms-poc-public-subnet-group"
  instance_publicly_accessible = true
  instance_vpc_security_group_ids = ["<sg-id>"] #Security Group ID

  endpoints = {
    db1 = {
      endpoint_id         = "dms-poc-endpoint-1"
      endpoint_type       = "source"
      engine_name         = "postgres"
      database_name       = "poc"
      secrets_manager_arn = "<secret-arn>" #Source endpoint secret arn
      ssl_mode            = "require"

      postgres_settings = {
        execute_timeout = 60
      }
    }

    db2 = {
      endpoint_id         = "dms-poc-endpoint-2"
      endpoint_type       = "target"
      engine_name         = "postgres"
      database_name       = "poc_target"
      secrets_manager_arn = "<secret-arn>" #Target endpoint secret arn
      ssl_mode            = "require"
    }
  }

  replication_tasks = {
    task1 = {
      replication_task_id = "replication-task-1"
      migration_type      = "full-load"         # Full load
      source_endpoint_key = "db1"               # References key in endpoints map
      target_endpoint_key = "db2"               # References key in endpoints map
      table_mappings      = "{\"rules\":[{\"rule-type\":\"selection\",\"rule-id\":\"1\",\"rule-name\":\"1\",\"object-locator\":{\"schema-name\":\"public\",\"table-name\":\"%\"},\"rule-action\":\"include\"}]}"

    }
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_dms"></a> [aws\_dms](#module\_aws\_dms) | ./modules/dms | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_subnet_group"></a> [create\_subnet\_group](#input\_create\_subnet\_group) | Determines whether the replication subnet group will be created | `bool` | `true` | no |
| <a name="input_endpoints"></a> [endpoints](#input\_endpoints) | Map of endpoints used in the system | <pre>map(object({<br/>    endpoint_id                     = string<br/>    endpoint_type                   = string<br/>    engine_name                     = string<br/>    extra_connection_attributes     = optional(string)<br/>    database_name                   = optional(string)<br/>    kms_key_arn                     = string<br/>    port                            = optional(number)<br/>    server_name                     = optional(string)<br/>    ssl_mode                        = optional(string)<br/>    secrets_manager_arn             = optional(string)<br/>    secrets_manager_access_role_arn = optional(string)<br/>    service_access_role             = optional(string)<br/>    username                        = optional(string)<br/><br/>    postgres_settings = optional(object({<br/>      after_connect_script         = optional(string)<br/>      babelfish_database_name      = optional(string)<br/>      capture_ddls                 = optional(bool)<br/>      database_mode                = optional(string)<br/>      ddl_artifacts_schema         = optional(string)<br/>      execute_timeout              = optional(number)<br/>      fail_tasks_on_lob_truncation = optional(bool)<br/>      heartbeat_enable             = optional(bool)<br/>      heartbeat_frequency          = optional(number)<br/>      heartbeat_schema             = optional(string)<br/>      map_boolean_as_boolean       = optional(bool)<br/>      map_jsonb_as_clob            = optional(bool)<br/>      map_long_varchar_as          = optional(string)<br/>      max_file_size                = optional(number)<br/>      plugin_name                  = optional(string)<br/>      slot_name                    = optional(string)<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_instance_allocated_storage"></a> [instance\_allocated\_storage](#input\_instance\_allocated\_storage) | The amount of storage (in gigabytes) to be initially allocated for the replication instance. Min: 5, Max: 6144, Default: 50 | `number` | `null` | no |
| <a name="input_instance_allow_major_version_upgrade"></a> [instance\_allow\_major\_version\_upgrade](#input\_instance\_allow\_major\_version\_upgrade) | Indicates that major version upgrades are allowed | `bool` | `true` | no |
| <a name="input_instance_apply_immediately"></a> [instance\_apply\_immediately](#input\_instance\_apply\_immediately) | Indicates whether the changes should be applied immediately or during the next maintenance window | `bool` | `null` | no |
| <a name="input_instance_auto_minor_version_upgrade"></a> [instance\_auto\_minor\_version\_upgrade](#input\_instance\_auto\_minor\_version\_upgrade) | Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window | `bool` | `true` | no |
| <a name="input_instance_availability_zone"></a> [instance\_availability\_zone](#input\_instance\_availability\_zone) | The EC2 Availability Zone that the replication instance will be created in | `string` | `null` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | The compute and memory capacity of the replication instance as specified by the replication instance class | `string` | `"dms.t2.micro"` | no |
| <a name="input_instance_engine_version"></a> [instance\_engine\_version](#input\_instance\_engine\_version) | The [engine version](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReleaseNotes.html) number of the replication instance | `string` | `null` | no |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | The replication instance identifier. This parameter is stored as a lowercase string | `string` | `"dms-instance"` | no |
| <a name="input_instance_kms_key_arn"></a> [instance\_kms\_key\_arn](#input\_instance\_kms\_key\_arn) | The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters | `string` | `null` | no |
| <a name="input_instance_multi_az"></a> [instance\_multi\_az](#input\_instance\_multi\_az) | Specifies if the replication instance is a multi-az deployment. You cannot set the `availability_zone` parameter if the `multi_az` parameter is set to `true` | `bool` | `null` | no |
| <a name="input_instance_network_type"></a> [instance\_network\_type](#input\_instance\_network\_type) | The type of IP address protocol used by a replication instance. Valid values: IPV4, DUAL | `string` | `null` | no |
| <a name="input_instance_preferred_maintenance_window"></a> [instance\_preferred\_maintenance\_window](#input\_instance\_preferred\_maintenance\_window) | The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC) | `string` | `null` | no |
| <a name="input_instance_publicly_accessible"></a> [instance\_publicly\_accessible](#input\_instance\_publicly\_accessible) | Specifies the accessibility options for the replication instance | `bool` | `null` | no |
| <a name="input_instance_subnet_group_id"></a> [instance\_subnet\_group\_id](#input\_instance\_subnet\_group\_id) | An existing subnet group to associate with the replication instance | `string` | `null` | no |
| <a name="input_instance_vpc_security_group_ids"></a> [instance\_vpc\_security\_group\_ids](#input\_instance\_vpc\_security\_group\_ids) | A list of VPC security group IDs to be used with the replication instance | `list(string)` | `null` | no |
| <a name="input_replication_tasks"></a> [replication\_tasks](#input\_replication\_tasks) | n/a | <pre>map(object({<br/>    replication_task_id       = string<br/>    migration_type            = string<br/>    cdc_start_position        = optional(string)<br/>    cdc_start_time            = optional(string)<br/>    source_endpoint_key       = string # Key to reference source endpoint<br/>    target_endpoint_key       = string # Key to reference target endpoint<br/>    replication_task_settings = optional(string)<br/>    start_replication_task    = optional(bool)<br/>    table_mappings            = string<br/>    tags                      = optional(map(string))<br/>  }))</pre> | `{}` | no |
| <a name="input_replication_tasks_serverless"></a> [replication\_tasks\_serverless](#input\_replication\_tasks\_serverless) | Map of serverless replication tasks | <pre>map(object({<br/>    migration_type             = string<br/>    replication_task_id        = string<br/>    replication_task_settings  = optional(map(string))<br/>    supplemental_task_settings = optional(map(string))<br/>    start_replication_task     = optional(bool)<br/>    source_endpoint_arn        = optional(string)<br/>    target_endpoint_arn        = optional(string)<br/>    table_mappings             = optional(string)<br/>    serverless_config = optional(object({<br/>      availability_zone            = optional(string)<br/>      dns_name_servers             = optional(list(string))<br/>      kms_key_id                   = optional(string)<br/>      max_capacity_units           = number<br/>      min_capacity_units           = optional(number)<br/>      multi_az                     = optional(bool)<br/>      preferred_maintenance_window = optional(string)<br/>      vpc_security_group_ids       = optional(list(string))<br/>    }))<br/>  }))</pre> | n/a | yes |
| <a name="input_s3_endpoints"></a> [s3\_endpoints](#input\_s3\_endpoints) | n/a | <pre>map(object({<br/>    endpoint_id                                 = string<br/>    endpoint_type                               = string<br/>    kms_key_arn                                 = optional(string)<br/>    ssl_mode                                    = optional(string)<br/>    add_column_name                             = optional(bool)<br/>    add_trailing_padding_character              = optional(bool)<br/>    bucket_folder                               = optional(string)<br/>    bucket_name                                 = string<br/>    canned_acl_for_objects                      = optional(string)<br/>    cdc_inserts_and_updates                     = optional(bool)<br/>    cdc_inserts_only                            = optional(bool)<br/>    cdc_max_batch_interval                      = optional(number)<br/>    cdc_min_file_size                           = optional(number)<br/>    cdc_path                                    = optional(string)<br/>    compression_type                            = optional(string)<br/>    csv_delimiter                               = optional(string)<br/>    csv_no_sup_value                            = optional(bool)<br/>    csv_null_value                              = optional(string)<br/>    csv_row_delimiter                           = optional(string)<br/>    data_format                                 = optional(string)<br/>    data_page_size                              = optional(number)<br/>    date_partition_delimiter                    = optional(string)<br/>    date_partition_enabled                      = optional(bool)<br/>    date_partition_sequence                     = optional(string)<br/>    date_partition_timezone                     = optional(string)<br/>    detach_target_on_lob_lookup_failure_parquet = optional(bool)<br/>    dict_page_size_limit                        = optional(number)<br/>    enable_statistics                           = optional(bool)<br/>    encoding_type                               = optional(string)<br/>    encryption_mode                             = optional(string)<br/>    expected_bucket_owner                       = optional(string)<br/>    external_table_definition                   = optional(string)<br/>    glue_catalog_generation                     = optional(bool)<br/>    ignore_header_rows                          = optional(bool)<br/>    include_op_for_full_load                    = optional(bool)<br/>    max_file_size                               = optional(number)<br/>    parquet_timestamp_in_millisecond            = optional(bool)<br/>    parquet_version                             = optional(string)<br/>    preserve_transactions                       = optional(bool)<br/>    rfc_4180                                    = optional(bool)<br/>    row_group_length                            = optional(number)<br/>    server_side_encryption_kms_key_id           = optional(string)<br/>    service_access_role_arn                     = string<br/>    timestamp_column_name                       = optional(string)<br/>    use_csv_no_sup_value                        = optional(bool)<br/>    use_task_start_time_for_full_load_timestamp = optional(bool)<br/>    tags                                        = optional(map(string))<br/>  }))</pre> | n/a | yes |
| <a name="input_subnet_group_description"></a> [subnet\_group\_description](#input\_subnet\_group\_description) | The description for the subnet group | `string` | `"DMS Replication subnet group"` | no |
| <a name="input_subnet_group_id"></a> [subnet\_group\_id](#input\_subnet\_group\_id) | The name for the replication subnet group. Stored as a lowercase string, must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens | `string` | `"DMS_replication_subnet_group"` | no |
| <a name="input_subnet_group_subnet_ids"></a> [subnet\_group\_subnet\_ids](#input\_subnet\_group\_subnet\_ids) | A list of the EC2 subnet IDs for the subnet group | `list(string)` | `[]` | no |
| <a name="input_subnet_group_tags"></a> [subnet\_group\_tags](#input\_subnet\_group\_tags) | A map of additional tags to apply to the replication subnet group | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificates"></a> [certificates](#output\_certificates) | A map of maps containing the certificates created and their full output of attributes and values |
| <a name="output_dms_access_for_endpoint_iam_role_arn"></a> [dms\_access\_for\_endpoint\_iam\_role\_arn](#output\_dms\_access\_for\_endpoint\_iam\_role\_arn) | ARN specifying the role |
| <a name="output_dms_access_for_endpoint_iam_role_id"></a> [dms\_access\_for\_endpoint\_iam\_role\_id](#output\_dms\_access\_for\_endpoint\_iam\_role\_id) | Name of the IAM role |
| <a name="output_dms_access_for_endpoint_iam_role_unique_id"></a> [dms\_access\_for\_endpoint\_iam\_role\_unique\_id](#output\_dms\_access\_for\_endpoint\_iam\_role\_unique\_id) | Stable and unique string identifying the role |
| <a name="output_endpoints"></a> [endpoints](#output\_endpoints) | A map of maps containing the endpoints created and their full output of attributes and values |
| <a name="output_event_subscriptions"></a> [event\_subscriptions](#output\_event\_subscriptions) | A map of maps containing the event subscriptions created and their full output of attributes and values |
| <a name="output_replication_instance_arn"></a> [replication\_instance\_arn](#output\_replication\_instance\_arn) | The Amazon Resource Name (ARN) of the replication instance |
| <a name="output_replication_instance_tags_all"></a> [replication\_instance\_tags\_all](#output\_replication\_instance\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block |
| <a name="output_replication_subnet_group_id"></a> [replication\_subnet\_group\_id](#output\_replication\_subnet\_group\_id) | The ID of the subnet group |
| <a name="output_replication_tasks"></a> [replication\_tasks](#output\_replication\_tasks) | A map of maps containing the replication tasks created and their full output of attributes and values |
| <a name="output_s3_endpoints"></a> [s3\_endpoints](#output\_s3\_endpoints) | A map of maps containing the S3 endpoints created and their full output of attributes and values |
| <a name="output_serverless_replication_tasks"></a> [serverless\_replication\_tasks](#output\_serverless\_replication\_tasks) | A map of maps containing the serverless replication tasks (replication\_config) created and their full output of attributes and values |

## Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

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
  go mod init github.com/sourcefuse/terraform-aws-refarch-vpn
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:

- SourceFuse
