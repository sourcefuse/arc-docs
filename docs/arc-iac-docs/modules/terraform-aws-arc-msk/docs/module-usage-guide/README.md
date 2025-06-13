# Terraform AWS ARC MSK Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC MSK (Managed Streaming for Apache Kafka) module.

### Module Overview

The Terraform AWS ARC MSK module provides a secure and modular foundation for deploying Amazon MSK (Managed Streaming for Apache Kafka) clusters on AWS. It supports both standard and serverless MSK clusters with comprehensive configuration options for encryption, authentication, monitoring, and logging.
In addition, this module supports configuring MSK Connect connectors to integrate data sources like Amazon Aurora PostgreSQL and destinations like Amazon S3, enabling real-time data streaming pipelines using custom Kafka Connect plugins.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed (version > 1.4, < 2.0.0).
- A working knowledge of AWS VPC, Apache Kafka, MSK, and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "msk" {
  source  = "sourcefuse/arc-msk/aws"
  version = "0.0.1"

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

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-msk/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/ named msk.
- Create the required files, see the examples to base off of.
- Configure with your backend:
   - Create the environment backend configuration file: config.<environment>.hcl
   - region: Where the backend resides
   - key: <working_directory>/terraform.tfstate
   - bucket: Bucket name where the terraform state will reside
   - dynamodb_table: Lock table so there are not duplicate tfplans in the mix
   - encrypt: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- Amazon MSK clusters and configurations
- IAM roles and policies
- KMS keys (if encryption is enabled)
- CloudWatch logs and metrics
- Security groups and VPC resources
- Secrets Manager resources (for SASL/SCRAM authentication)

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-msk#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-msk#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-msk/tree/main/examples/simple) folder.

This example will create:

- An MSK cluster with customizable broker configuration
- Client authentication with SASL/SCRAM
- CloudWatch logging
- Prometheus monitoring with JMX and Node exporters

### Tips and Recommendations

- The module focuses on provisioning secure and scalable MSK clusters. The convention-based approach enables downstream services to easily connect to the Kafka cluster. Adjust the configuration parameters as needed for your specific use case.
- Consider using the storage autoscaling feature for production workloads to handle growing data volumes.
- For high availability, deploy the MSK cluster across multiple availability zones.
- Use appropriate authentication methods (SASL/SCRAM, IAM, TLS) based on your security requirements.
- Enable monitoring and logging for better observability and troubleshooting.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-msk/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to MSK on AWS when using this module:
- MSK clusters should be deployed in private subnets with appropriate security groups.
- Use encryption in transit and at rest for sensitive data.
- Implement proper authentication mechanisms (SASL/SCRAM, IAM, TLS).

### Best Practices for AWS MSK

Follow best practices to ensure secure MSK configurations:

- [AWS MSK Security Best Practices](https://docs.aws.amazon.com/msk/latest/developerguide/security-best-practices.html)
- Enable encryption in transit and at rest
- Use IAM authentication or SASL/SCRAM for client authentication
- Implement proper network isolation using security groups
- Regularly update Kafka versions to benefit from security patches

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-msk/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-msk/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-msk/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
