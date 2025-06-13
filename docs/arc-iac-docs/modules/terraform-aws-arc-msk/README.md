![Module Structure](./static/terraform-aws-arc-msk.png)

# [terraform-aws-arc-msk](https://github.com/sourcefuse/terraform-aws-arc-msk)

<a href="https://github.com/sourcefuse/terraform-aws-arc-msk/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-msk.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-msk/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-msk.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-msk&token=ad50d88e1098864c2906ef63bcfb9974003e670d)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-msk)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-msk/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-msk/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing the AWS MSK module.

## Features
- Create an MSK cluster with customizable broker configuration
- Configure encryption in transit and at rest
- Set up authentication methods (SASL/SCRAM, IAM, TLS)
- Enable monitoring with Prometheus JMX and Node exporters
- Configure logging to CloudWatch, Kinesis Firehose, or S3
- Create and manage MSK configurations
- Associate SCRAM secrets for authentication
- Deploy MSK Connectors to stream data in and out of Kafka
- Create and manage custom plugins stored in S3
- Configure MSK Connect worker configuration via properties file
- Deploy MSK Connect connectors with support for autoscaling or provisioned mode

## Introduction

This Terraform module provisions a fully configurable Amazon MSK (Managed Streaming for Apache Kafka) cluster with support for encryption, authentication (IAM, TLS, SASL/SCRAM), monitoring, and logging. It also enables deployment of MSK Connect components including custom plugins, worker configurations, and connectors with autoscaling or provisioned capacity, along with log delivery to CloudWatch, Firehose, or S3—empowering end-to-end Kafka data streaming pipelines.

## Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-msk/blob/feature/fix-docs/examples/simple/main.tf) file in the example folder.  

### Basic Usage
```hcl
module "msk" {
  source      = "sourcefuse/arc-msk/aws"
  version     = "0.0.1"

  cluster_type           = "provisioned"
  cluster_name           = "example-msk-cluster"
  kafka_version          = "3.6.0"
  number_of_broker_nodes = 2
  broker_instance_type   = "kafka.m5.large"
  client_subnets         = data.aws_subnets.public.ids
  security_groups        = [module.security_group.id]
  broker_storage = {
    volume_size = 150
  }

  client_authentication = {
    sasl_scram_enabled           = true # When set to true, this will create secrets in AWS Secrets Manager.
    allow_unauthenticated_access = false
    sasl_iam_enabled             = true
  }
  # Enable CloudWatch logging
  logging_info = {
    cloudwatch_logs_enabled = true
  }

  # Enable monitoring
  monitoring_info = {
    jmx_exporter_enabled  = true
    node_exporter_enabled = true
  }

  tags = module.tags.tags
}
```

### MSK Connect Data Sink: Aurora PostgreSQL to Amazon S3

#### This Terraform example provisions MSK Connect components that enable data ingestion from an Amazon Aurora PostgreSQL database into Amazon S3, using Kafka Connect and Confluent plugins.

Prerequisites:

