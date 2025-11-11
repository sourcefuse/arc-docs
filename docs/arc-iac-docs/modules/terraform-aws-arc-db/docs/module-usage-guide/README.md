# AWS ARC DynamoDB Module Usage Guide

## Introduction

This guide provides comprehensive instructions for using the Sourcefuse AWS ARC DynamoDB Terraform module. This module enables you to create and manage Amazon DynamoDB tables with advanced features including autoscaling, global tables, streams, and comprehensive monitoring capabilities.

## Prerequisites

Before using this module, ensure you have:

- **Terraform** >= 1.5.0 installed
- **AWS CLI** configured with appropriate credentials
- **AWS Provider** >= 5.0 configured in your Terraform configuration
- Appropriate **IAM permissions** for DynamoDB operations
- Understanding of **DynamoDB concepts** (partition keys, sort keys, GSI, LSI)

### Required AWS Permissions

Your AWS credentials must have the following permissions:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "dynamodb:CreateTable",
                "dynamodb:UpdateTable",
                "dynamodb:DeleteTable",
                "dynamodb:DescribeTable",
                "dynamodb:ListTables",
                "dynamodb:TagResource",
                "dynamodb:UntagResource",
                "dynamodb:ListTagsOfResource",
                "dynamodb:PutItem",
                "dynamodb:UpdateItem",
                "dynamodb:DeleteItem",
                "dynamodb:GetItem",
                "dynamodb:Scan",
                "dynamodb:Query",
                "dynamodb:BatchGetItem",
                "dynamodb:BatchWriteItem",
                "application-autoscaling:RegisterScalableTarget",
                "application-autoscaling:DeregisterScalableTarget",
                "application-autoscaling:PutScalingPolicy",
                "application-autoscaling:DeleteScalingPolicy",
                "application-autoscaling:Describe*",
                "iam:CreateServiceLinkedRole",
                "kms:Describe*",
                "kms:List*"
            ],
            "Resource": "*"
        }
    ]
}
```

## Getting Started

### Basic Usage

Here's a simple example to create a DynamoDB table:

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

  tags = {
    Environment = "production"
    Application = "my-app"
  }
}
```

### Advanced Configuration

For production workloads with autoscaling and monitoring:

```hcl
module "dynamodb_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  # Table Configuration
  table_name   = "user-sessions"
  billing_mode = "PROVISIONED"
  hash_key     = "userId"
  range_key    = "sessionId"

  # Attributes
  attributes = [
    {
      name = "userId"
      type = "S"
    },
    {
      name = "sessionId"
      type = "S"
    },
    {
      name = "lastActivity"
      type = "N"
    }
  ]

  # Capacity
  read_capacity  = 10
  write_capacity = 10

  # Autoscaling
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

  # Global Secondary Index
  global_secondary_indexes = [
    {
      name            = "LastActivityIndex"
      hash_key        = "lastActivity"
      projection_type = "ALL"
      read_capacity   = 5
      write_capacity  = 5
    }
  ]

  # Streams
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  # TTL
  ttl_enabled        = true
  ttl_attribute_name = "expires"

  # Security
  server_side_encryption_enabled = true
  point_in_time_recovery_enabled = true

  tags = {
    Environment = "production"
    Application = "user-management"
  }
}
```

## Common Use Cases

### 1. Serverless Application Table

Perfect for applications with unpredictable traffic:

```hcl
module "serverless_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "serverless-app-data"
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
    }
  ]

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  ttl_enabled        = true
  ttl_attribute_name = "expires_at"
}
```

### 2. Multi-Region Global Table

For applications requiring global availability:

```hcl
module "global_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "global-user-data"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"

  attributes = [
    {
      name = "userId"
      type = "S"
    }
  ]

  replica_regions = [
    {
      region_name = "us-west-2"
    },
    {
      region_name = "eu-west-1"
    },
    {
      region_name = "ap-southeast-1"
    }
  ]

  server_side_encryption_enabled = true
  point_in_time_recovery_enabled = true
}
```

### 3. Gaming Leaderboard with Complex Queries

For gaming applications with multiple query patterns:

```hcl
module "gaming_leaderboard" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "game-leaderboard"
  billing_mode = "PROVISIONED"
  hash_key     = "gameId"
  range_key    = "score"

  attributes = [
    {
      name = "gameId"
      type = "S"
    },
    {
      name = "score"
      type = "N"
    },
    {
      name = "playerId"
      type = "S"
    },
    {
      name = "timestamp"
      type = "N"
    }
  ]

  read_capacity  = 25
  write_capacity = 25

  global_secondary_indexes = [
    {
      name            = "PlayerIndex"
      hash_key        = "playerId"
      range_key       = "timestamp"
      projection_type = "ALL"
      read_capacity   = 10
      write_capacity  = 10
    }
  ]

  local_secondary_indexes = [
    {
      name            = "TimestampIndex"
      range_key       = "timestamp"
      projection_type = "ALL"
    }
  ]

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  autoscaling_enabled = true
  autoscaling_read = {
    max_capacity = 200
    min_capacity = 25
  }
  autoscaling_write = {
    max_capacity = 200
    min_capacity = 25
  }
}
```

