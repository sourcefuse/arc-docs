# Terraform AWS ARC Observability Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for deploying Observability stack

### Module Overview

The [terraform-aws-arc-observability-stack](https://github.com/sourcefuse/terraform-aws-arc-observability-stack) module provides a secure and modular foundation for deploying observability stack

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Kuberntes
- CSI driver is installed
- AWS Loadbalancer controller is installed

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "efk" {
  source = "sourcefuse/arc-observability-stack/aws"
  version = "0.0.1"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `observability-stack`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/tree/main/examples/elasticsearch_fleuntd) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to deploy kuberntes objects , AWS parameter store, loadbalancer etc

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-observability-stack?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-observability-stack?tab=readme-ov-file#outputs) section.

## Module Usage

### EFK Stack Usage

For basic usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/tree/main/examples/elasticsearch_fleuntd) folder.

## Resources Deployed by the Module
### 1. Logging Stack (EFK)
- FluentBit or Fluentd: Responsible for collecting and forwarding container logs.
- Elasticsearch or OpenSearch: Centralized log storage and search backend.
- Kibana: Dashboard for visualizing logs and creating queries.
### 2. Monitoring Stack (Prometheus)
- Prometheus: Metrics collection and alerting.
- Alertmanager: Alert routing and management.
- Grafana: Dashboard for visualizing metrics and setting up custom dashboards.
- Blackbox Exporter: Endpoint monitoring to check health and response times.
- Node Exporter: Exposes node-level metrics for monitoring.
- Kube-State-Metrics: Exposes Kubernetes object state metrics.


### Tips and Recommendations

- Users can choose their preferred search engine between AWS OpenSearch and Elasticsearch.
- For log aggregation, users have the flexibility to select either Fluentd or FluentBit based on their requirements.

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to EKS cluster

### Best Practices for Observability stack

Follow best practices to ensure secure Observability configurations:

[EKS Cluster security on AWS](https://docs.aws.amazon.com/eks/latest/best-practices/introduction.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