Before running the Terraform example in  [example/msk-connect](https://github.com/sourcefuse/terraform-aws-arc-msk/blob/feature/fix-docs/examples/msk-connect/main.tf), ensure the following components are pre-configured in your AWS environment:
Aurora PostgreSQL Setup
  - An Aurora PostgreSQL cluster is already created.
  - A database named myapp is created within the cluster.
  - A sample table named users is present under schema public with sample data inserted.

VPC Configuration
  - A VPC Endpoint for S3 (Gateway type) is created to allow private communication between MSK Connect and S3.

Plugins Downloaded and Uploaded to S3

Download the required Kafka Connect plugins and upload them to the appropriate S3 bucket:

JDBC Source Plugin
  - Plugin: [confluentinc-kafka-connect-jdbc-10.6.6.zip](https://www.confluent.io/hub/confluentinc/kafka-connect-jdbc)

S3 Sink Plugin
  - Plugin: [confluentinc-kafka-connect-s3-10.6.6.zip](https://www.confluent.io/hub/confluentinc/kafka-connect-s3)

## Module Overview

Once the above prerequisites are met, you can deploy the Terraform example to configure the data pipeline using:

```hcl
# Source Connector

module "msk_connect" {
  source      = "sourcefuse/arc-msk/aws"
  version     = "0.0.1"

  # Enables MSK Connect components and plugins for source
  create_msk_components        = true
  create_custom_plugin         = true
  create_worker_configuration  = false
  create_connector             = true

  # Plugin and connector configurations
  plugin_name          = "jdbc-pg-plugin"
  plugin_content_type  = "ZIP"
  plugin_description   = "Custom plugin for MSK Connect"
  plugin_s3_bucket_arn = module.s3.bucket_arn
  plugin_s3_file_key   = "confluentinc-kafka-connect-jdbc-10.6.6.zip"

  connector_name       = "msk-pg-connector"
  kafkaconnect_version = "2.7.1"

  connector_configuration = {
    "connector.class" : "io.confluent.connect.jdbc.JdbcSourceConnector",
    ...
    "connection.url" : "jdbc:postgresql://${data.aws_ssm_parameter.db_endpoint.value}:5432/myapp"
  }

  ...
}

# Sink Connector

module "msk_s3_sink" {
  source      = "sourcefuse/arc-msk/aws"
  version     = "0.0.1"

  # Enables MSK Connect components and plugins for destination
  create_msk_components        = true
  create_custom_plugin         = true
  create_worker_configuration  = false
  create_connector             = true

  plugin_name          = "s3-sink-plugin"
  plugin_content_type  = "ZIP"
  plugin_description   = "Custom plugin for MSK Connect"
  plugin_s3_bucket_arn = module.s3.bucket_arn
  plugin_s3_file_key   = "confluentinc-kafka-connect-s3-10.6.6.zip"

  connector_name       = "msk-s3-sink-connector"
  kafkaconnect_version = "2.7.1"

  connector_configuration = {
    "connector.class" : "io.confluent.connect.s3.S3SinkConnector",
    ...
    "s3.bucket.name" : module.s3.bucket_id
  }

  ...
}
```
These modules will create MSK Connect plugins and connectors, enabling a seamless stream of data from PostgreSQL (public.users table) to S3 (cdc_aurora_users topic)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_msk_cluster"></a> [msk\_cluster](#module\_msk\_cluster) | ./modules/standard | n/a |
| <a name="module_msk_connect"></a> [msk\_connect](#module\_msk\_connect) | ./modules/connect | n/a |
| <a name="module_msk_serverless"></a> [msk\_serverless](#module\_msk\_serverless) | ./modules/serverless | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authentication_type"></a> [authentication\_type](#input\_authentication\_type) | Client authentication type (e.g., NONE, IAM) | `string` | `""` | no |
| <a name="input_autoscaling_max_worker_count"></a> [autoscaling\_max\_worker\_count](#input\_autoscaling\_max\_worker\_count) | Maximum number of workers | `number` | `2` | no |
| <a name="input_autoscaling_mcu_count"></a> [autoscaling\_mcu\_count](#input\_autoscaling\_mcu\_count) | Number of MCUs per worker | `number` | `1` | no |
| <a name="input_autoscaling_min_worker_count"></a> [autoscaling\_min\_worker\_count](#input\_autoscaling\_min\_worker\_count) | Minimum number of workers | `number` | `2` | no |
| <a name="input_az_distribution"></a> [az\_distribution](#input\_az\_distribution) | The distribution of broker nodes across availability zones. Currently the only valid value is DEFAULT | `string` | `"DEFAULT"` | no |
| <a name="input_bootstrap_servers"></a> [bootstrap\_servers](#input\_bootstrap\_servers) | Bootstrap servers for the Kafka cluster | `string` | `""` | no |
| <a name="input_broker_instance_type"></a> [broker\_instance\_type](#input\_broker\_instance\_type) | Specify the instance type to use for the kafka brokers. e.g. kafka.m5.large | `string` | `"kafka.m5.large"` | no |
| <a name="input_broker_storage"></a> [broker\_storage](#input\_broker\_storage) | Broker EBS storage configuration | <pre>object({<br/>    volume_size                    = number<br/>    provisioned_throughput_enabled = optional(bool, false)<br/>    volume_throughput              = optional(number)<br/>  })</pre> | <pre>{<br/>  "volume_size": 100<br/>}</pre> | no |
| <a name="input_capacity_mode"></a> [capacity\_mode](#input\_capacity\_mode) | The capacity mode for MSK Connect: 'autoscaling' or 'provisioned' | `string` | `"autoscaling"` | no |
| <a name="input_client_authentication"></a> [client\_authentication](#input\_client\_authentication) | Cluster-level client authentication options | <pre>object({<br/>    sasl_scram_enabled             = optional(bool, false)<br/>    sasl_iam_enabled               = optional(bool, true)<br/>    tls_certificate_authority_arns = optional(list(string), [])<br/>    allow_unauthenticated_access   = optional(bool, false)<br/>  })</pre> | `{}` | no |
| <a name="input_client_broker_encryption"></a> [client\_broker\_encryption](#input\_client\_broker\_encryption) | Encryption setting for client broker communication. Valid values: TLS, TLS\_PLAINTEXT, and PLAINTEXT | `string` | `"TLS"` | no |
| <a name="input_cloudwatch_retention_in_days"></a> [cloudwatch\_retention\_in\_days](#input\_cloudwatch\_retention\_in\_days) | CloudWatch Retention Period Days | `number` | `7` | no |
| <a name="input_cluster_configuration"></a> [cluster\_configuration](#input\_cluster\_configuration) | Configuration block for MSK | <pre>object({<br/>    create_configuration      = bool<br/>    configuration_name        = optional(string)<br/>    configuration_description = optional(string)<br/>    server_properties         = optional(string)<br/>    configuration_arn         = optional(string)<br/>    configuration_revision    = optional(number)<br/>  })</pre> | <pre>{<br/>  "create_configuration": false<br/>}</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the MSK cluster | `string` | `null` | no |
| <a name="input_cluster_type"></a> [cluster\_type](#input\_cluster\_type) | Type of MSK cluster. Valid values: provisioned ,serverless or null | `string` | `null` | no |
| <a name="input_connectivity_config"></a> [connectivity\_config](#input\_connectivity\_config) | Connectivity settings for public and VPC access | <pre>object({<br/>    public_access_enabled = optional(bool, false)<br/>    public_access_type    = optional(string, "SERVICE_PROVIDED_EIPS") # or "DISABLED"<br/>  })</pre> | `{}` | no |
| <a name="input_connector_configuration"></a> [connector\_configuration](#input\_connector\_configuration) | Configuration map for the connector | `map(string)` | `{}` | no |
| <a name="input_connector_name"></a> [connector\_name](#input\_connector\_name) | Name of the MSK Connect connector | `string` | `""` | no |
| <a name="input_create_cluster_policy"></a> [create\_cluster\_policy](#input\_create\_cluster\_policy) | Whether to create the MSK cluster policy | `bool` | `false` | no |
| <a name="input_create_connector"></a> [create\_connector](#input\_create\_connector) | Whether to create the MSK connector | `bool` | `false` | no |
| <a name="input_create_custom_plugin"></a> [create\_custom\_plugin](#input\_create\_custom\_plugin) | Whether to create the custom plugin | `bool` | `false` | no |
| <a name="input_create_msk_components"></a> [create\_msk\_components](#input\_create\_msk\_components) | Flag to control creation of MSK Standard cluster | `bool` | `false` | no |
| <a name="input_create_worker_configuration"></a> [create\_worker\_configuration](#input\_create\_worker\_configuration) | Whether to create the worker configuration | `bool` | `false` | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | Encryption type (e.g., TLS, PLAINTEXT) | `string` | `""` | no |
| <a name="input_enhanced_monitoring"></a> [enhanced\_monitoring](#input\_enhanced\_monitoring) | Specify the desired enhanced MSK CloudWatch monitoring level. Valid values: DEFAULT, PER\_BROKER, PER\_TOPIC\_PER\_BROKER, or PER\_TOPIC\_PER\_PARTITION | `string` | `"DEFAULT"` | no |
| <a name="input_in_cluster_encryption"></a> [in\_cluster\_encryption](#input\_in\_cluster\_encryption) | Whether data communication among broker nodes is encrypted. Default is true | `bool` | `true` | no |
| <a name="input_kafka_version"></a> [kafka\_version](#input\_kafka\_version) | Specify the desired Kafka software version | `string` | `"3.6.0"` | no |
| <a name="input_kafkaconnect_version"></a> [kafkaconnect\_version](#input\_kafkaconnect\_version) | Version of Kafka Connect | `string` | `""` | no |
| <a name="input_kms_config"></a> [kms\_config](#input\_kms\_config) | Configuration for KMS key. If `create` is true, a new KMS key will be created. If false, provide an existing `key_arn`. | <pre>object({<br/>    create  = optional(bool, false)<br/>    key_arn = optional(string, null)<br/>  })</pre> | <pre>{<br/>  "create": false<br/>}</pre> | no |
| <a name="input_log_delivery_cloudwatch_enabled"></a> [log\_delivery\_cloudwatch\_enabled](#input\_log\_delivery\_cloudwatch\_enabled) | Enable CloudWatch log delivery | `bool` | `false` | no |
| <a name="input_log_delivery_firehose_delivery_stream"></a> [log\_delivery\_firehose\_delivery\_stream](#input\_log\_delivery\_firehose\_delivery\_stream) | Kinesis Firehose delivery stream name | `string` | `""` | no |
| <a name="input_log_delivery_firehose_enabled"></a> [log\_delivery\_firehose\_enabled](#input\_log\_delivery\_firehose\_enabled) | Enable Firehose log delivery | `bool` | `false` | no |
| <a name="input_log_delivery_s3_bucket"></a> [log\_delivery\_s3\_bucket](#input\_log\_delivery\_s3\_bucket) | S3 bucket name for log delivery | `string` | `""` | no |
| <a name="input_log_delivery_s3_enabled"></a> [log\_delivery\_s3\_enabled](#input\_log\_delivery\_s3\_enabled) | Enable S3 log delivery | `bool` | `false` | no |
| <a name="input_log_delivery_s3_prefix"></a> [log\_delivery\_s3\_prefix](#input\_log\_delivery\_s3\_prefix) | S3 prefix for log delivery | `string` | `""` | no |
| <a name="input_logging_config"></a> [logging\_config](#input\_logging\_config) | Logging settings | <pre>object({<br/>    cloudwatch_logs_enabled           = optional(bool, false)<br/>    cloudwatch_log_group              = optional(string)<br/>    cloudwatch_logs_retention_in_days = optional(number)<br/>    firehose_logs_enabled             = optional(bool, false)<br/>    firehose_delivery_stream          = optional(string)<br/>    s3_logs_enabled                   = optional(bool, false)<br/>    s3_logs_bucket                    = optional(string)<br/>    s3_logs_prefix                    = optional(string)<br/>  })</pre> | `{}` | no |
| <a name="input_monitoring_info"></a> [monitoring\_info](#input\_monitoring\_info) | Open monitoring exporter settings | <pre>object({<br/>    jmx_exporter_enabled  = optional(bool, false)<br/>    node_exporter_enabled = optional(bool, false)<br/>  })</pre> | `{}` | no |
| <a name="input_msk_connector_policy_arns"></a> [msk\_connector\_policy\_arns](#input\_msk\_connector\_policy\_arns) | List of IAM policy ARNs to attach to the MSK Connector execution role | `map(string)` | `{}` | no |
| <a name="input_number_of_broker_nodes"></a> [number\_of\_broker\_nodes](#input\_number\_of\_broker\_nodes) | The desired total number of broker nodes in the kafka cluster. It must be a multiple of the number of specified client subnets | `number` | `2` | no |
| <a name="input_plugin_content_type"></a> [plugin\_content\_type](#input\_plugin\_content\_type) | Content type of the plugin (ZIP or JAR) | `string` | `""` | no |
| <a name="input_plugin_description"></a> [plugin\_description](#input\_plugin\_description) | Description of the custom plugin | `string` | `null` | no |
| <a name="input_plugin_name"></a> [plugin\_name](#input\_plugin\_name) | Name of the custom plugin | `string` | `""` | no |
| <a name="input_plugin_s3_bucket_arn"></a> [plugin\_s3\_bucket\_arn](#input\_plugin\_s3\_bucket\_arn) | ARN of the S3 bucket containing the plugin | `string` | `""` | no |
| <a name="input_plugin_s3_file_key"></a> [plugin\_s3\_file\_key](#input\_plugin\_s3\_file\_key) | S3 key of the plugin file | `string` | `""` | no |
| <a name="input_policy_statements"></a> [policy\_statements](#input\_policy\_statements) | List of policy statements for the MSK cluster | <pre>list(object({<br/>    sid       = string<br/>    effect    = string<br/>    actions   = list(string)<br/>    principal = map(any)     # Allow "AWS", "Service", etc.<br/>    resources = list(string) # Optional, fallback to cluster_arn<br/>  }))</pre> | `[]` | no |
| <a name="input_provisioned_mcu_count"></a> [provisioned\_mcu\_count](#input\_provisioned\_mcu\_count) | n/a | `number` | `2` | no |
| <a name="input_provisioned_worker_count"></a> [provisioned\_worker\_count](#input\_provisioned\_worker\_count) | n/a | `number` | `1` | no |
| <a name="input_sasl_iam_enabled"></a> [sasl\_iam\_enabled](#input\_sasl\_iam\_enabled) | Enable IAM-based SASL authentication | `bool` | `true` | no |
| <a name="input_scale_in_cpu_utilization_percentage"></a> [scale\_in\_cpu\_utilization\_percentage](#input\_scale\_in\_cpu\_utilization\_percentage) | CPU utilization percentage for scale-in | `number` | `20` | no |
| <a name="input_scale_out_cpu_utilization_percentage"></a> [scale\_out\_cpu\_utilization\_percentage](#input\_scale\_out\_cpu\_utilization\_percentage) | CPU utilization percentage for scale-out | `number` | `75` | no |
| <a name="input_scram_credentials"></a> [scram\_credentials](#input\_scram\_credentials) | SCRAM credentials for MSK authentication.<br/>- username: Optional. Will be generated if not provided.<br/>- password: Optional. Will be generated if not provided. | <pre>object({<br/>    username = optional(string)<br/>    password = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security group IDs (up to five) | `list(string)` | `[]` | no |
| <a name="input_storage_autoscaling_config"></a> [storage\_autoscaling\_config](#input\_storage\_autoscaling\_config) | Configuration for MSK broker storage autoscaling | <pre>object({<br/>    enabled      = bool<br/>    max_capacity = optional(number, 250)<br/>    role_arn     = optional(string, "")<br/>    target_value = optional(number, 70)<br/>  })</pre> | <pre>{<br/>  "enabled": false<br/>}</pre> | no |
| <a name="input_storage_mode"></a> [storage\_mode](#input\_storage\_mode) | Controls storage mode for supported storage tiers. Valid values are: LOCAL or TIERED | `string` | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs in at least two different Availability Zones | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the MSK resources | `map(string)` | `{}` | no |
| <a name="input_vpc_connections"></a> [vpc\_connections](#input\_vpc\_connections) | A map of MSK VPC connection configurations.<br/>Each key is a unique connection name and value is an object with:<br/>- authentication<br/>- client\_subnets<br/>- security\_groups<br/>- target\_cluster\_arn<br/>- vpc\_id<br/>- tags (optional) | <pre>map(object({<br/>    authentication  = string<br/>    client_subnets  = list(string)<br/>    security_groups = list(string)<br/>    vpc_id          = string<br/>  }))</pre> | `{}` | no |
| <a name="input_vpc_connectivity_client_authentication"></a> [vpc\_connectivity\_client\_authentication](#input\_vpc\_connectivity\_client\_authentication) | Client authentication for VPC connectivity | <pre>object({<br/>    sasl_scram_enabled             = optional(bool, false)<br/>    sasl_iam_enabled               = optional(bool, false)<br/>    tls_certificate_authority_arns = optional(list(string), [])<br/>  })</pre> | `{}` | no |
| <a name="input_worker_config_description"></a> [worker\_config\_description](#input\_worker\_config\_description) | Description of the worker configuration | `string` | `null` | no |
| <a name="input_worker_config_name"></a> [worker\_config\_name](#input\_worker\_config\_name) | Name of the worker configuration | `string` | `""` | no |
| <a name="input_worker_properties_file_content"></a> [worker\_properties\_file\_content](#input\_worker\_properties\_file\_content) | Contents of the connect-distributed.properties file | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bootstrap_brokers"></a> [bootstrap\_brokers](#output\_bootstrap\_brokers) | Bootstrap brokers |
| <a name="output_bootstrap_brokers_public_sasl_iam"></a> [bootstrap\_brokers\_public\_sasl\_iam](#output\_bootstrap\_brokers\_public\_sasl\_iam) | Public SASL IAM bootstrap brokers |
| <a name="output_bootstrap_brokers_public_sasl_scram"></a> [bootstrap\_brokers\_public\_sasl\_scram](#output\_bootstrap\_brokers\_public\_sasl\_scram) | Public SASL SCRAM bootstrap brokers |
| <a name="output_bootstrap_brokers_public_tls"></a> [bootstrap\_brokers\_public\_tls](#output\_bootstrap\_brokers\_public\_tls) | Public TLS bootstrap brokers |
| <a name="output_bootstrap_brokers_sasl_iam"></a> [bootstrap\_brokers\_sasl\_iam](#output\_bootstrap\_brokers\_sasl\_iam) | SASL IAM bootstrap brokers |
| <a name="output_bootstrap_brokers_sasl_scram"></a> [bootstrap\_brokers\_sasl\_scram](#output\_bootstrap\_brokers\_sasl\_scram) | SASL SCRAM bootstrap brokers |
| <a name="output_bootstrap_brokers_tls"></a> [bootstrap\_brokers\_tls](#output\_bootstrap\_brokers\_tls) | TLS bootstrap brokers |
| <a name="output_bootstrap_brokers_vpc_connectivity_sasl_iam"></a> [bootstrap\_brokers\_vpc\_connectivity\_sasl\_iam](#output\_bootstrap\_brokers\_vpc\_connectivity\_sasl\_iam) | VPC SASL IAM bootstrap brokers |
| <a name="output_bootstrap_brokers_vpc_connectivity_sasl_scram"></a> [bootstrap\_brokers\_vpc\_connectivity\_sasl\_scram](#output\_bootstrap\_brokers\_vpc\_connectivity\_sasl\_scram) | VPC SASL SCRAM bootstrap brokers |
| <a name="output_bootstrap_brokers_vpc_connectivity_tls"></a> [bootstrap\_brokers\_vpc\_connectivity\_tls](#output\_bootstrap\_brokers\_vpc\_connectivity\_tls) | VPC TLS bootstrap brokers |
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | Amazon Resource Name (ARN) of the MSK cluster |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | MSK Cluster Name |
| <a name="output_cluster_policy_id"></a> [cluster\_policy\_id](#output\_cluster\_policy\_id) | ID of the MSK cluster policy |
| <a name="output_cluster_uuid"></a> [cluster\_uuid](#output\_cluster\_uuid) | UUID of the MSK cluster |
| <a name="output_configuration_latest_revision"></a> [configuration\_latest\_revision](#output\_configuration\_latest\_revision) | Latest revision of the MSK configuration |
| <a name="output_current_version"></a> [current\_version](#output\_current\_version) | Current version of the MSK cluster |
| <a name="output_kms_key_alias"></a> [kms\_key\_alias](#output\_kms\_key\_alias) | KMS Key Alias |
| <a name="output_msk_connect_connector_arn"></a> [msk\_connect\_connector\_arn](#output\_msk\_connect\_connector\_arn) | ARN of the MSK Connect connector |
| <a name="output_msk_connect_custom_plugin_arn"></a> [msk\_connect\_custom\_plugin\_arn](#output\_msk\_connect\_custom\_plugin\_arn) | ARN of the custom plugin |
| <a name="output_msk_connect_service_execution_role_arn"></a> [msk\_connect\_service\_execution\_role\_arn](#output\_msk\_connect\_service\_execution\_role\_arn) | ARN of the MSK Connector IAM Role |
| <a name="output_msk_connect_worker_configuration_arn"></a> [msk\_connect\_worker\_configuration\_arn](#output\_msk\_connect\_worker\_configuration\_arn) | ARN of the worker configuration |
| <a name="output_serverless_bootstrap_brokers_sasl_iam"></a> [serverless\_bootstrap\_brokers\_sasl\_iam](#output\_serverless\_bootstrap\_brokers\_sasl\_iam) | Bootstrap broker endpoints with SASL IAM |
| <a name="output_serverless_cluster_uuid"></a> [serverless\_cluster\_uuid](#output\_serverless\_cluster\_uuid) | UUID of the MSK serverless cluster |
| <a name="output_serverless_msk_cluster_arn"></a> [serverless\_msk\_cluster\_arn](#output\_serverless\_msk\_cluster\_arn) | ARN of the MSK serverless cluster |
| <a name="output_storage_mode"></a> [storage\_mode](#output\_storage\_mode) | Storage mode for the MSK cluster |
| <a name="output_zookeeper_connect_string"></a> [zookeeper\_connect\_string](#output\_zookeeper\_connect\_string) | Zookeeper connect string |
| <a name="output_zookeeper_connect_string_tls"></a> [zookeeper\_connect\_string\_tls](#output\_zookeeper\_connect\_string\_tls) | Zookeeper TLS connect string |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Versioning  
This project uses a `.version` file at the root of the repo which the pipeline reads from and does a git tag.  

When you intend to commit to `main`, you will need to increment this version. Once the project is merged,
the pipeline will kick off and tag the latest git commit.  

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
