# Terraform AWS ARC Glue Module Usage Guide

## Introduction

### Purpose of the Document

This document provides comprehensive guidelines and instructions for users looking to implement the Terraform AWS Reference Architecture (ARC) Glue module for enterprise-grade data catalog and ETL pipeline infrastructure on AWS.

### Module Overview

The Terraform AWS ARC Glue module provides a secure, modular, and production-ready foundation for deploying AWS Glue resources including data catalogs, ETL jobs, crawlers, workflows, and security configurations. This module implements enterprise best practices for data engineering, data lake implementations, and analytics workloads.

### Prerequisites

Before using this module, ensure you have the following:

- **AWS Account**: Active AWS account with appropriate IAM permissions
- **AWS Credentials**: Configured AWS CLI or environment variables with admin/privileged access
- **Terraform Installed**: Terraform version 1.5 or higher
- **Basic Knowledge**: Understanding of AWS Glue, VPC networking, S3 storage, and Terraform concepts
- **Data Storage**: Existing S3 buckets for data storage and Glue scripts
- **Optional**: VPC infrastructure for private deployments and JDBC connections

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-glue" {
  source  = "git::https://github.com/sourcefuse/terraform-aws-arc-glue.git"
  version = "1.0.0"  # Check latest version in repository

  # Required variables
  namespace   = "mycompany"
  environment = "production"
  name        = "data-lake"
  region      = "us-east-1"
}
```

Refer to the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-glue) for the latest version and release notes.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration by following these steps:

1. **Create Module Directory**
   ```bash
   mkdir -p terraform/glue
   cd terraform/glue
   ```

2. **Create Required Files**
   - `main.tf` - Module configuration
   - `variables.tf` - Variable definitions
   - `terraform.tfvars` - Environment-specific values
   - `backend.tf` - Terraform backend configuration

3. **Configure Backend**
   Create the environment backend configuration file (`config.<environment>.hcl`):
   ```hcl
   region      = "us-east-1"
   key         = "glue/terraform.tfstate"
   bucket      = "my-terraform-state-bucket"
   dynamodb_table = "terraform-state-lock"
   encrypt     = true
   ```

4. **Initialize and Apply**
   ```bash
   terraform init
   terraform plan -out=tfplan
   terraform apply tfplan
   ```

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list, and modify:

- **AWS Glue**: All Glue resources (databases, crawlers, jobs, workflows, triggers, connections)
- **IAM**: Roles, policies, and role attachments for Glue execution
- **S3**: Bucket access for data storage, scripts, and logging
- **KMS**: Key management for encryption operations
- **VPC**: Security groups, VPC endpoints (if using VPC configuration)
- **Secrets Manager**: Secret creation and management (if using connections)
- **CloudWatch**: Log groups and metric creation
- **EC2**: Security group management (if VPC integration enabled)

## Module Configuration

### Core Variables

#### Required Variables

- **`namespace`**: Organization identifier (lowercase alphanumeric, max 24 chars)
- **`environment`**: Environment identifier (dev, staging, prod, etc.)
- **`name`**: Resource prefix for the Glue deployment
- **`region`**: AWS region for resource deployment

#### Optional Variables

- **`tags`**: Default tags applied to all resources
- **`kms_key_arn`**: Custom KMS key for encryption
- **`glue_config`**: Comprehensive Glue resource configuration
- **`iam_config`**: IAM role and permission configuration
- **`vpc_config`**: VPC integration settings
- **`glue_crawlers`**: Map of crawler configurations
- **`glue_jobs`**: Map of ETL job configurations
- **`glue_connections`**: Map of data source connections
- **`secrets_config`**: Secrets Manager configuration

### Input Variables

For a complete list of input variables, see the main README [Inputs](../../README.md#inputs) section.

### Output Values

For a complete list of outputs, see the main README [Outputs](../../README.md#outputs) section.

## Module Usage

### Basic Usage

For basic usage examples, see the [simple example](../../example/simple/) folder.

This example creates:
- **Glue Database**: Basic data catalog database
- **S3 Crawler**: Simple S3 data discovery crawler
- **IAM Role**: Basic execution role with managed policies
- **CloudWatch Logging**: Basic monitoring setup

### Advanced Usage

For enterprise-grade deployments, see the [complete example](../../example/complete/) folder.

This comprehensive example demonstrates:
- **Multiple Job Types**: Spark ETL, Python Shell, and Ray jobs
- **Advanced Crawlers**: S3, JDBC, MongoDB, and Delta Lake crawlers
- **Workflow Orchestration**: Complex multi-step workflows
- **Custom Triggers**: Scheduled, conditional, and event-based triggers
- **External Connections**: RDS, Redshift, and MongoDB integration
- **Security Features**: KMS encryption, VPC integration, secrets management
- **Monitoring**: CloudWatch metrics and logging

### Common Use Cases

#### 1. Data Lake Implementation
```hcl
module "data_lake" {
  source = "git::https://github.com/sourcefuse/terraform-aws-arc-glue.git"

  namespace   = "mycompany"
  environment = "production"
  name        = "enterprise-data-lake"
  region      = "us-east-1"

  glue_config = {
    database = {
      create = true
      name   = "enterprise_data_catalog"
    }
  }

