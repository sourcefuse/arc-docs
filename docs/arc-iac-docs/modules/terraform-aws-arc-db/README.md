![Module Structure](./static/banner.png)
# [terraform-aws-arc-db](https://github.com/sourcefuse/terraform-aws-arc-db)

<a href="https://github.com/sourcefuse/terraform-aws-arc-db/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-db.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-db/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-db.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-db)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-db)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-ref-arch-db/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-ref-arch-db/actions/workflows/snyk.yaml)

## Overview

The SourceFuse AWS Reference Architecture (ARC) Terraform module offers a comprehensive solution for efficiently managing Aurora, RDS cluster, RDS proxy and RDS (Relational Database Service) instances within the Amazon Web Services (AWS) environment. This Terraform module is designed to streamline the provisioning, configuration, and management of these database instances, leveraging best practices.

For more information about this repository and its usage, please see [Terraform AWS ARC DB Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-db/blob/main/docs/module-usage-guide/README.md).

## Module Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-db/blob/main/example/main.tf) file in the example folder.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.73.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_proxy_security_group"></a> [proxy\_security\_group](#module\_proxy\_security\_group) | ./modules/security-group | n/a |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | ./modules/security-group | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_option_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_option_group) | resource |
| [aws_db_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_db_proxy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_proxy) | resource |
| [aws_db_proxy_default_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_proxy_default_target_group) | resource |
| [aws_db_proxy_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_proxy_target) | resource |
| [aws_db_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_iam_policy.logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.read_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_rds_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster) | resource |
| [aws_rds_cluster_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_instance) | resource |
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.db_secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_ssm_parameter.database_creds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [random_password.master](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_kms_alias.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_alias) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | (optional) Storage for RDS instance | `string` | `20` | no |
| <a name="input_allow_major_version_upgrade"></a> [allow\_major\_version\_upgrade](#input\_allow\_major\_version\_upgrade) | Whether major version upgrades are allowed during maintenance windows. | `bool` | `false` | no |
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Whether to apply changes immediately or during the next maintenance window. | `bool` | `false` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Whether minor engine upgrades are applied automatically during the maintenance window. | `bool` | `true` | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The number of days to retain backups for the DB cluster. | `number` | `7` | no |
| <a name="input_ca_cert_identifier"></a> [ca\_cert\_identifier](#input\_ca\_cert\_identifier) | The identifier of the CA certificate for the DB instance. If not specified, the RDS default CA is used. | `string` | `null` | no |
| <a name="input_ca_certificate_identifier"></a> [ca\_certificate\_identifier](#input\_ca\_certificate\_identifier) | (optional) The CA certificate identifier to use for the DB cluster's server certificate. | `string` | `null` | no |
| <a name="input_copy_tags_to_snapshot"></a> [copy\_tags\_to\_snapshot](#input\_copy\_tags\_to\_snapshot) | Whether to copy all tags to snapshots. | `bool` | `true` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the database to create when the cluster is created. | `string` | `null` | no |
| <a name="input_db_cluster_parameter_group_name"></a> [db\_cluster\_parameter\_group\_name](#input\_db\_cluster\_parameter\_group\_name) | (optional) A cluster parameter group to associate with the cluster. | `string` | `null` | no |
| <a name="input_db_instance_parameter_group_name"></a> [db\_instance\_parameter\_group\_name](#input\_db\_instance\_parameter\_group\_name) | (optional) Instance parameter group to associate with all instances of the DB cluster. The db\_instance\_parameter\_group\_name parameter is only valid in combination with the allow\_major\_version\_upgrade parameter. | `string` | `null` | no |
| <a name="input_db_server_class"></a> [db\_server\_class](#input\_db\_server\_class) | Instance class for RDS instance | `string` | `"db.t3.medium"` | no |
| <a name="input_db_subnet_group_data"></a> [db\_subnet\_group\_data](#input\_db\_subnet\_group\_data) | (optional) DB Subnet Group details | <pre>object({<br>    name        = string<br>    create      = optional(bool, false)<br>    description = optional(string, null)<br>    subnet_ids  = optional(list(string), [])<br>  })</pre> | n/a | yes |
| <a name="input_delete_automated_backups"></a> [delete\_automated\_backups](#input\_delete\_automated\_backups) | (optional) Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is true. | `string` | `true` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Whether to enable deletion protection for the DB cluster. | `bool` | `false` | no |
| <a name="input_enable_multi_az"></a> [enable\_multi\_az](#input\_enable\_multi\_az) | Whether to enable Multi-AZ deployment for the RDS instance. | `bool` | `false` | no |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | List of log types to export to CloudWatch Logs. Valid values: audit, error, general, slowquery. | `list(string)` | `[]` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The database engine to use for the RDS cluster (e.g., aurora, aurora-mysql, aurora-postgresql). | `string` | n/a | yes |
| <a name="input_engine_lifecycle_support"></a> [engine\_lifecycle\_support](#input\_engine\_lifecycle\_support) | (optional) The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are open-source-rds-extended-support, open-source-rds-extended-support-disabled. Default value is open-source-rds-extended-support | `string` | `"open-source-rds-extended-support"` | no |
| <a name="input_engine_mode"></a> [engine\_mode](#input\_engine\_mode) | (optional) Database engine mode. Valid values: global (only valid for Aurora MySQL 1.21 and earlier), parallelquery, provisioned, serverless. Defaults to: provisioned<br>Note :- For Serverless V2 , engine\_mode should be "provisioned" but for simplecity  "serverless" is expected<br>Refer : https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster#rds-serverless-v2-cluster | `string` | `"provisioned"` | no |
| <a name="input_engine_type"></a> [engine\_type](#input\_engine\_type) | (optional) Engine type, valid values are 'rds' or 'cluster' | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The version of the database engine to use. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_final_snapshot_identifier"></a> [final\_snapshot\_identifier](#input\_final\_snapshot\_identifier) | (optional) Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made. | `string` | `null` | no |
| <a name="input_iam_database_authentication_enabled"></a> [iam\_database\_authentication\_enabled](#input\_iam\_database\_authentication\_enabled) | Enable IAM database authentication for the RDS cluster. | `bool` | `false` | no |
| <a name="input_iops"></a> [iops](#input\_iops) | The amount of provisioned IOPS. Required if using io1 storage type. | `number` | `0` | no |
| <a name="input_kms_data"></a> [kms\_data](#input\_kms\_data) | Configuration for KMS key settings for RDS encryption and performance insights:<br>- create: (Optional) If true, a new KMS key is created.<br>- kms\_key\_id: (Optional) The ID of an existing KMS key for RDS encryption. If null it used AWS managed keys<br>- performance\_insights\_kms\_key\_id: (Optional) Key ID for Performance Insights. If null it used AWS managed keys<br>- description: (Optional) description for the KMS key.<br>- policy: (Optional) Specific policy for the KMS key.<br>- deletion\_window\_in\_days: (Optional) Number of days before deletion, default is 7.<br>- enable\_key\_rotation: (Optional) Enables key rotation for security; defaults to true. | <pre>object({<br>    create                          = optional(bool, true)<br>    kms_key_id                      = optional(string, null)<br>    performance_insights_kms_key_id = optional(string, null)<br>    name                            = optional(string, null)<br>    description                     = optional(string, null)<br>    policy                          = optional(string, null)<br>    deletion_window_in_days         = optional(number, 7)<br>    enable_key_rotation             = optional(bool, true)<br>  })</pre> | <pre>{<br>  "create": false<br>}</pre> | no |
| <a name="input_license_model"></a> [license\_model](#input\_license\_model) | The license model for the DB instance (e.g., license-included, bring-your-own-license, general-public-license). | `string` | n/a | yes |
| <a name="input_manage_user_password"></a> [manage\_user\_password](#input\_manage\_user\_password) | (optional) Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if master\_password is provided."<br>null - is equal to 'false', don't set it to false , known bug :  https://github.com/hashicorp/terraform-provider-aws/issues/31179 | `bool` | `null` | no |
| <a name="input_monitoring_interval"></a> [monitoring\_interval](#input\_monitoring\_interval) | The interval, in seconds, between points when Enhanced Monitoring metrics are collected. Valid values are 0, 1, 5, 10, 15, 30, 60. | `number` | `0` | no |
| <a name="input_monitoring_role_arn"></a> [monitoring\_role\_arn](#input\_monitoring\_role\_arn) | The ARN for the IAM role that allows RDS to send Enhanced Monitoring metrics to CloudWatch Logs. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The identifier for the RDS instance or cluster. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | n/a | yes |
| <a name="input_network_type"></a> [network\_type](#input\_network\_type) | (optional) Network type of the cluster. Valid values: IPV4, DUAL. | `string` | `"IPV4"` | no |
| <a name="input_option_group_config"></a> [option\_group\_config](#input\_option\_group\_config) | Configuration for RDS option group, with attributes to create or specify a group name, engine details, and database options including settings, ports, and versions. | <pre>object({<br>    create               = optional(bool, false)<br>    name                 = optional(string, null)<br>    engine_name          = optional(string)<br>    major_engine_version = optional(string)<br>    description          = optional(string, "Managed by Terraform")<br>    options = map(object({<br>      option_name = string<br>      port        = number<br>      version     = string<br>      option_settings = map(object({<br>        name  = string<br>        value = string<br>      }))<br>    }))<br>  })</pre> | <pre>{<br>  "name": null,<br>  "options": {}<br>}</pre> | no |
| <a name="input_parameter_group_config"></a> [parameter\_group\_config](#input\_parameter\_group\_config) | Configuration for RDS parameter group, with options to create or specify a group name, family, and a map of database parameters including settings and apply methods. | <pre>object({<br>    create      = optional(bool, false)<br>    name        = optional(string, null)<br>    family      = optional(string)<br>    description = optional(string, "Managed by Terraform")<br>    parameters = map(object({<br>      name         = string<br>      value        = string<br>      apply_method = optional(string, "immediate") # Options: "immediate" or "pending-reboot"<br>    }))<br>  })</pre> | <pre>{<br>  "name": null,<br>  "parameters": {}<br>}</pre> | no |
| <a name="input_password"></a> [password](#input\_password) | The password for the database. | `string` | `null` | no |
| <a name="input_performance_insights_enabled"></a> [performance\_insights\_enabled](#input\_performance\_insights\_enabled) | (optional) Valid only for Non-Aurora Multi-AZ DB Clusters. Enables Performance Insights for the RDS Cluster | `bool` | `false` | no |
| <a name="input_performance_insights_retention_period"></a> [performance\_insights\_retention\_period](#input\_performance\_insights\_retention\_period) | The retention period (in days) for Performance Insights data. Valid values are 7, 731, or any value between 8 and 730. | `number` | `7` | no |
| <a name="input_port"></a> [port](#input\_port) | Port on which the DB accepts connections | `number` | n/a | yes |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | The daily time range during which backups are taken. | `string` | `"07:00-09:00"` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The weekly time range during which maintenance can occur. | `string` | `"sun:06:00-sun:07:00"` | no |
| <a name="input_proxy_config"></a> [proxy\_config](#input\_proxy\_config) | Configuration object for setting up an AWS RDS Proxy. It includes options for creating the proxy, connection pooling, authentication, and other proxy-specific settings.<br><br>- **create** (optional): A boolean that determines whether to create the RDS Proxy resource. Defaults to false.<br>- **name** (optional): The name of the RDS Proxy. If not specified, Terraform will create a default name.<br>- **engine\_family**: The database engine family for the proxy (e.g., "MYSQL", "POSTGRESQL").<br>- **vpc\_subnet\_ids**: List of VPC subnet IDs in which the proxy will be deployed.<br>- **security\_group\_data**: List of security groups to associate with the RDS Proxy.<br>- **require\_tls** (optional): Boolean flag to enforce the use of TLS for client connections to the proxy. Defaults to false.<br>- **debug\_logging** (optional): Boolean flag to enable debug logging for the proxy. Defaults to false.<br>- **idle\_client\_timeout\_secs** (optional): Number of seconds before the proxy closes idle client connections. The minimum is 60 seconds (1 minute), and the maximum is 28,800 seconds (8 hours). Defaults to 1,800 seconds (30 minutes).<br>- **role\_arn** (optional): The ARN of the IAM role used by the proxy for accessing database credentials in AWS Secrets Manager. If null, Terraform will create a new IAM role.<br><br>Authentication settings:<br>- **auth.auth\_scheme**: The authentication scheme to use (e.g., "SECRETS").<br>- **auth.description** (optional): A description of the authentication method. Defaults to null.<br>- **auth.iam\_auth** (optional): Specifies whether to use IAM authentication for the proxy. Defaults to "DISABLED".<br>- **auth.secret\_arn**: The ARN of the AWS Secrets Manager secret that contains the database credentials.<br>- **auth.client\_password\_auth\_type**: Specifies the password authentication type for the database.<br><br>Connection pool configuration:<br>- **connection\_pool\_config.connection\_borrow\_timeout** (optional): The amount of time (in seconds) a client connection can be held open before being returned to the pool. Defaults to 5 seconds.<br>- **connection\_pool\_config.init\_query** (optional): An optional initialization query executed when a connection is first established. Defaults to null.<br>- **connection\_pool\_config.max\_connections\_percent** (optional): The maximum percentage of available database connections that the proxy can use. Defaults to 100%.<br>- **connection\_pool\_config.max\_idle\_connections\_percent** (optional): The maximum percentage of idle database connections that the proxy can keep open. Defaults to 50%.<br>- **connection\_pool\_config.session\_pinning\_filters** (optional): List of filters for controlling session pinning behavior. Defaults to an empty list. | <pre>object({<br>    create                   = optional(bool, false)<br>    name                     = optional(string, null)<br>    engine_family            = string<br>    vpc_subnet_ids           = list(string)<br>    require_tls              = optional(bool, false)<br>    debug_logging            = optional(bool, false)<br>    idle_client_timeout_secs = optional(number, 30 * 60) // in seconds The minimum is 1 minute and the maximum is 8 hours.<br>    role_arn                 = optional(string, null)    // null value will create new role<br>    auth = object({<br>      auth_scheme               = string<br>      description               = optional(string, null)<br>      iam_auth                  = optional(string, "DISABLED")<br>      client_password_auth_type = string<br>    })<br>    additional_auth_list = optional(list(object({<br>      auth_scheme               = string<br>      secret_arn                = optional(string, null)<br>      description               = optional(string, null)<br>      iam_auth                  = optional(string, "DISABLED")<br>      client_password_auth_type = string<br>    })), [])<br>    connection_pool_config = object({<br>      connection_borrow_timeout    = optional(number, 5)<br>      init_query                   = optional(string, null)<br>      max_connections_percent      = optional(number, 100)<br>      max_idle_connections_percent = optional(number, 50)<br>      session_pinning_filters      = optional(list(string), [])<br>    })<br>    security_group_data = optional(object({<br>      security_group_ids_to_attach = optional(list(string), [])<br>      create                       = optional(bool, true)<br>      description                  = optional(string, null)<br>      ingress_rules = optional(list(object({<br>        description              = optional(string, null)<br>        cidr_block               = optional(string, null)<br>        source_security_group_id = optional(string, null)<br>        from_port                = number<br>        ip_protocol              = string<br>        to_port                  = string<br>        self                     = optional(bool, false)<br>      })), [])<br>      egress_rules = optional(list(object({<br>        description                   = optional(string, null)<br>        cidr_block                    = optional(string, null)<br>        destination_security_group_id = optional(string, null)<br>        from_port                     = number<br>        ip_protocol                   = string<br>        to_port                       = string<br>      })), [])<br>    }))<br>  })</pre> | <pre>{<br>  "auth": null,<br>  "connection_pool_config": null,<br>  "create": false,<br>  "engine_family": "POSTGRESQL",<br>  "security_group_data": {<br>    "create": false<br>  },<br>  "vpc_subnet_ids": []<br>}</pre> | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | Whether the RDS instance should be publicly accessible. | `bool` | `false` | no |
| <a name="input_rds_cluster_instances"></a> [rds\_cluster\_instances](#input\_rds\_cluster\_instances) | "(optional) A list of objects defining configurations for RDS Cluster instances. Each object represents a single RDS instance configuration within the cluster, including options for instance class, monitoring, performance insights, maintenance windows, and other instance-specific settings."<br>    name: Optional. Name of the instance (default: null).<br>    instance\_class: The instance class for the RDS instance (e.g., db.r5.large).<br>    availability\_zone: Optional. Specifies the availability zone for the instance (default: null).<br>    publicly\_accessible: Optional. Whether the instance is publicly accessible (default: false).<br>    db\_parameter\_group\_name: Optional. The name of the DB parameter group to associate with the instance (default: null).<br>    apply\_immediately: Optional. Apply modifications immediately or during the next maintenance window (default: false).<br>    ca\_cert\_identifier: Optional. Identifier for the CA certificate for the instance (default: null).<br>    promotion\_tier: Optional. Promotion tier for the instance within the cluster (default: 0).<br>    copy\_tags\_to\_snapshot: Optional. Copy tags to snapshots (default: true). | <pre>list(object({<br>    name                    = optional(string, null)<br>    instance_class          = string<br>    availability_zone       = optional(string, null)<br>    publicly_accessible     = optional(bool, false)<br>    db_parameter_group_name = optional(string, null)<br>    promotion_tier          = optional(number, 0)<br>    copy_tags_to_snapshot   = optional(bool, true)<br>  }))</pre> | `[]` | no |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br>    security_group_ids_to_attach = optional(list(string), [])<br>    create                       = optional(bool, true)<br>    description                  = optional(string, null)<br>    ingress_rules = optional(list(object({<br>      description              = optional(string, null)<br>      cidr_block               = optional(string, null)<br>      source_security_group_id = optional(string, null)<br>      from_port                = number<br>      ip_protocol              = string<br>      to_port                  = string<br>    })), [])<br>    egress_rules = optional(list(object({<br>      description                   = optional(string, null)<br>      cidr_block                    = optional(string, null)<br>      destination_security_group_id = optional(string, null)<br>      from_port                     = number<br>      ip_protocol                   = string<br>      to_port                       = string<br>    })), [])<br>  })</pre> | <pre>{<br>  "create": false<br>}</pre> | no |
| <a name="input_serverlessv2_scaling_config"></a> [serverlessv2\_scaling\_config](#input\_serverlessv2\_scaling\_config) | Configuration for Serverless V2 scaling:<br>- max\_capacity: (Required) The maximum ACU capacity for scaling (e.g., 256.0).<br>- min\_capacity: (Required) The minimum ACU capacity for scaling (e.g., 0.5). | <pre>object({<br>    max_capacity = number<br>    min_capacity = number<br>  })</pre> | <pre>{<br>  "max_capacity": 1,<br>  "min_capacity": 0.5<br>}</pre> | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | (optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final\_snapshot\_identifier. Default is false. | `string` | `true` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Whether to enable storage encryption. | `bool` | `true` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | (optional) Required for Multi-AZ DB cluster) (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, storage\_type modifications can be done in-place. For Multi-AZ DB Clusters, the iops argument must also be set. Valid values are: "", aurora-iopt1 (Aurora DB Clusters); io1, io2 (Multi-AZ DB Clusters). Default: "" (Aurora DB Clusters); io1 (Multi-AZ DB Clusters). | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the DB Cluster. | `map(string)` | `{}` | no |
| <a name="input_username"></a> [username](#input\_username) | The username for the database. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id for creating security group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Instance or Cluster ARN |
| <a name="output_database"></a> [database](#output\_database) | database name |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | Instance or Cluster Endpoint |
| <a name="output_id"></a> [id](#output\_id) | Instance or Cluster ID |
| <a name="output_identifier"></a> [identifier](#output\_identifier) | Instance or Cluster Identifier |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | Instance or Cluster KM Key ID |
| <a name="output_monitoring_role_arn"></a> [monitoring\_role\_arn](#output\_monitoring\_role\_arn) | Instance or Cluster Monitoring role arn |
| <a name="output_performance_insights_kms_key_id"></a> [performance\_insights\_kms\_key\_id](#output\_performance\_insights\_kms\_key\_id) | Instance or Cluster Performance insight KM Key ID |
| <a name="output_port"></a> [port](#output\_port) | Dtabase server port |
| <a name="output_username"></a> [username](#output\_username) | Username for the Database |
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
