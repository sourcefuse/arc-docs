# Terraform AWS ARC SQS Module Usage Guide

## Introduction

### Purpose of the Document

This document guides implementation of the Terraform AWS ARC SQS module for managing Amazon SQS queues in AWS infrastructure.

### Module Overview

The Terraform AWS ARC SQS module provides a secure and modular foundation for deploying SQS queues on AWS. This module supports both Standard and FIFO queues, with comprehensive features including:

- Standard and FIFO queue configurations
- Dead Letter Queue (DLQ) support for message failure handling
- Flexible encryption options (SQS-managed SSE or customer-managed KMS keys)
- Configurable message retention, visibility timeouts, and polling settings
- Queue policy management for fine-grained access control

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured
- Terraform version 1.3 or higher installed
- AWS Provider version 5.0 or higher
- A working knowledge of AWS SQS, IAM policies, KMS (optional), and Terraform concepts

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-sqs" {
  source  = "sourcefuse/arc-sqs/aws"
  version = "0.0.1"  # Use the latest version from Terraform Registry

  name = "my-application-queue"

  tags = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-sqs/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

To integrate with an existing Terraform mono repo configuration:

- Create a new folder in `terraform/` named `sqs` or a service-specific name (e.g., `order-processing-queue`)
- Create the required files (see the [examples](https://github.com/sourcefuse/terraform-aws-arc-sqs/tree/main/examples) folder for reference):
  - `main.tf` - Main module configuration
  - `variables.tf` - Variable declarations
  - `outputs.tf` - Output values
  - `versions.tf` - Terraform and provider version constraints
- Configure your Terraform backend:
  - Create the environment backend configuration file: `config.<environment>.hcl`
  - `region`: Where the backend resides
  - `key`: `<working_directory>/terraform.tfstate`
  - `bucket`: Bucket name where the terraform state will reside
  - `dynamodb_table`: Lock table to prevent concurrent terraform operations
  - `encrypt`: Enable encryption for all traffic to and from the backend

### Required AWS Permissions

AWS credentials require permissions to create, list, and modify:

- SQS queues (`sqs:CreateQueue`, `sqs:DeleteQueue`, `sqs:GetQueueAttributes`, `sqs:SetQueueAttributes`, `sqs:TagQueue`, `sqs:UntagQueue`)
- SQS queue policies (`sqs:GetQueueUrl`, `sqs:AddPermission`, `sqs:RemovePermission`)
- KMS keys (if using customer-managed encryption): `kms:CreateKey`, `kms:CreateAlias`, `kms:DescribeKey`, `kms:EnableKeyRotation`, `kms:GetKeyPolicy`, `kms:PutKeyPolicy`, `kms:TagResource`
- IAM policy documents: `iam:GetPolicyDocument` (for data source evaluation)

## Module Configuration

### Input Variables

For all input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-sqs#inputs) section.

Key variables:

- **name**: Name of the SQS queue (required)
- **fifo_config**: Configuration for FIFO queues with message ordering
- **message_config**: Message handling settings (retention, visibility timeout, polling)
- **kms_config**: KMS encryption configuration (key_arn for existing key, create_key for new key)
- **dlq_config**: Dead Letter Queue configuration for handling failed messages
- **policy_config**: Queue access policy configuration
- **tags**: Resource tagging for organization and cost tracking

### Output Values

For all outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-sqs#outputs) section.

Key outputs:

- **queue_id/queue_url**: The URL for accessing the created SQS queue
- **queue_arn**: The ARN of the SQS queue for IAM policies and cross-service integration
- **dlq_id/dlq_arn**: Dead Letter Queue identifiers (if enabled)
- **kms_key_arn**: KMS key ARN (if customer-managed encryption is enabled)

## Module Usage

The module supports multiple use cases:

#### 1. Basic Standard Queue

Simplest configuration for a standard SQS queue. See [examples/basic-standard-queue](https://github.com/sourcefuse/terraform-aws-arc-sqs/tree/main/examples/basic-standard-queue).

```hcl
module "sqs" {
  source = "sourcefuse/arc-sqs/aws"

  name = "my-basic-queue"

  tags = module.tags.tags
}
```

Creates:
- Standard SQS queue with default message retention (4 days)
- SQS-managed encryption (SSE-SQS)
- Default visibility timeout (30 seconds)

#### 2. Standard Queue with Dead Letter Queue

Reliable message processing with failure handling. See [examples/standard-queue-with-dlq](https://github.com/sourcefuse/terraform-aws-arc-sqs/tree/main/examples/standard-queue-with-dlq).

```hcl
module "sqs" {
  source = "sourcefuse/arc-sqs/aws"

  name = "my-queue-with-dlq"

  message_config = {
    retention_seconds         = 345600  # 4 days
    visibility_timeout        = 300     # 5 minutes
    receive_wait_time_seconds = 20      # Enable long polling
  }

  dlq_config = {
    enabled                   = true
    max_receive_count         = 5
    message_retention_seconds = 1209600  # 14 days for troubleshooting
  }

  tags = module.tags.tags
}
```

Creates:
- Standard SQS queue with long polling enabled
- Automatically configured Dead Letter Queue
- Extended retention for failed messages (14 days)

#### 3. FIFO Queue

Strict message ordering and exactly-once processing. See [examples/fifo-queue](https://github.com/sourcefuse/terraform-aws-arc-sqs/tree/main/examples/fifo-queue).

```hcl
module "sqs" {
  source = "sourcefuse/arc-sqs/aws"

  name = "my-fifo-queue.fifo"  # Must end with .fifo

  fifo_config = {
    enabled                     = true
    content_based_deduplication = true
    deduplication_scope         = "messageGroup"
    throughput_limit            = "perMessageGroupId"
  }

  tags = module.tags.tags
}
```

Creates:
- FIFO queue with message ordering guarantees
- Content-based deduplication preventing duplicate processing
- High throughput mode with per-message-group limits

#### 4. Encrypted Queue with KMS

Sensitive data with customer-managed encryption. See [examples/encrypted-queue](https://github.com/sourcefuse/terraform-aws-arc-sqs/tree/main/examples/encrypted-queue).

```hcl
module "sqs" {
  source = "sourcefuse/arc-sqs/aws"

  name = "my-encrypted-queue"

  kms_config = {
    create_key           = true
    deletion_window_days = 30
    rotation_enabled     = true
  }

  tags = module.tags.tags
}
```

Creates:
- SQS queue with customer-managed KMS encryption
- Dedicated KMS key with automatic rotation
- Enhanced security for sensitive workloads

**Alternative - Use existing KMS key:**
```hcl
module "sqs" {
  source = "sourcefuse/arc-sqs/aws"

  name = "my-encrypted-queue"

  kms_config = {
    key_arn = "arn:aws:kms:us-east-1:123456789012:key/abc..."
  }

  tags = module.tags.tags
}
```

#### 5. SNS Fanout Queue

Pub/sub pattern with SNS topic distribution to multiple queues. See [examples/sns-fanout-queue](https://github.com/sourcefuse/terraform-aws-arc-sqs/tree/main/examples/sns-fanout-queue).

```hcl
module "sqs" {
  source = "sourcefuse/arc-sqs/aws"

  name = "my-fanout-queue"

  policy_config = {
    create = true
    source_policy_documents = [
      data.aws_iam_policy_document.sns_publish.json
    ]
  }

  tags = module.tags.tags
}
```

Creates:
- SQS queue configured to receive messages from SNS
- Queue policy granting SNS publish permissions
- Fanout messaging pattern

### Tips and Recommendations

- **Use Dead Letter Queues**: Enable DLQs in production to capture and troubleshoot failed messages instead of losing them after max retries
- **Enable Long Polling**: Set `receive_wait_time_seconds = 20` to reduce empty receives and lower costs
- **Choose the Right Queue Type**: Use FIFO queues only when strict ordering is required, as they have lower throughput limits compared to Standard queues
- **Implement Proper Visibility Timeouts**: Set `visibility_timeout` longer than your processing time to prevent duplicate processing
- **Use KMS for Sensitive Data**: Enable customer-managed encryption for queues handling sensitive information
- **Tag Your Resources**: Use consistent tagging for cost allocation and resource management
- **Monitor Queue Metrics**: Set up CloudWatch alarms for metrics like `ApproximateAgeOfOldestMessage` and `ApproximateNumberOfMessagesVisible`
- **Configure Appropriate Retention**: Balance between storage costs and message recovery needs (default: 4 days, max: 14 days)

## Troubleshooting

### Common Issues

**Issue: FIFO queue name validation error**
- **Solution**: Ensure FIFO queue names end with `.fifo` suffix

**Issue: Messages not appearing in DLQ**
- **Solution**: Verify `max_receive_count` is set appropriately and check the DLQ redrive policy

**Issue: KMS encryption errors**
- **Solution**: Ensure the KMS key policy grants appropriate permissions to SQS service principal and consuming services

**Issue: Access denied when consuming messages**
- **Solution**: Verify IAM policies grant necessary SQS permissions (`sqs:ReceiveMessage`, `sqs:DeleteMessage`, etc.)

### Reporting Issues

Report bugs and issues on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-sqs/issues).

## Security Considerations

### Encryption at Rest

This module supports two encryption methods:

- **SQS-Managed SSE (SSE-SQS)**: Default encryption using AWS-managed keys
- **Customer-Managed KMS (SSE-KMS)**: Enhanced security with customer-controlled key rotation and access policies

For sensitive workloads, use customer-managed KMS encryption with automatic key rotation enabled.

### Queue Access Policies

Implement least-privilege access using queue policies:

- Restrict access to specific AWS accounts or services
- Use condition keys to enforce encryption in transit (`aws:SecureTransport`)
- Limit actions to only what's necessary for each principal

### Best Practices for AWS SQS Security

Follow AWS security best practices when using this module:

- [AWS SQS Security Best Practices](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-security-best-practices.html)
- [AWS KMS Best Practices](https://docs.aws.amazon.com/kms/latest/developerguide/best-practices.html)
- Enable encryption in transit by using HTTPS endpoints
- Regularly rotate KMS keys (automatically handled when `kms_config.create_key = true` with `kms_config.rotation_enabled = true`)
- Monitor queue access using AWS CloudTrail
- Implement proper IAM policies for queue producers and consumers

### Data Privacy

- Enable Dead Letter Queues to prevent data loss
- Set appropriate message retention periods based on compliance requirements
- Use KMS encryption for data subject to regulatory requirements (HIPAA, PCI-DSS, etc.)

## Contributing and Community Support

### Contributing Guidelines

Follow the guidelines in [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-sqs/blob/main/CONTRIBUTING.md).

Contributions welcome:
- Bug fixes and issue reports
- Feature enhancements
- Documentation improvements
- Example implementations

### Reporting Bugs and Issues

Report bugs on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-sqs/issues).

Include:
- Terraform version
- Module version
- Minimal reproduction code
- Expected vs actual behavior
- Relevant error messages or logs

## License

This module is licensed under the Apache 2.0 license. See [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-sqs/blob/main/LICENSE) for details.
