# Terraform AWS ARC Kinesis Firehose Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for using the `terraform-aws-arc-kinesis-firehose` Terraform module to provision Amazon Kinesis Data Firehose delivery streams on AWS.

### Module Overview

The module provisions and manages Kinesis Data Firehose delivery streams with support for multiple destinations, auto-created IAM roles, CloudWatch logging, Lambda transformation, KMS encryption, and dynamic partitioning.

**Supported destinations:** `extended_s3`, `redshift`, `opensearch`, `http_endpoint`

### Prerequisites

- AWS credentials configured (via profile, environment variables, or IAM role)
- Terraform >= 1.3.0
- AWS Provider >= 5.0.0
- A working knowledge of AWS Kinesis Firehose, IAM, and Terraform

---

## Getting Started

### Module Source

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "my-delivery-stream"
  destination = "extended_s3"

  s3_configuration = {
    bucket_arn = aws_s3_bucket.this.arn
  }

  tags = { Environment = "prod" }
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-kinesis-firehose/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

1. Create a new folder in your `terraform/` directory (e.g., `terraform/firehose/`).
2. Create `main.tf`, `variables.tf`, and `outputs.tf` — use the [examples](../../examples) as a starting point.
3. Configure your backend:

```hcl
terraform {
  backend "s3" {
    region         = "<region>"
    key            = "firehose/terraform.tfstate"
    bucket         = "<state-bucket>"
    dynamodb_table = "<lock-table>"
    encrypt        = true
  }
}
```

### Required AWS Permissions

The AWS credentials used to run Terraform must be able to create, list, and modify:

- `firehose:*` — Kinesis Firehose delivery streams
- `iam:CreateRole`, `iam:PutRolePolicy`, `iam:PassRole` — IAM role for Firehose
- `logs:CreateLogGroup`, `logs:CreateLogStream` — CloudWatch log group and stream
- `s3:PutObject`, `s3:GetBucketLocation` — S3 bucket access
- `es:ESHttpPut` (OpenSearch destination) — OpenSearch index writes
- `lambda:InvokeFunction` (if using Lambda transformation)

---

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-kinesis-firehose#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-kinesis-firehose?tab=readme-ov-file#outputs) section.


## Module Usage

### Basic S3

Delivers records to S3 with GZIP compression.

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "my-s3-stream"
  destination = "extended_s3"

  s3_configuration = {
    bucket_arn         = aws_s3_bucket.this.arn
    compression_format = "GZIP"
  }

  tags = { Environment = "prod" }
}
```

See [examples/basic-s3](../../examples/basic-s3).

### S3 with KMS Encryption

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "my-encrypted-stream"
  destination = "extended_s3"

  s3_configuration = {
    bucket_arn = aws_s3_bucket.this.arn
  }

  kms_key_arn = aws_kms_key.this.arn

  tags = { Environment = "prod" }
}
```

See [examples/s3-encrypted](../../examples/s3-encrypted).

### Lambda Transformation

Transforms records with a Lambda function before delivery.

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "my-transform-stream"
  destination = "extended_s3"

  s3_configuration = {
    bucket_arn = aws_s3_bucket.this.arn
  }

  lambda_arn = aws_lambda_function.transformer.arn

  tags = { Environment = "prod" }
}
```

The Lambda function receives a batch of base64-encoded records and must return them with `result: "Ok"`. See [examples/lambda-transform](../../examples/lambda-transform).

### OpenSearch

Delivers records to an Amazon OpenSearch Service domain.

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "my-opensearch-stream"
  destination = "opensearch"

  s3_configuration = {
    bucket_arn = aws_s3_bucket.backup.arn
  }

  opensearch_domain_arn    = aws_opensearch_domain.this.arn
  opensearch_configuration = {
    index_name         = "my-index"
    buffering_interval = 60
    buffering_size     = 1
    s3_backup_mode     = "FailedDocumentsOnly"
  }

  lambda_arn = aws_lambda_function.transformer.arn
  tags       = { Environment = "prod" }
}
```

See [examples/opensearch](../../examples/opensearch).

### Redshift

Stages records in S3 then COPYs them into Redshift.

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "my-redshift-stream"
  destination = "redshift"

  s3_configuration = {
    bucket_arn = aws_s3_bucket.staging.arn
  }

  redshift_configuration = {
    cluster_jdbcurl = "jdbc:redshift://my-cluster.abc.us-east-1.redshift.amazonaws.com:5439/mydb"
    username        = "firehose_user"
    password        = var.redshift_password
    data_table_name = "events"
  }

  tags = { Environment = "prod" }
}
```

See [examples/redshift](../../examples/redshift).

### Dynamic Partitioning

Partitions S3 objects by extracting fields from the record payload using JQ.

```hcl
module "firehose" {
  source  = "sourcefuse/arc-kinesis-firehose/aws"
  version = "0.0.1"

  name        = "partitioned-stream"
  destination = "extended_s3"

  s3_configuration = {
    bucket_arn          = aws_s3_bucket.this.arn
    buffering_size      = 64
    prefix              = "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/"
    error_output_prefix = "errors/!{firehose:error-output-type}/"
  }

  enable_dynamic_partitioning = true

  additional_processors = [{
    type = "MetadataExtraction"
    parameters = [
      { parameter_name = "JsonParsingEngine",       parameter_value = "JQ-1.6" },
      { parameter_name = "MetadataExtractionQuery", parameter_value = "{customer_id:.customer_id}" },
    ]
  }]

  tags = { Environment = "prod" }
}
```

See [examples/dynamic-partitioning](../../examples/dynamic-partitioning).

### Reporting Issues

Report bugs on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-kinesis-firehose/issues).

---

## Security Considerations

- **IAM least privilege:** The auto-created IAM role is scoped to the specific S3 bucket, OpenSearch domain, and Lambda function ARNs provided. Avoid using wildcard ARNs.
- **KMS encryption:** `enable_sse` defaults to `true`. Use a customer-managed KMS key via `kms_key_arn` for sensitive data.
- **OpenSearch access:** Use `sign_aws_requests = true` in the OpenSearch provider instead of embedding passwords. This avoids credential exposure and works reliably with fine-grained access control.
- **S3 backup:** Set `s3_backup_mode = "FailedDocumentsOnly"` (OpenSearch/Redshift) to retain failed records for reprocessing without storing all data twice.

### Best Practices

- [Amazon Kinesis Data Firehose Security](https://docs.aws.amazon.com/firehose/latest/dev/security.html)
- [Amazon OpenSearch Service Security](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/security.html)
- [AWS KMS Best Practices](https://docs.aws.amazon.com/kms/latest/developerguide/best-practices.html)

---

## Contributing and Community Support

Contribute by following the guidelines in [CONTRIBUTING.md](../../CONTRIBUTING.md).

Report bugs and issues on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-kinesis-firehose/issues).

---

## License

This module is licensed under the Apache 2.0 license. See [LICENSE](../../LICENSE) for details.