### 4. Data Import from S3

For importing existing data into DynamoDB:

```hcl
module "import_table" {
  source = "sourcefuse/arc-dynamodb/aws"

  table_name   = "imported-data"
  billing_mode = "PROVISIONED"
  hash_key     = "id"

  attributes = [
    {
      name = "id"
      type = "S"
    }
  ]

  read_capacity  = 50
  write_capacity = 50

  import_table = {
    s3_bucket_source = {
      bucket     = "my-data-bucket"
      key_prefix = "dynamodb-data/"
    }
    input_format           = "DYNAMODB_JSON"
    input_compression_type = "GZIP"
  }
}
```

## Configuration Reference

### Billing Modes

**PAY_PER_REQUEST (On-Demand)**
- Best for unpredictable workloads
- Automatic scaling
- Pay only for actual requests
- No capacity planning required

**PROVISIONED**
- Best for predictable workloads
- Manual or automatic capacity management
- Lower cost for consistent traffic
- Requires capacity planning

### Index Types

**Global Secondary Index (GSI)**
- Different partition key than base table
- Can have different sort key
- Eventually consistent reads
- Can be added after table creation

**Local Secondary Index (LSI)**
- Same partition key as base table
- Different sort key
- Strongly consistent reads available
- Must be created with table

### Stream Configuration

**Stream View Types:**
- `KEYS_ONLY` - Only key attributes
- `NEW_IMAGE` - Entire item after modification
- `OLD_IMAGE` - Entire item before modification
- `NEW_AND_OLD_IMAGES` - Before and after images

## Best Practices

### 1. Partition Key Design
- Choose high-cardinality partition keys
- Avoid hot partitions
- Use composite keys when necessary

### 2. Capacity Planning
- Start with conservative estimates
- Enable autoscaling for production workloads
- Monitor CloudWatch metrics

### 3. Security
- Enable encryption at rest
- Use IAM policies for fine-grained access control
- Enable point-in-time recovery for critical tables

### 4. Cost Optimization
- Use Standard-IA for infrequently accessed data
- Implement TTL for temporary data
- Monitor and optimize GSI usage

### 5. Monitoring
- Enable CloudWatch contributor insights
- Set up alarms for throttling and errors
- Use DynamoDB streams for real-time processing

## Troubleshooting

### Common Issues

**1. Provisioned Throughput Exceeded**
- Enable autoscaling
- Increase provisioned capacity
- Optimize partition key distribution

**2. Hot Partitions**
- Review partition key design
- Add random suffix to keys
- Use write sharding

**3. Large Item Sizes**
- Use S3 for large objects, store references in DynamoDB
- Compress data before storing
- Split large items across multiple items

**4. Query Performance**
- Use appropriate indexes
- Avoid scan operations
- Implement pagination

## Testing

Test your DynamoDB configuration:

```bash
# Validate Terraform configuration
terraform validate

# Plan the deployment
terraform plan

# Apply with auto-approval (for testing only)
terraform apply -auto-approve

# Test table access
aws dynamodb describe-table --table-name your-table-name
```

## Migration and Import

For existing data migration:

1. **From RDS to DynamoDB**: Use AWS Database Migration Service
2. **From CSV/JSON**: Use the import_table feature
3. **From other NoSQL**: Write custom migration scripts

## Monitoring and Alerting

Set up CloudWatch alarms for:

- Read/Write capacity utilization
- Throttled requests
- System errors
- User errors

Example CloudWatch alarm:

```hcl
resource "aws_cloudwatch_metric_alarm" "dynamodb_throttle" {
  alarm_name          = "dynamodb-throttle-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "ThrottledRequests"
  namespace           = "AWS/DynamoDB"
  period              = "300"
  statistic           = "Sum"
  threshold           = "0"
  alarm_description   = "This metric monitors DynamoDB throttling"

  dimensions = {
    TableName = module.dynamodb_table.dynamodb_table_name
  }
}
```

## Additional Resources

- [DynamoDB Best Practices](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/best-practices.html)
- [DynamoDB Pricing](https://aws.amazon.com/dynamodb/pricing/)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-network-firewall/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
