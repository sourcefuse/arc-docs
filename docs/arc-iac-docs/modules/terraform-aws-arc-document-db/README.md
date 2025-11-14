![Module Structure](./static/banner.png)

# [terraform-aws-arc-document-db](https://github.com/sourcefuse/terraform-aws-arc-document-db)

<a href="https://github.com/sourcefuse/terraform-aws-arc-document-db/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-document-db.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-document-db/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-document-db.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-document-db)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-document-db)


## Overview

The SourceFuse AWS Reference Architecture (ARC) Terraform module for managing AWS DocumentDB offers a streamlined solution for provisioning, configuring, and managing DocumentDB clusters within the Amazon Web Services (AWS) environment. This Terraform module is specifically designed to simplify the deployment and maintenance of DocumentDB clusters with enterprise-grade features including:

- **Multi-AZ Deployment**: High availability across multiple availability zones
- **Global Clusters**: Cross-region replication for disaster recovery
- **Security**: Encryption at rest and in transit, VPC security groups, and Secrets Manager integration
- **Monitoring**: CloudWatch logs, metrics, and event subscriptions
- **Backup & Recovery**: Automated backups with configurable retention periods
- **Parameter Groups**: Custom database parameter configurations

For more information about this repository and its usage, please see [Terraform AWS ARC Document DB Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-document-db/blob/main/docs/module-usage-guide/README.md).

## Usage

