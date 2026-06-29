# April 2026

### ARC API – Plug and Play to speed Development

1. **Enhanced Authorization Code Security**
   We’ve released a security enhancement for the Authentication Service to strengthen the authorization flow and prevent authorization code reuse vulnerabilities.

**Key Highlights**

- Authorization codes are now strictly single-use.
- Once an authorization code is exchanged for an access token, it can no longer be reused.
- Any subsequent attempts to reuse the same authorization code will return an Unauthorized Access response.
- Enhances overall authentication security and aligns the flow with expected OAuth authorization code behavior.

2. **GitMCP Integration Added to LoopBack4 Microservice Catalog**

We’ve integrated **GitMCP** with the LoopBack4 Microservice Catalog repository, enabling improved MCP-compatible workflows and enhanced developer automation capabilities.

**What’s New**

- Streamlined repository interactions through MCP-enabled workflows
- Simplified automation and improved extensibility for developer tooling
- Better alignment with our evolving AI and agent-driven development ecosystem

[Explore the Repository](https://github.com/sourcefuse/loopback4-microservice-catalog)

Thanks to [Sourav Kashyap](https://github.com/Sourav-kashyap) for this contribution.

3. **OTeL Observability**
   We’re excited to announce the first release of [**@sourceloop/observability**](https://www.npmjs.com/package/@sourceloop/observability) — a vendor-agnostic, cloud-native observability solution built on **OpenTelemetry (OTel)**. This release delivers unified tracing and observability capabilities with support for custom observability profiles including **New Relic**, **Datadog**, and **SigNoz**, built on top of the OTel ecosystem.

**Key Features**

- Vendor-agnostic observability powered by OpenTelemetry (OTel)
- Cloud-native tracing and telemetry support
- Preconfigured profiles for New Relic, Datadog, and SigNoz
- Simplified integration with distributed applications and services
- Flexible and extensible observability architecture

## ARC IaC – Infrastructure Automation at Your Fingertips

1. **Kinesis Firehose Module – Scalable Streaming Data Delivery**

The ARC Terraform module for [Amazon Kinesis Data Firehose](https://github.com/sourcefuse/terraform-aws-arc-kinesis-firehose) simplifies provisioning and managing secure, scalable, and production-ready streaming data pipelines on AWS.

**Key Highlights**

- Supports multiple destinations including S3, Redshift, OpenSearch, and HTTP endpoints
- KMS encryption support with AWS-managed or customer-managed keys
- Lambda-based data transformation and format conversion support
- VPC-enabled delivery for OpenSearch destinations
- Ready-to-use examples for S3, Redshift, OpenSearch, Lambda transformations, and dynamic partitioning

2. **AWS Glue Module – Enterprise Data Integration & ETL**

The ARC Terraform module for AWS Glue simplifies provisioning and managing Data Catalogs, ETL jobs, crawlers, and workflows with enterprise-grade security and scalability.

**Key Highlights**

- Production-grade data integration and ETL workflows on AWS
- End-to-end AWS Glue infrastructure management
- KMS encryption, IAM role management, and VPC integration
- Support for Spark, Python Shell, and Ray-based ETL jobs
- Multi-source crawlers with workflow orchestration and scheduling support
- Ready-to-use examples for complete Glue deployments with crawlers, ETL jobs, and workflows
