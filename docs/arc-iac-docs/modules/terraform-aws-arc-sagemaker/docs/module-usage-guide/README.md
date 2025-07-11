# Terraform AWS ARC Sagemaker Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS SageMaker AI.

### Module Overview

 A comprehensive Terraform module for creating and managing AWS SageMaker Studio resources — including domains, user profiles, models, endpoints, endpoint configurations, and ML pipelines. This module follows AWS and Terraform best practices, supports advanced customization, integrates seamlessly with IAM and VPC settings, and is designed to enable scalable, secure, and production-ready ML workflows.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, All SageMaker services (Studio, Pipelines, Canvas, etc.), and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-sagemaker" {
  source                 = "sourcefuse/arc-sagemaker/aws"
  version                = "0.0.1"
  name                   = "terraform-arc"
  create_endpoint_config = true
  create_model           = true


  primary_container = {
    image          = "683313688378.dkr.ecr.us-east-1.amazonaws.com/sagemaker-scikit-learn:1.0-1-cpu-py3"
    model_data_url = "s3://your-sagemaker-model-bucket-21-05-25/model/model.tar.gz"
    environment    = {}
  }

  production_variants = [
    {
      variant_name           = "AllTraffic"
      initial_instance_count = 1
      instance_type          = "ml.m5.large"
      initial_variant_weight = 1.0
    }
  ]
  tags = module.tags.tags
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-sagemaker/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Refer to the Terraform Registry for the latest version.

## Integration with Existing Terraform Configurations
Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

- Create a new folder in terraform/sagemaker named .
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

- All SageMaker services (Studio, Pipelines, Canvas, etc.)
- S3 data access and model artifacts  
- CloudWatch logging and monitoring
- VPC and networking configuration

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-sagemaker#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-sagemaker?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-sagemaker/tree/main/examples) folder.

This example will create:

- **SageMaker Studio Domain**: Complete domain setup with VPC integration
- **User Profiles**: Multiple user profiles with customizable settings
- **ML Pipelines**: SageMaker Pipeline support with S3 integration
- **model**: Flexible SageMaker Model creation with configurable containers
- **Endpoint Configurations**: Fine-grained control of production variants, data capture, async inference, and shadow variants
- **Endpoints**: Full deployment configuration including blue/green and rolling updates, rollback alarms, and traffic routing policies

### Tips and Recommendations

- The module focuses on provisioning SageMaker. The convention-based approach enables downstream services to easily attach to the SageMaker. Adjust the configuration parameters as needed for your specific use case.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-sagemaker/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to Sagemaker on AWS when using this module.

### Best Practices for AWS Sagemaker

Follow best practices to ensure secure Sagemaker configurations:

- [AWS Sagemaker Security Best Practices](https://docs.aws.amazon.com/config/latest/developerguide/security-best-practices-for-SageMaker.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-sagemaker/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-sagemaker/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-sagemaker/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
