![Module Structure](./static/banner.png)
# [terraform-aws-arc-db](https://github.com/sourcefuse/terraform-aws-arc-db)

<a href="https://github.com/sourcefuse/terraform-aws-arc-db/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-db.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-db/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-db.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-db)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-db)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-ref-arch-db/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-ref-arch-db/actions/workflows/snyk.yaml)

## Overview

The SourceFuse AWS Reference Architecture (ARC) Terraform module offers a comprehensive solution for efficiently managing Aurora and RDS (Relational Database Service) instances within the Amazon Web Services (AWS) environment. This Terraform module is designed to streamline the provisioning, configuration, and management of these database instances, leveraging best practices.

For more information about this repository and its usage, please see [Terraform AWS ARC DB Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-db/blob/main/docs/module-usage-guide/README.md).

## Module Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-db/blob/main/example/main.tf) file in the example folder.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.1.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.59.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aurora_cluster"></a> [aurora\_cluster](#module\_aurora\_cluster) | git::https://github.com/cloudposse/terraform-aws-rds-cluster.git | 1.9.0 |
| <a name="module_db_management"></a> [db\_management](#module\_db\_management) | git::https://github.com/cloudposse/terraform-aws-s3-bucket | 4.2.0 |
| <a name="module_rds_instance"></a> [rds\_instance](#module\_rds\_instance) | git::https://github.com/cloudposse/terraform-aws-rds | 1.1.1 |
| <a name="module_this"></a> [this](#module\_this) | cloudposse/label/null | 0.25.0 |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance_role_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance_role_association) | resource |
| [aws_db_option_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_option_group) | resource |
| [aws_iam_policy.option_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.option_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.option_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_alias.aurora_cluster_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_alias.rds_db_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.aurora_cluster_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_kms_key.rds_db_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_security_group_rule.additional_ingress_rules_aurora](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.additional_ingress_rules_rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [random_password.aurora_db_admin_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_password.rds_db_admin_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_iam_policy_document.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID where the resources will be deployed to. This is required if `enable_custom_option_group` is set to `true`. | `string` | `""` | no |
| <a name="input_additional_ingress_rules_aurora"></a> [additional\_ingress\_rules\_aurora](#input\_additional\_ingress\_rules\_aurora) | Additional ingress rules for Aurora | <pre>list(object({<br>    name        = string<br>    description = string<br>    type        = string<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_additional_ingress_rules_rds"></a> [additional\_ingress\_rules\_rds](#input\_additional\_ingress\_rules\_rds) | Additional ingress rules for RDS | <pre>list(object({<br>    name        = string<br>    description = string<br>    type        = string<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional key-value pairs to add to each map in `tags_as_list_of_maps`. Not added to `tags` or `id`.<br>This is for some rare cases where resources want additional configuration of tags<br>and therefore take a list of maps with tag key, value, and additional configuration. | `map(string)` | `{}` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | ID element. Additional attributes (e.g. `workers` or `cluster`) to add to `id`,<br>in the order they appear in the list. New attributes are appended to the<br>end of the list. The elements of the list are joined by the `delimiter`<br>and treated as a single ID element. | `list(string)` | `[]` | no |
| <a name="input_aurora_allow_major_version_upgrade"></a> [aurora\_allow\_major\_version\_upgrade](#input\_aurora\_allow\_major\_version\_upgrade) | Enable to allow major engine version upgrades when changing engine versions. Defaults to false. | `bool` | `false` | no |
| <a name="input_aurora_allowed_cidr_blocks"></a> [aurora\_allowed\_cidr\_blocks](#input\_aurora\_allowed\_cidr\_blocks) | List of CIDR blocks allowed to access the cluster | `list(string)` | `[]` | no |
| <a name="input_aurora_auto_minor_version_upgrade"></a> [aurora\_auto\_minor\_version\_upgrade](#input\_aurora\_auto\_minor\_version\_upgrade) | Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window | `bool` | `true` | no |
| <a name="input_aurora_backup_retention_period"></a> [aurora\_backup\_retention\_period](#input\_aurora\_backup\_retention\_period) | Number of days to retain backups for | `number` | `5` | no |
| <a name="input_aurora_backup_window"></a> [aurora\_backup\_window](#input\_aurora\_backup\_window) | Daily time range during which the backups happen | `string` | `"07:00-09:00"` | no |
| <a name="input_aurora_ca_cert_identifier"></a> [aurora\_ca\_cert\_identifier](#input\_aurora\_ca\_cert\_identifier) | The identifier of the CA certificate for the Aurora DB instance | `string` | `null` | no |
| <a name="input_aurora_cluster_enabled"></a> [aurora\_cluster\_enabled](#input\_aurora\_cluster\_enabled) | Enable creation of an Aurora Cluster | `bool` | `false` | no |
| <a name="input_aurora_cluster_family"></a> [aurora\_cluster\_family](#input\_aurora\_cluster\_family) | The family of the DB cluster parameter group | `string` | `"aurora-postgresql14"` | no |
| <a name="input_aurora_cluster_name"></a> [aurora\_cluster\_name](#input\_aurora\_cluster\_name) | Database name (default is not to create a database) | `string` | `""` | no |
| <a name="input_aurora_cluster_name_override"></a> [aurora\_cluster\_name\_override](#input\_aurora\_cluster\_name\_override) | If `true`, this will set a the Aurora Cluster name to what is defined in var.aurora\_cluster\_name.<br>If `false`, this will prepend ${var.namespace}-${var.environment} to ${var.aurora\_cluster\_name}" | `bool` | `false` | no |
| <a name="input_aurora_cluster_size"></a> [aurora\_cluster\_size](#input\_aurora\_cluster\_size) | Number of DB instances to create in the cluster | `number` | `0` | no |
| <a name="input_aurora_db_admin_password"></a> [aurora\_db\_admin\_password](#input\_aurora\_db\_admin\_password) | Password of the DB admin | `string` | `""` | no |
| <a name="input_aurora_db_admin_username"></a> [aurora\_db\_admin\_username](#input\_aurora\_db\_admin\_username) | Name of the default DB admin user role | `string` | `""` | no |
| <a name="input_aurora_db_name"></a> [aurora\_db\_name](#input\_aurora\_db\_name) | Database name. | `string` | `"auroradb"` | no |
| <a name="input_aurora_db_port"></a> [aurora\_db\_port](#input\_aurora\_db\_port) | Port for the Aurora DB instance to use. | `number` | `5432` | no |
| <a name="input_aurora_enabled_cloudwatch_logs_exports"></a> [aurora\_enabled\_cloudwatch\_logs\_exports](#input\_aurora\_enabled\_cloudwatch\_logs\_exports) | List of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine): alert, audit, error, general, listener, slowquery, trace, postgresql (PostgreSQL), upgrade (PostgreSQL). | `list(string)` | `[]` | no |
| <a name="input_aurora_engine"></a> [aurora\_engine](#input\_aurora\_engine) | The name of the database engine to be used for this DB cluster. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql` | `string` | `"aurora-postgresql"` | no |
| <a name="input_aurora_engine_mode"></a> [aurora\_engine\_mode](#input\_aurora\_engine\_mode) | The database engine mode. Valid values: `parallelquery`, `provisioned`, `serverless` | `string` | `"provisioned"` | no |
| <a name="input_aurora_engine_version"></a> [aurora\_engine\_version](#input\_aurora\_engine\_version) | The version of the database engine tocl use. See `aws rds describe-db-engine-versions` | `string` | `"14.5"` | no |
| <a name="input_aurora_instance_type"></a> [aurora\_instance\_type](#input\_aurora\_instance\_type) | Instance type to use | `string` | `"db.serverless"` | no |
| <a name="input_aurora_iops"></a> [aurora\_iops](#input\_aurora\_iops) | The amount of provisioned IOPS. Setting this implies a storage\_type of 'io1'. This setting is required to create a Multi-AZ DB cluster. Check TF docs for values based on db engine | `number` | `null` | no |
| <a name="input_aurora_scaling_configuration"></a> [aurora\_scaling\_configuration](#input\_aurora\_scaling\_configuration) | List of nested attributes with scaling properties. Only valid when engine\_mode is set to serverless | <pre>list(object({<br>    auto_pause               = bool<br>    max_capacity             = number<br>    min_capacity             = number<br>    seconds_until_auto_pause = number<br>    timeout_action           = string<br>  }))</pre> | `[]` | no |
| <a name="input_aurora_security_groups"></a> [aurora\_security\_groups](#input\_aurora\_security\_groups) | List of security group IDs to be allowed to connect to the DB instance | `list(string)` | `[]` | no |
| <a name="input_aurora_serverlessv2_scaling_configuration"></a> [aurora\_serverlessv2\_scaling\_configuration](#input\_aurora\_serverlessv2\_scaling\_configuration) | serverlessv2 scaling properties | <pre>object({<br>    min_capacity = number<br>    max_capacity = number<br>  })</pre> | `null` | no |
| <a name="input_aurora_storage_type"></a> [aurora\_storage\_type](#input\_aurora\_storage\_type) | One of 'standard' (magnetic), 'gp2' / 'gp3' (general purpose SSD), or 'io1' (provisioned IOPS SSD) or aurora-iopt1 | `string` | `null` | no |
| <a name="input_aurora_subnets"></a> [aurora\_subnets](#input\_aurora\_subnets) | Subnets for the cluster to run in. | `list(string)` | `[]` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": null,<br>  "descriptor_formats": {},<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "labels_as_tags": [<br>    "unset"<br>  ],<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {},<br>  "tenant": null<br>}</pre> | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Protect the instance from being deleted | `bool` | `false` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | n/a | `number` | `10` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between ID elements.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_descriptor_formats"></a> [descriptor\_formats](#input\_descriptor\_formats) | Describe additional descriptors to be output in the `descriptors` output map.<br>Map of maps. Keys are names of descriptors. Values are maps of the form<br>`{<br>   format = string<br>   labels = list(string)<br>}`<br>(Type is `any` so the map values can later be enhanced to provide additional options.)<br>`format` is a Terraform format string to be passed to the `format()` function.<br>`labels` is a list of labels, in order, to pass to `format()` function.<br>Label values will be normalized before being passed to `format()` so they will be<br>identical to how they appear in `id`.<br>Default is `{}` (`descriptors` output will be empty). | `any` | `{}` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | n/a | `bool` | `true` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_enhanced_monitoring_arn"></a> [enhanced\_monitoring\_arn](#input\_enhanced\_monitoring\_arn) | ARN to the enhanced monitoring policy | `string` | `"arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"` | no |
| <a name="input_enhanced_monitoring_name"></a> [enhanced\_monitoring\_name](#input\_enhanced\_monitoring\_name) | Name to assign the enhanced monitoring resources. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_iam_database_authentication_enabled"></a> [iam\_database\_authentication\_enabled](#input\_iam\_database\_authentication\_enabled) | Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled | `bool` | `false` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for keep the existing setting, which defaults to `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The ARN for the KMS encryption key. When specifying `kms_key_arn`, `storage_encrypted` needs to be set to `true` | `string` | `""` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | Controls the letter case of the `tags` keys (label names) for tags generated by this module.<br>Does not affect keys of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The order in which the labels (ID elements) appear in the `id`.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 6 labels ("tenant" is the 6th), but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | Controls the letter case of ID elements (labels) as included in `id`,<br>set as tag values, and output by this module individually.<br>Does not affect values of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Set this to `title` and set `delimiter` to `""` to yield Pascal Case IDs.<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_labels_as_tags"></a> [labels\_as\_tags](#input\_labels\_as\_tags) | Set of labels (ID elements) to include as tags in the `tags` output.<br>Default is to include all labels.<br>Tags with empty values will not be included in the `tags` output.<br>Set to `[]` to suppress all generated tags.<br>**Notes:**<br>  The value of the `name` tag, if included, will be the `id`, not the `name`.<br>  Unlike other `null-label` inputs, the initial setting of `labels_as_tags` cannot be<br>  changed in later chained modules. Attempts to change it will be silently ignored. | `set(string)` | <pre>[<br>  "default"<br>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.<br>This is the only ID element not also included as a `tag`.<br>The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input. | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique | `string` | n/a | yes |
| <a name="input_performance_insights_enabled"></a> [performance\_insights\_enabled](#input\_performance\_insights\_enabled) | Whether to enable Performance Insights | `bool` | `false` | no |
| <a name="input_performance_insights_kms_key_id"></a> [performance\_insights\_kms\_key\_id](#input\_performance\_insights\_kms\_key\_id) | The ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true | `string` | `""` | no |
| <a name="input_performance_insights_retention_period"></a> [performance\_insights\_retention\_period](#input\_performance\_insights\_retention\_period) | Amount of time in days to retain Performance Insights data. Either 7 (7 days) or 731 (2 years) | `number` | `null` | no |
| <a name="input_rds_enable_custom_option_group"></a> [rds\_enable\_custom\_option\_group](#input\_rds\_enable\_custom\_option\_group) | Enable the custom Option Group for restoring backups via S3 | `bool` | `false` | no |
| <a name="input_rds_enabled_cloudwatch_logs_exports"></a> [rds\_enabled\_cloudwatch\_logs\_exports](#input\_rds\_enabled\_cloudwatch\_logs\_exports) | List of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine): alert, audit, error, general, listener, slowquery, trace, postgresql (PostgreSQL), upgrade (PostgreSQL). | `list(string)` | `[]` | no |
| <a name="input_rds_instance_allocated_storage"></a> [rds\_instance\_allocated\_storage](#input\_rds\_instance\_allocated\_storage) | The allocated storage in GBs. Required unless a snapshot\_identifier or replicate\_source\_db is provided. | `number` | `20` | no |
| <a name="input_rds_instance_allow_major_version_upgrade"></a> [rds\_instance\_allow\_major\_version\_upgrade](#input\_rds\_instance\_allow\_major\_version\_upgrade) | Allow major version upgrade | `bool` | `false` | no |
| <a name="input_rds_instance_allowed_cidr_blocks"></a> [rds\_instance\_allowed\_cidr\_blocks](#input\_rds\_instance\_allowed\_cidr\_blocks) | The whitelisted CIDRs which to allow ingress traffic to the DB instance | `list(string)` | `[]` | no |
| <a name="input_rds_instance_apply_immediately"></a> [rds\_instance\_apply\_immediately](#input\_rds\_instance\_apply\_immediately) | Specifies whether any database modifications are applied immediately, or during the next maintenance window | `bool` | `true` | no |
| <a name="input_rds_instance_auto_minor_version_upgrade"></a> [rds\_instance\_auto\_minor\_version\_upgrade](#input\_rds\_instance\_auto\_minor\_version\_upgrade) | Allow automated minor version upgrade (e.g. from Postgres 9.5.3 to Postgres 9.5.4) | `bool` | `true` | no |
| <a name="input_rds_instance_backup_retention_period"></a> [rds\_instance\_backup\_retention\_period](#input\_rds\_instance\_backup\_retention\_period) | Backup retention period in days. Must be > 0 to enable backups | `number` | `0` | no |
| <a name="input_rds_instance_backup_window"></a> [rds\_instance\_backup\_window](#input\_rds\_instance\_backup\_window) | When AWS can perform DB snapshots, can't overlap with maintenance window | `string` | `"22:00-03:00"` | no |
| <a name="input_rds_instance_ca_cert_identifier"></a> [rds\_instance\_ca\_cert\_identifier](#input\_rds\_instance\_ca\_cert\_identifier) | The identifier of the CA certificate for the DB instance | `string` | `null` | no |
| <a name="input_rds_instance_copy_tags_to_snapshot"></a> [rds\_instance\_copy\_tags\_to\_snapshot](#input\_rds\_instance\_copy\_tags\_to\_snapshot) | Copy tags from DB to a snapshot | `bool` | `true` | no |
| <a name="input_rds_instance_database_name"></a> [rds\_instance\_database\_name](#input\_rds\_instance\_database\_name) | The name of the database to create when the DB instance is created | `string` | `null` | no |
| <a name="input_rds_instance_database_password"></a> [rds\_instance\_database\_password](#input\_rds\_instance\_database\_password) | Password for the primary DB user. Required unless a snapshot\_identifier or replicate\_source\_db is provided. | `string` | `""` | no |
| <a name="input_rds_instance_database_port"></a> [rds\_instance\_database\_port](#input\_rds\_instance\_database\_port) | Database port (\_e.g.\_ 3306 for MySQL). Used in the DB Security Group to allow access to the DB instance from the provided security\_group\_ids | `number` | `5432` | no |
| <a name="input_rds_instance_database_user"></a> [rds\_instance\_database\_user](#input\_rds\_instance\_database\_user) | The name of the database to create when the DB instance is created | `string` | `"admin"` | no |
| <a name="input_rds_instance_db_options"></a> [rds\_instance\_db\_options](#input\_rds\_instance\_db\_options) | A list of DB options to apply with an option group. Depends on DB engine | <pre>list(object({<br>    db_security_group_memberships  = list(string)<br>    option_name                    = string<br>    port                           = number<br>    version                        = string<br>    vpc_security_group_memberships = list(string)<br><br>    option_settings = list(object({<br>      name  = string<br>      value = string<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_rds_instance_db_parameter"></a> [rds\_instance\_db\_parameter](#input\_rds\_instance\_db\_parameter) | A list of DB parameters to apply. Note that parameters may differ from a DB family to another | <pre>list(object({<br>    apply_method = string<br>    name         = string<br>    value        = string<br>  }))</pre> | `[]` | no |
| <a name="input_rds_instance_db_parameter_group"></a> [rds\_instance\_db\_parameter\_group](#input\_rds\_instance\_db\_parameter\_group) | The DB parameter group family name. The value depends on DB engine used. See [DBParameterGroupFamily](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBParameterGroup.html#API_CreateDBParameterGroup_RequestParameters) for instructions on how to retrieve applicable value | `string` | `"postgres16"` | no |
| <a name="input_rds_instance_db_parameter_group_name"></a> [rds\_instance\_db\_parameter\_group\_name](#input\_rds\_instance\_db\_parameter\_group\_name) | Name of the DB parameter group to associate. | `string` | `""` | no |
| <a name="input_rds_instance_dns_zone_id"></a> [rds\_instance\_dns\_zone\_id](#input\_rds\_instance\_dns\_zone\_id) | The ID of the DNS Zone in Route53 where a new DNS record will be created for the DB host name | `string` | `""` | no |
| <a name="input_rds_instance_enabled"></a> [rds\_instance\_enabled](#input\_rds\_instance\_enabled) | Enable creation of an RDS instance | `bool` | `false` | no |
| <a name="input_rds_instance_engine"></a> [rds\_instance\_engine](#input\_rds\_instance\_engine) | Database engine type. Required unless a snapshot\_identifier or replicate\_source\_db is provided. For supported values, see the Engine parameter in API action CreateDBInstance. | `string` | `"sqlserver-*"` | no |
| <a name="input_rds_instance_engine_version"></a> [rds\_instance\_engine\_version](#input\_rds\_instance\_engine\_version) | Database engine version, depends on engine type. Required unless a snapshot\_identifier or replicate\_source\_db is provided. | `string` | `"16.2"` | no |
| <a name="input_rds_instance_host_name"></a> [rds\_instance\_host\_name](#input\_rds\_instance\_host\_name) | The DB host name created in Route53 | `string` | `"db"` | no |
| <a name="input_rds_instance_instance_class"></a> [rds\_instance\_instance\_class](#input\_rds\_instance\_instance\_class) | Class of RDS instance | `string` | `"db.t3.medium"` | no |
| <a name="input_rds_instance_iops"></a> [rds\_instance\_iops](#input\_rds\_instance\_iops) | RDS instance IOPS | `number` | `0` | no |
| <a name="input_rds_instance_license_model"></a> [rds\_instance\_license\_model](#input\_rds\_instance\_license\_model) | License model for this DB. Optional, but required for some DB Engines. Valid values: license-included \| bring-your-own-license \| general-public-license | `string` | `""` | no |
| <a name="input_rds_instance_maintenance_window"></a> [rds\_instance\_maintenance\_window](#input\_rds\_instance\_maintenance\_window) | The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi' UTC | `string` | `"Mon:03:00-Mon:04:00"` | no |
| <a name="input_rds_instance_major_engine_version"></a> [rds\_instance\_major\_engine\_version](#input\_rds\_instance\_major\_engine\_version) | major\_engine\_version	Database MAJOR engine version, depends on engine type | `string` | `"16"` | no |
| <a name="input_rds_instance_multi_az"></a> [rds\_instance\_multi\_az](#input\_rds\_instance\_multi\_az) | Set to true if multi AZ deployment must be supported | `bool` | `false` | no |
| <a name="input_rds_instance_name"></a> [rds\_instance\_name](#input\_rds\_instance\_name) | RDS Instance name | `string` | `""` | no |
| <a name="input_rds_instance_name_override"></a> [rds\_instance\_name\_override](#input\_rds\_instance\_name\_override) | If `true`, this will set a the RDS Instance name to what is defined in var.rds\_instance\_name.<br>If `false`, this will prepend ${var.namespace}-${var.environment} to ${var.rds\_instance\_name}" | `bool` | `false` | no |
| <a name="input_rds_instance_option_group_name"></a> [rds\_instance\_option\_group\_name](#input\_rds\_instance\_option\_group\_name) | Name of the DB option group to associate | `string` | `""` | no |
| <a name="input_rds_instance_publicly_accessible"></a> [rds\_instance\_publicly\_accessible](#input\_rds\_instance\_publicly\_accessible) | Determines if database can be publicly available (NOT recommended) | `bool` | `false` | no |
| <a name="input_rds_instance_security_group_ids"></a> [rds\_instance\_security\_group\_ids](#input\_rds\_instance\_security\_group\_ids) | The IDs of the security groups from which to allow ingress traffic to the DB instance | `list(string)` | `[]` | no |
| <a name="input_rds_instance_skip_final_snapshot"></a> [rds\_instance\_skip\_final\_snapshot](#input\_rds\_instance\_skip\_final\_snapshot) | If true (default), no snapshot will be made before deleting DB | `bool` | `true` | no |
| <a name="input_rds_instance_snapshot_identifier"></a> [rds\_instance\_snapshot\_identifier](#input\_rds\_instance\_snapshot\_identifier) | Snapshot identifier e.g: rds:production-2019-06-26-06-05. If specified, the module create cluster from the snapshot | `string` | `null` | no |
| <a name="input_rds_instance_storage_encrypted"></a> [rds\_instance\_storage\_encrypted](#input\_rds\_instance\_storage\_encrypted) | Specifies whether the DB instance is encrypted. The default is false if not specified | `bool` | `true` | no |
| <a name="input_rds_instance_storage_type"></a> [rds\_instance\_storage\_type](#input\_rds\_instance\_storage\_type) | One of 'standard' (magnetic), 'gp2' / 'gp3' (general purpose SSD), or 'io1' (provisioned IOPS SSD) | `string` | `"gp3"` | no |
| <a name="input_rds_instance_subnet_ids"></a> [rds\_instance\_subnet\_ids](#input\_rds\_instance\_subnet\_ids) | List of subnet IDs for the DB. DB instance will be created in the VPC associated with the DB subnet group provisioned using the subnet IDs. Specify one of subnet\_ids, db\_subnet\_group\_name or availability\_zone | `list(string)` | `[]` | no |
| <a name="input_rds_kms_key_arn_override"></a> [rds\_kms\_key\_arn\_override](#input\_rds\_kms\_key\_arn\_override) | Override the default created KMS key to encrypt storage | `string` | `""` | no |
| <a name="input_rds_kms_key_id_override"></a> [rds\_kms\_key\_id\_override](#input\_rds\_kms\_key\_id\_override) | Override the default created KMS key ID to encrypt storage | `string` | `""` | no |
| <a name="input_rds_monitoring_interval"></a> [rds\_monitoring\_interval](#input\_rds\_monitoring\_interval) | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. Valid Values are 0, 1, 5, 10, 15, 30, 60 | `number` | `0` | no |
| <a name="input_rds_random_admin_password_length"></a> [rds\_random\_admin\_password\_length](#input\_rds\_random\_admin\_password\_length) | Length of the generated random password. | `number` | `64` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Terraform regular expression (regex) string.<br>Characters matching the regex will be removed from the ID elements.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Region which the resource is deployed to | `string` | `"us-east-1"` | no |
| <a name="input_s3_kms_alias_override"></a> [s3\_kms\_alias\_override](#input\_s3\_kms\_alias\_override) | Override the KMS key alias for the S3 bucket. Default is set to AWS Managed KMS alias. | `string` | `""` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`).<br>Neither the tag keys nor the tag values will be modified by this module. | `map(string)` | `{}` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | ID element \_(Rarely used, not included by default)\_. A customer identifier, indicating who this instance of a resource is for | `string` | `""` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | A list of DB timeouts to apply to the running code while creating, updating, or deleting the DB instance. | <pre>object({<br>    create = string<br>    update = string<br>    delete = string<br>  })</pre> | <pre>{<br>  "create": "40m",<br>  "delete": "60m",<br>  "update": "80m"<br>}</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | vpc\_id for the VPC to run the cluster. | `string` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | Additional security group IDs to apply to the cluster, in addition to the provisioned default security group with ingress traffic from existing CIDR blocks and existing security groups | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aurora_arn"></a> [aurora\_arn](#output\_aurora\_arn) | Amazon Resource Name (ARN) of cluster |
| <a name="output_aurora_cluster_identifier"></a> [aurora\_cluster\_identifier](#output\_aurora\_cluster\_identifier) | Cluster Identifier |
| <a name="output_aurora_endpoint"></a> [aurora\_endpoint](#output\_aurora\_endpoint) | The DNS address of the RDS instance |
| <a name="output_aurora_master_host"></a> [aurora\_master\_host](#output\_aurora\_master\_host) | DB Master hostname |
| <a name="output_aurora_master_username"></a> [aurora\_master\_username](#output\_aurora\_master\_username) | Username for the master DB user |
| <a name="output_aurora_name"></a> [aurora\_name](#output\_aurora\_name) | Database name |
| <a name="output_aurora_reader_endpoint"></a> [aurora\_reader\_endpoint](#output\_aurora\_reader\_endpoint) | A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas |
| <a name="output_aurora_replicas_host"></a> [aurora\_replicas\_host](#output\_aurora\_replicas\_host) | Replicas hostname |
| <a name="output_rds_instance_arn"></a> [rds\_instance\_arn](#output\_rds\_instance\_arn) | The RDS Instance AWS ARN. |
| <a name="output_rds_instance_endpoint"></a> [rds\_instance\_endpoint](#output\_rds\_instance\_endpoint) | The DNS address to the RDS Instance. |
| <a name="output_rds_instance_hostname"></a> [rds\_instance\_hostname](#output\_rds\_instance\_hostname) | Hostname of the RDS Instance. |
| <a name="output_rds_instance_id"></a> [rds\_instance\_id](#output\_rds\_instance\_id) | The RDS Instance AWS ID. |
| <a name="output_rds_instance_kms_arn"></a> [rds\_instance\_kms\_arn](#output\_rds\_instance\_kms\_arn) | RDS KMS Key ARN |
| <a name="output_rds_instance_kms_id"></a> [rds\_instance\_kms\_id](#output\_rds\_instance\_kms\_id) | Output RDS KMS Key ID if the var.rds\_kms\_key\_arn\_override is "" |
| <a name="output_rds_instance_resource_id"></a> [rds\_instance\_resource\_id](#output\_rds\_instance\_resource\_id) | The RDS Instance AWS resource ID. |
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
go mod init github.com/sourcefuse/terraform-aws-ref-arch-db
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