  glue_crawlers = {
    "raw-data" = {
      database_name = "enterprise_data_catalog"
      role_arn      = aws_iam_role.glue.arn
      targets = {
        s3_targets = [{
          path = "s3://raw-data-bucket/"
        }]
      }
      schedule = "cron(0 1 * * ? *)"
    }
  }
}
```

#### 2. ETL Pipeline
```hcl
glue_jobs = {
  "data-transformation" = {
    role_arn     = aws_iam_role.glue.arn
    glue_version = "4.0"
    command = {
      name   = "glueetl"
      script = "s3://scripts/transform.py"
    }
    worker_type       = "G.2X"
    number_of_workers = 20
  }

  "data-quality" = {
    role_arn     = aws_iam_role.glue.arn
    glue_version = "3.0"
    command = {
      name    = "pythonshell"
      script  = "s3://scripts/quality.py"
    }
    max_capacity = 0.0625
  }
}
```

#### 3. Multi-Source Integration
```hcl
glue_connections = {
  "rds-source" = {
    connection_type = "JDBC"
    connection_properties = {
      JDBC_CONNECTION_URL = "jdbc:postgresql://${aws_rds_cluster.main.endpoint}:5432/production"
      USERNAME            = "admin"
      PASSWORD            = aws_secretsmanager_secret_version.db_password.secret_string
    }
    security_groups = [aws_security_group.glue.id]
  }

  "redshift-target" = {
    connection_type = "JDBC"
    connection_properties = {
      JDBC_CONNECTION_URL = "jdbc:redshift://${aws_redshift_cluster.main.endpoint}:5439/datawarehouse"
      USERNAME            = "admin"
      PASSWORD            = aws_secretsmanager_secret_version.redshift_password.secret_string
    }
    security_groups = [aws_security_group.glue.id]
  }
}
```

### Tips and Recommendations

1. **Resource Naming**: Use consistent, descriptive naming conventions
2. **Tagging Strategy**: Implement comprehensive tagging for cost management and governance
3. **Security Groups**: Follow least-privilege access for network security
4. **IAM Permissions**: Regularly audit and minimize permissions
5. **Monitoring**: Enable comprehensive CloudWatch logging and metrics
6. **Testing**: Test jobs in development environment before production deployment
7. **Version Control**: Store all Glue scripts in version control systems
8. **Incremental Processing**: Use job bookmarks for efficient data processing
9. **Cost Optimization**: Choose appropriate worker types and execution classes
10. **Backup Strategy**: Implement state backup and disaster recovery procedures

## Security Considerations

### AWS Glue Security

Understand the security considerations related to AWS Glue when using this module:

#### Data Encryption
- **At Rest**: KMS encryption for data catalog and job artifacts
- **In Transit**: SSL/TLS for all data transfers
- **Key Management**: Custom KMS keys or AWS-managed keys

#### Network Security
- **VPC Integration**: Private subnet deployment for data processing
- **Security Groups**: Controlled access to data sources
- **VPC Endpoints**: Private connectivity to AWS services
- **DNS Resolution**: Private DNS for VPC endpoints

#### Access Control
- **IAM Roles**: Least-privilege execution roles
- **Resource Policies**: Cross-account access controls
- **Secrets Manager**: Secure credential storage
- **Permissions Boundaries**: Role permission constraints

### Best Practices for AWS Glue

Follow best practices to ensure secure Glue configurations:

- **Encryption**: Enable encryption for all data and metadata
- **Network Isolation**: Use VPC deployment for sensitive data
- **Credential Management**: Never hardcode credentials; use Secrets Manager
- **IAM Governance**: Regularly audit and rotate permissions
- **Monitoring**: Enable comprehensive logging and monitoring
- **Compliance**: Align with HIPAA, PCI-DSS, or other regulatory requirements
- **Data Classification**: Implement data classification and handling policies
- **Incident Response**: Establish security incident response procedures

For more information, refer to [AWS Glue Security Best Practices](https://docs.aws.amazon.com/glue/latest/dg/security.html)

## Troubleshooting

### Common Issues

#### 1. Crawler Failures
**Symptoms**: Crawler fails to discover data or times out
**Solutions**:
- Verify IAM permissions for S3 buckets and data sources
- Check network connectivity to data sources
- Increase crawler timeout for large datasets
- Validate data format and schema definitions

#### 2. Job Execution Failures
**Symptoms**: Glue jobs fail during execution
**Solutions**:
- Review CloudWatch Logs: `/aws-glue/jobs/output`
- Verify script locations and permissions in S3
- Check security group rules for data source access
- Validate job parameters and configuration
- Test scripts locally before deployment

#### 3. Connection Issues
**Symptoms**: Unable to connect to JDBC or external data sources
**Solutions**:
- Verify VPC endpoints and route tables
- Check security group ingress/egress rules
- Validate credentials in Secrets Manager
- Test connectivity from Glue to data source
- Review JDBC connection strings and parameters

#### 4. Performance Issues
**Symptoms**: Slow job execution or resource constraints
**Solutions**:
- Optimize worker types and DPU allocation
- Implement job bookmarks for incremental processing
- Use appropriate Glue version for your workloads
- Enable flexible execution class for cost optimization
- Review and optimize data processing logic

### Reporting Issues

If you encounter a bug or issue that's not covered in the troubleshooting section, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-glue/issues) with:

- **Environment Details**: Terraform version, AWS provider version
- **Configuration**: Sanitized module configuration
- **Error Messages**: Complete error logs and stack traces
- **Steps to Reproduce**: Detailed steps to recreate the issue
- **Expected Behavior**: Description of expected functionality

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-glue/issues) with detailed information to help reproduce and resolve the issue.

### Community Support

- **GitHub Issues**: For bug reports and feature requests
- **Documentation**: Comprehensive guides and examples
- **Examples**: Production-ready deployment examples
- **Best Practices**: Security and operational guidelines

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are valuable to the community! Please follow our contributing guidelines and code of conduct.