To see full examples, check out the [examples](https://github.com/sourcefuse/terraform-aws-arc-document-db/tree/main/examples) folder.


## Examples

### [Basic Cluster](https://github.com/sourcefuse/terraform-aws-arc-document-db/tree/main/examples/basic-cluster)

This example demonstrates a simple DocumentDB cluster setup with basic configuration:

- Single-AZ deployment
- Basic security group configuration
- Standard backup settings
- Minimal configuration for development/testing

```hcl
module "documentdb_cluster" {
  source = "sourcefuse/arc-document-db/aws"

   cluster_identifier = var.cluster_identifier
  master_username    = var.master_username

  instance_count = var.instance_count
  instance_class = var.instance_class

  subnet_config = {
    subnet_ids = data.aws_subnets.private.ids
  }
  vpc_id = data.aws_vpc.vpc.id

  security_group_data = local.security_group_data

  backup_retention_period      = var.backup_retention_period
  preferred_backup_window      = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  skip_final_snapshot          = var.skip_final_snapshot

  storage_encrypted   = var.storage_encrypted
  deletion_protection = var.deletion_protection

  tags = module.tags.tags
}
```

### [Multi-AZ Cluster](https://github.com/sourcefuse/terraform-aws-arc-document-db/tree/main/examples/multi-az-cluster)

This example shows a production-ready multi-AZ DocumentDB cluster with advanced features:

- Multiple instances across availability zones
- Secrets Manager integration for credential management
- KMS encryption with custom keys
- CloudWatch monitoring and alarms
- Custom parameter groups

```hcl
module "documentdb_cluster" {
  source = "sourcefuse/arc-document-db/aws"

cluster_identifier = var.cluster_identifier
  master_username    = var.master_username

  instance_count = var.instance_count
  instance_class = var.instance_class

  subnet_config = {
    subnet_ids = data.aws_subnets.private.ids
  }
  vpc_id = data.aws_vpc.main.id

  security_group_data = local.security_group_data

  # Enable Secrets Manager integration
  secret_config = {
    create                  = true
    name                    = null # Use auto-generated name with random suffix
    recovery_window_in_days = var.secret_recovery_window_in_days
  }

  # Enable KMS encryption
  kms_config = {
    create_key  = true
    description = var.kms_key_description
  }

  # Enhanced backup configuration
  backup_retention_period      = var.backup_retention_period
  preferred_backup_window      = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window

  storage_encrypted   = true
  deletion_protection = var.deletion_protection
  skip_final_snapshot = true

  # Enable CloudWatch logs
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  # Parameter group configuration
  parameter_group_config = {
    create     = true
    family     = var.db_cluster_parameter_group_family
    parameters = var.db_cluster_parameter_group_parameters
  }

  tags = module.tags.tags
}

```

### [Global Cluster Multi-Region](https://github.com/sourcefuse/terraform-aws-arc-document-db/tree/main/examples/global-cluster-multi-region)

This example demonstrates a global DocumentDB cluster spanning multiple AWS regions:

- Primary cluster in us-east-1
- Secondary cluster in us-east-2
- Cross-region replication
- Region-specific configurations
- Disaster recovery setup

```hcl
# Primary cluster in us-east-1
module "primary_cluster" {
  source = "sourcefuse/arc-document-db/aws"

  providers = {
    aws = aws.primary
  }

  cluster_identifier = var.primary_cluster_identifier
  master_username    = var.master_username

  instance_count = var.primary_instance_count
  instance_class = var.primary_instance_class

  subnet_config = {
    subnet_ids = data.aws_subnets.primary_private.ids
  }
  vpc_id = data.aws_vpc.primary.id
  # Use security group rules
  security_group_data = local.primary_security_group_data

  # Global cluster configuration
  create_global_cluster     = true
  global_cluster_identifier = var.global_cluster_identifier

  # Security features
  secret_config = {
    create = true
  }
  kms_config = {
    create_key = true
  }
  storage_encrypted   = true
  deletion_protection = var.deletion_protection

  # Monitoring
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  # Enhanced backup
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot

  tags = module.tags.tags
}

# Secondary cluster in us-west-2
module "secondary_cluster" {
  source = "../../"

  providers = {
    aws = aws.secondary
  }

  cluster_identifier = var.secondary_cluster_identifier

  instance_count = var.secondary_instance_count
  instance_class = var.secondary_instance_class

  subnet_config = {
    subnet_ids = data.aws_subnets.secondary_private.ids
  }
  vpc_id = data.aws_vpc.secondary.id

  # Use security group rules
  security_group_data = local.secondary_security_group_data

  # Global cluster configuration
  existing_global_cluster_identifier = module.primary_cluster.global_cluster_identifier
  is_secondary_cluster               = true

  # Security features (inherit from global cluster)
  kms_config = {
    create_key = true
  }
  storage_encrypted   = true
  deletion_protection = var.deletion_protection
  skip_final_snapshot = var.skip_final_snapshot

  # Monitoring
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  tags                            = module.tags.tags

  depends_on = [module.primary_cluster]
}

```

## Features

### Core Features
- **DocumentDB Cluster Management**: Complete lifecycle management of DocumentDB clusters
- **Instance Configuration**: Flexible instance count and class configuration
- **Network Security**: VPC integration with security group management
- **Backup & Recovery**: Automated backup with configurable retention and windows

### Advanced Features
- **Global Clusters**: Cross-region replication for disaster recovery
- **Secrets Manager Integration**: Secure credential management
- **KMS Encryption**: Custom encryption key management
- **Parameter Groups**: Custom database parameter configurations
- **CloudWatch Integration**: Comprehensive monitoring and logging
- **Event Subscriptions**: SNS notifications for database events

### Security Features
- **Encryption**: At-rest and in-transit encryption
- **Network Isolation**: VPC and security group integration
- **Access Control**: IAM integration and credential management
- **Audit Logging**: Comprehensive audit trail

## Configuration Options

### Consolidated Variables

This module uses consolidated configuration objects to reduce complexity and improve usability:

#### `kms_config`
```hcl
kms_config = {
  create_key  = true
  key_id      = null
  description = "DocumentDB encryption key"
}
```

#### `subnet_config`
```hcl
subnet_config = {
  group_name   = null
  create_group = true
  subnet_ids   = ["subnet-12345", "subnet-67890"]
}
```

#### `secret_config`
```hcl
secret_config = {
  create                  = true
  name                    = null
  description             = "DocumentDB credentials"
  recovery_window_in_days = 7
}
```

#### `parameter_group_config`
```hcl
parameter_group_config = {
  create = true
  family = "docdb4.0"
  parameters = [
    {
      name  = "tls"
      value = "enabled"
    }
  ]
}
```

#### `alarm_config`
```hcl
alarm_config = {
  create_alarms = true
  cpu = {
    threshold          = 80
    evaluation_periods = 2
    period             = 300
  }
  connections = {
    threshold          = 80
    evaluation_periods = 2
    period             = 300
  }
  alarm_actions = ["arn:aws:sns:us-east-1:123456789012:alerts"]
}
```

#### `event_subscription_config`
```hcl
event_subscription_config = {
  create        = true
  name          = "docdb-events"
  sns_topic_arn = "arn:aws:sns:us-east-1:123456789012:docdb-events"
  enabled       = true
  source_type   = "db-cluster"
  event_categories = ["backup", "failure", "maintenance"]
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 7.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.7.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | sourcefuse/arc-kms/aws | 0.0.1 |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | sourcefuse/arc-security-group/aws | 0.0.2 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.audit](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.profiler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_metric_alarm.cpu_utilization](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.database_connections](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_docdb_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster) | resource |
| [aws_docdb_cluster_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance) | resource |
| [aws_docdb_cluster_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group) | resource |
| [aws_docdb_event_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_event_subscription) | resource |
| [aws_docdb_global_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_global_cluster) | resource |
| [aws_docdb_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group) | resource |
| [aws_iam_role.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.additional](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.enhanced_monitoring](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [random_id.secret_suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [random_password.master](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_policy_arns"></a> [additional\_policy\_arns](#input\_additional\_policy\_arns) | List of additional IAM policy ARNs to attach to the Lambda role | `list(string)` | `[]` | no |
| <a name="input_alarm_config"></a> [alarm\_config](#input\_alarm\_config) | CloudWatch alarm configuration for DocumentDB monitoring | <pre>object({<br/>    create_alarms = optional(bool, false)<br/>    cpu = optional(object({<br/>      threshold          = optional(number, 80)<br/>      evaluation_periods = optional(number, 2)<br/>      period             = optional(number, 300)<br/>    }), {})<br/>    connections = optional(object({<br/>      threshold          = optional(number, 80)<br/>      evaluation_periods = optional(number, 2)<br/>      period             = optional(number, 300)<br/>    }), {})<br/>    alarm_actions = optional(list(string), [])<br/>    ok_actions    = optional(list(string), [])<br/>  })</pre> | `{}` | no |
| <a name="input_allow_major_version_upgrade"></a> [allow\_major\_version\_upgrade](#input\_allow\_major\_version\_upgrade) | Enable to allow major engine version upgrades when changing engine versions | `bool` | `false` | no |
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window | `bool` | `true` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Indicates that minor engine upgrades will be applied automatically to the DB cluster during the maintenance window | `bool` | `true` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | A list of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created | `list(string)` | `null` | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The days to retain backups for | `number` | `7` | no |
| <a name="input_ca_cert_identifier"></a> [ca\_cert\_identifier](#input\_ca\_cert\_identifier) | The identifier of the CA certificate for the DB instance | `string` | `null` | no |
| <a name="input_cloudwatch_log_kms_key_id"></a> [cloudwatch\_log\_kms\_key\_id](#input\_cloudwatch\_log\_kms\_key\_id) | The ARN of the KMS Key to use when encrypting log data | `string` | `null` | no |
| <a name="input_cloudwatch_log_retention_in_days"></a> [cloudwatch\_log\_retention\_in\_days](#input\_cloudwatch\_log\_retention\_in\_days) | Specifies the number of days you want to retain log events in the specified log group | `number` | `7` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | The cluster identifier. If omitted, Terraform will assign a random, unique identifier | `string` | `null` | no |
| <a name="input_cluster_identifier_prefix"></a> [cluster\_identifier\_prefix](#input\_cluster\_identifier\_prefix) | Creates a unique cluster identifier beginning with the specified prefix | `string` | `null` | no |
| <a name="input_copy_tags_to_snapshot"></a> [copy\_tags\_to\_snapshot](#input\_copy\_tags\_to\_snapshot) | Copy all Cluster tags to snapshots | `bool` | `false` | no |
| <a name="input_create_global_cluster"></a> [create\_global\_cluster](#input\_create\_global\_cluster) | Whether to create a DocumentDB Global Cluster | `bool` | `false` | no |
| <a name="input_create_monitoring_role"></a> [create\_monitoring\_role](#input\_create\_monitoring\_role) | Whether to create an IAM role for enhanced monitoring | `bool` | `false` | no |
| <a name="input_create_security_group"></a> [create\_security\_group](#input\_create\_security\_group) | Whether to create a security group for the DocumentDB cluster | `bool` | `true` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the database to create when the DB cluster is created | `string` | `null` | no |
| <a name="input_db_cluster_parameter_group_description"></a> [db\_cluster\_parameter\_group\_description](#input\_db\_cluster\_parameter\_group\_description) | Description for the DB cluster parameter group | `string` | `"DocumentDB cluster parameter group"` | no |
| <a name="input_db_parameter_group_name"></a> [db\_parameter\_group\_name](#input\_db\_parameter\_group\_name) | Name of the DB parameter group to associate with instances | `string` | `null` | no |
| <a name="input_db_subnet_group_description"></a> [db\_subnet\_group\_description](#input\_db\_subnet\_group\_description) | Description for the DB subnet group | `string` | `"DocumentDB subnet group"` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | A value that indicates whether the DB cluster has deletion protection enabled | `bool` | `false` | no |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | List of log types to export to cloudwatch | `list(string)` | `[]` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The name of the database engine to be used for this DB cluster | `string` | `"docdb"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The database engine version | `string` | `"4.0.0"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `string` | `"dev"` | no |
| <a name="input_event_subscription_config"></a> [event\_subscription\_config](#input\_event\_subscription\_config) | Configuration for RDS event subscription | <pre>object({<br/>    create           = optional(bool, false)<br/>    name             = optional(string, null)<br/>    sns_topic_arn    = optional(string, null)<br/>    enabled          = optional(bool, true)<br/>    source_type      = optional(string, "db-cluster")<br/>    source_ids       = optional(list(string), [])<br/>    event_categories = optional(list(string), [])<br/>  })</pre> | `{}` | no |
| <a name="input_existing_global_cluster_identifier"></a> [existing\_global\_cluster\_identifier](#input\_existing\_global\_cluster\_identifier) | The identifier of an existing global cluster to join | `string` | `null` | no |
| <a name="input_final_snapshot_identifier"></a> [final\_snapshot\_identifier](#input\_final\_snapshot\_identifier) | The name of your final DB snapshot when this DB cluster is deleted | `string` | `null` | no |
| <a name="input_force_overwrite_replica_secret"></a> [force\_overwrite\_replica\_secret](#input\_force\_overwrite\_replica\_secret) | Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region | `bool` | `false` | no |
| <a name="input_global_cluster_identifier"></a> [global\_cluster\_identifier](#input\_global\_cluster\_identifier) | The global cluster identifier | `string` | `null` | no |
| <a name="input_instance_availability_zones"></a> [instance\_availability\_zones](#input\_instance\_availability\_zones) | List of availability zones for instances. If not specified, instances will be distributed across available AZs | `list(string)` | `null` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | The instance class to use | `string` | `"db.t3.medium"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | Number of instances in the cluster | `number` | `1` | no |
| <a name="input_instance_identifier_prefix"></a> [instance\_identifier\_prefix](#input\_instance\_identifier\_prefix) | Creates a unique identifier beginning with the specified prefix | `string` | `null` | no |
| <a name="input_instance_promotion_tiers"></a> [instance\_promotion\_tiers](#input\_instance\_promotion\_tiers) | Map of instance index to promotion tier (0-15). Lower number = higher priority for promotion | `map(number)` | `{}` | no |
| <a name="input_is_secondary_cluster"></a> [is\_secondary\_cluster](#input\_is\_secondary\_cluster) | Whether this cluster is a secondary cluster in a global cluster | `bool` | `false` | no |
| <a name="input_kms_config"></a> [kms\_config](#input\_kms\_config) | KMS configuration for DocumentDB encryption | <pre>object({<br/>    key_id      = optional(string, null)<br/>    create_key  = optional(bool, false)<br/>    description = optional(string, "DocumentDB cluster encryption key")<br/>  })</pre> | `{}` | no |
| <a name="input_manage_master_user_password"></a> [manage\_master\_user\_password](#input\_manage\_master\_user\_password) | Set to true to allow RDS to manage the master user password in Secrets Manager | `bool` | `true` | no |
| <a name="input_master_password"></a> [master\_password](#input\_master\_password) | Password for the master DB user. If not provided and create\_secret is true, will be auto-generated | `string` | `null` | no |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | Username for the master DB user | `string` | `"docdbadmin"` | no |
| <a name="input_monitoring_interval"></a> [monitoring\_interval](#input\_monitoring\_interval) | The interval for collecting enhanced monitoring metrics. Valid values: 0, 1, 5, 10, 15, 30, 60 | `number` | `0` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Name prefix for resources | `string` | `"docdb"` | no |
| <a name="input_parameter_group_config"></a> [parameter\_group\_config](#input\_parameter\_group\_config) | DB cluster parameter group configuration | <pre>object({<br/>    name   = optional(string, null)<br/>    create = optional(bool, false)<br/>    family = optional(string, "docdb4.0")<br/>    parameters = optional(list(object({<br/>      name  = string<br/>      value = string<br/>    })), [])<br/>  })</pre> | `{}` | no |
| <a name="input_port"></a> [port](#input\_port) | The port on which the DB accepts connections | `number` | `27017` | no |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | The daily time range during which automated backups are created | `string` | `"07:00-09:00"` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The weekly time range during which system maintenance can occur | `string` | `"sun:05:00-sun:06:00"` | no |
| <a name="input_replica_kms_key_id"></a> [replica\_kms\_key\_id](#input\_replica\_kms\_key\_id) | KMS key ID for replica secret encryption | `string` | `null` | no |
| <a name="input_replica_region"></a> [replica\_region](#input\_replica\_region) | Region for replicating the secret | `string` | `null` | no |
| <a name="input_secret_config"></a> [secret\_config](#input\_secret\_config) | Secrets Manager configuration for DocumentDB credentials | <pre>object({<br/>    create                  = optional(bool, false)<br/>    name                    = optional(string, null)<br/>    description             = optional(string, "DocumentDB cluster master credentials")<br/>    recovery_window_in_days = optional(number, 7)<br/>  })</pre> | `{}` | no |
| <a name="input_secret_version_stages"></a> [secret\_version\_stages](#input\_secret\_version\_stages) | Specifies text data that you want to encrypt and store in this version of the secret | `list(string)` | `null` | no |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br/>    security_group_ids_to_attach = optional(list(string), [])<br/>    create                       = optional(bool, true)<br/>    description                  = optional(string, null)<br/>    ingress_rules = optional(list(object({<br/>      description              = optional(string, null)<br/>      cidr_block               = optional(string, null)<br/>      source_security_group_id = optional(string, null)<br/>      from_port                = number<br/>      ip_protocol              = string<br/>      to_port                  = string<br/>      self                     = optional(bool, false)<br/>    })), [])<br/>    egress_rules = optional(list(object({<br/>      description                   = optional(string, null)<br/>      cidr_block                    = optional(string, null)<br/>      destination_security_group_id = optional(string, null)<br/>      from_port                     = number<br/>      ip_protocol                   = string<br/>      to_port                       = string<br/>      prefix_list_id                = optional(string, null)<br/>    })), [])<br/>  })</pre> | <pre>{<br/>  "create": false<br/>}</pre> | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security group IDs to associate with the DocumentDB cluster | `list(string)` | `[]` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | Determines whether a final DB snapshot is created before the DB cluster is deleted | `bool` | `false` | no |
| <a name="input_snapshot_identifier"></a> [snapshot\_identifier](#input\_snapshot\_identifier) | Specifies whether or not to create this cluster from a snapshot | `string` | `null` | no |
| <a name="input_source_db_cluster_identifier"></a> [source\_db\_cluster\_identifier](#input\_source\_db\_cluster\_identifier) | The identifier of the source cluster for global cluster | `string` | `null` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Specifies whether the DB cluster is encrypted | `bool` | `true` | no |
| <a name="input_subnet_config"></a> [subnet\_config](#input\_subnet\_config) | Subnet configuration for DocumentDB cluster | <pre>object({<br/>    group_name   = optional(string, null)<br/>    create_group = optional(bool, true)<br/>    subnet_ids   = optional(list(string), [])<br/>  })</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_treat_missing_data"></a> [treat\_missing\_data](#input\_treat\_missing\_data) | Sets how this alarm is to handle missing data points | `string` | `"missing"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID where the security group will be created | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_alarm_connection_arns"></a> [cloudwatch\_alarm\_connection\_arns](#output\_cloudwatch\_alarm\_connection\_arns) | List of ARNs for database connection CloudWatch alarms |
| <a name="output_cloudwatch_alarm_cpu_arns"></a> [cloudwatch\_alarm\_cpu\_arns](#output\_cloudwatch\_alarm\_cpu\_arns) | List of ARNs for CPU utilization CloudWatch alarms |
| <a name="output_cloudwatch_log_group_audit_arn"></a> [cloudwatch\_log\_group\_audit\_arn](#output\_cloudwatch\_log\_group\_audit\_arn) | The ARN of the CloudWatch log group for audit logs |
| <a name="output_cloudwatch_log_group_audit_name"></a> [cloudwatch\_log\_group\_audit\_name](#output\_cloudwatch\_log\_group\_audit\_name) | The name of the CloudWatch log group for audit logs |
| <a name="output_cloudwatch_log_group_profiler_arn"></a> [cloudwatch\_log\_group\_profiler\_arn](#output\_cloudwatch\_log\_group\_profiler\_arn) | The ARN of the CloudWatch log group for profiler logs |
| <a name="output_cloudwatch_log_group_profiler_name"></a> [cloudwatch\_log\_group\_profiler\_name](#output\_cloudwatch\_log\_group\_profiler\_name) | The name of the CloudWatch log group for profiler logs |
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | Amazon Resource Name (ARN) of the cluster |
| <a name="output_cluster_availability_zones"></a> [cluster\_availability\_zones](#output\_cluster\_availability\_zones) | The availability zones of the cluster |
| <a name="output_cluster_backup_retention_period"></a> [cluster\_backup\_retention\_period](#output\_cluster\_backup\_retention\_period) | The backup retention period |
| <a name="output_cluster_database_name"></a> [cluster\_database\_name](#output\_cluster\_database\_name) | The name of the database |
| <a name="output_cluster_deletion_protection"></a> [cluster\_deletion\_protection](#output\_cluster\_deletion\_protection) | Specifies whether the cluster has deletion protection enabled |
| <a name="output_cluster_enabled_cloudwatch_logs_exports"></a> [cluster\_enabled\_cloudwatch\_logs\_exports](#output\_cluster\_enabled\_cloudwatch\_logs\_exports) | List of log types to export to cloudwatch |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The DNS address of the DocumentDB instance |
| <a name="output_cluster_engine"></a> [cluster\_engine](#output\_cluster\_engine) | The database engine |
| <a name="output_cluster_engine_version"></a> [cluster\_engine\_version](#output\_cluster\_engine\_version) | The database engine version |
| <a name="output_cluster_hosted_zone_id"></a> [cluster\_hosted\_zone\_id](#output\_cluster\_hosted\_zone\_id) | The Route53 Hosted Zone ID of the endpoint |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The DocumentDB cluster identifier |
| <a name="output_cluster_identifier"></a> [cluster\_identifier](#output\_cluster\_identifier) | The DocumentDB cluster identifier |
| <a name="output_cluster_kms_key_id"></a> [cluster\_kms\_key\_id](#output\_cluster\_kms\_key\_id) | The ARN for the KMS encryption key |
| <a name="output_cluster_members"></a> [cluster\_members](#output\_cluster\_members) | List of DocumentDB Instances that are a part of this cluster |
| <a name="output_cluster_port"></a> [cluster\_port](#output\_cluster\_port) | The database port |
| <a name="output_cluster_preferred_backup_window"></a> [cluster\_preferred\_backup\_window](#output\_cluster\_preferred\_backup\_window) | The daily time range during which the backups happen |
| <a name="output_cluster_preferred_maintenance_window"></a> [cluster\_preferred\_maintenance\_window](#output\_cluster\_preferred\_maintenance\_window) | The weekly time range during which system maintenance can occur |
| <a name="output_cluster_reader_endpoint"></a> [cluster\_reader\_endpoint](#output\_cluster\_reader\_endpoint) | A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas |
| <a name="output_cluster_resource_id"></a> [cluster\_resource\_id](#output\_cluster\_resource\_id) | The DocumentDB Cluster Resource ID |
| <a name="output_cluster_storage_encrypted"></a> [cluster\_storage\_encrypted](#output\_cluster\_storage\_encrypted) | Specifies whether the DB cluster is encrypted |
| <a name="output_cluster_vpc_security_group_ids"></a> [cluster\_vpc\_security\_group\_ids](#output\_cluster\_vpc\_security\_group\_ids) | List of VPC security groups associated to the cluster |
| <a name="output_db_cluster_parameter_group_arn"></a> [db\_cluster\_parameter\_group\_arn](#output\_db\_cluster\_parameter\_group\_arn) | The ARN of the DB cluster parameter group |
| <a name="output_db_cluster_parameter_group_name"></a> [db\_cluster\_parameter\_group\_name](#output\_db\_cluster\_parameter\_group\_name) | The name of the DB cluster parameter group |
| <a name="output_db_parameter_group_arn"></a> [db\_parameter\_group\_arn](#output\_db\_parameter\_group\_arn) | The ARN of the DB parameter group |
| <a name="output_db_parameter_group_name"></a> [db\_parameter\_group\_name](#output\_db\_parameter\_group\_name) | The name of the DB parameter group |
| <a name="output_db_subnet_group_arn"></a> [db\_subnet\_group\_arn](#output\_db\_subnet\_group\_arn) | The ARN of the DB subnet group |
| <a name="output_db_subnet_group_name"></a> [db\_subnet\_group\_name](#output\_db\_subnet\_group\_name) | The name of the DB subnet group |
| <a name="output_enhanced_monitoring_role_arn"></a> [enhanced\_monitoring\_role\_arn](#output\_enhanced\_monitoring\_role\_arn) | The ARN of the enhanced monitoring IAM role |
| <a name="output_enhanced_monitoring_role_name"></a> [enhanced\_monitoring\_role\_name](#output\_enhanced\_monitoring\_role\_name) | The name of the enhanced monitoring IAM role |
| <a name="output_event_subscription_arn"></a> [event\_subscription\_arn](#output\_event\_subscription\_arn) | The ARN of the DocumentDB event subscription |
| <a name="output_event_subscription_id"></a> [event\_subscription\_id](#output\_event\_subscription\_id) | The ID of the DocumentDB event subscription |
| <a name="output_global_cluster_arn"></a> [global\_cluster\_arn](#output\_global\_cluster\_arn) | Amazon Resource Name (ARN) of the global cluster |
| <a name="output_global_cluster_id"></a> [global\_cluster\_id](#output\_global\_cluster\_id) | The DocumentDB global cluster identifier |
| <a name="output_global_cluster_identifier"></a> [global\_cluster\_identifier](#output\_global\_cluster\_identifier) | The DocumentDB global cluster identifier |
| <a name="output_global_cluster_members"></a> [global\_cluster\_members](#output\_global\_cluster\_members) | List of DocumentDB Clusters that are part of this global cluster |
| <a name="output_global_cluster_resource_id"></a> [global\_cluster\_resource\_id](#output\_global\_cluster\_resource\_id) | The DocumentDB Global Cluster Resource ID |
| <a name="output_instance_arns"></a> [instance\_arns](#output\_instance\_arns) | List of DocumentDB instance ARNs |
| <a name="output_instance_availability_zones"></a> [instance\_availability\_zones](#output\_instance\_availability\_zones) | List of availability zones for the instances |
| <a name="output_instance_ca_cert_identifiers"></a> [instance\_ca\_cert\_identifiers](#output\_instance\_ca\_cert\_identifiers) | List of CA certificate identifiers for the instances |
| <a name="output_instance_classes"></a> [instance\_classes](#output\_instance\_classes) | List of DocumentDB instance classes |
| <a name="output_instance_endpoints"></a> [instance\_endpoints](#output\_instance\_endpoints) | List of DocumentDB instance endpoints |
| <a name="output_instance_engine_versions"></a> [instance\_engine\_versions](#output\_instance\_engine\_versions) | List of database engine versions for the instances |
| <a name="output_instance_engines"></a> [instance\_engines](#output\_instance\_engines) | List of database engines for the instances |
| <a name="output_instance_identifiers"></a> [instance\_identifiers](#output\_instance\_identifiers) | List of DocumentDB instance identifiers |
| <a name="output_instance_ids"></a> [instance\_ids](#output\_instance\_ids) | List of DocumentDB instance identifiers |
| <a name="output_instance_performance_insights_kms_key_ids"></a> [instance\_performance\_insights\_kms\_key\_ids](#output\_instance\_performance\_insights\_kms\_key\_ids) | List of KMS key identifiers for Performance Insights encryption |
| <a name="output_instance_ports"></a> [instance\_ports](#output\_instance\_ports) | List of database ports for the instances |
| <a name="output_instance_promotion_tiers"></a> [instance\_promotion\_tiers](#output\_instance\_promotion\_tiers) | List of promotion tiers for the instances |
| <a name="output_instance_writers"></a> [instance\_writers](#output\_instance\_writers) | List indicating which instances are writers |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | The Amazon Resource Name (ARN) of the key |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | The globally unique identifier for the key |
| <a name="output_master_username"></a> [master\_username](#output\_master\_username) | The master username for the DB cluster |
| <a name="output_secret_arn"></a> [secret\_arn](#output\_secret\_arn) | The ARN of the secret |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | The ID of the secret |
| <a name="output_security_group_arn"></a> [security\_group\_arn](#output\_security\_group\_arn) | The ARN of the security group created for the DocumentDB cluster |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | The ID of the security group created for the DocumentDB cluster |
<!-- END_TF_DOCS -->
## Versioning  
This project uses a 3-digit [Semantic Versioning](https://semver.org/) scheme.

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/sourcefuse/terraform-aws-arc-document-db/issues) to report any bugs or file feature requests.


## License

Apache 2 Licensed. See [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-document-db/blob/main/LICENSE) for full details.
