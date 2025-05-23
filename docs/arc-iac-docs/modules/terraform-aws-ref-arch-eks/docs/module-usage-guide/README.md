# Terraform AWS ARC EKS Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement the Terraform AWS ARC EKS module for setting up and running a production ready EKS cluster.

### Module Overview

The [Terraform AWS ARC EKS](https://github.com/sourcefuse/terraform-aws-arc-eks) module provides a secure and modular foundation for deploying EKS clusters on AWS.

![arc_eks_hla](./static/arc_eks_hla.png)

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS VPC, EKS, Kubernetes, Helm, Karpenter and Terraform concepts.

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "arc-eks" {
  source  = "sourcefuse/arc-eks/aws"
  version = "5.0.16"
  # insert the 8 required variables here
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-eks/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `eks`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/examples) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list and modify:

- EKS cluster
- EKS node groups, EC2 AMIs
- EKS Fargate profile
- Security Groups and Security Group rules
- Cloudwatch Log groups
- IAM roles and policies
- AWS OIDC providers for the account.

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-eks?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-eks?tab=readme-ov-file#outputs) section.

## Module Usage

### Basic Usage

For basic usage, see the [examples/simple](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/examples/simple) folder.

This example will create:

- An EKS cluster.

### Additional Usage Patterns

Below are advanced usage examples enabled by this module to support a range of EKS deployment strategies:

---

#### 1. **EKS with Managed Node Groups**

For EKS Cluster with node-group creation, see the [examples/node-group](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/examples/node-group) folder.

Use `node_group_config` to provision one or more managed node groups with specific instance types, scaling configuration, and networking.

**Key Capabilities:**
- Support for ON_DEMAND and SPOT instances.
- Control over desired, min, and max node counts.
- Custom disk size, AMI type, and instance types.
- Define multiple node groups for various workloads.

**Example Use Case:**
You need a general-purpose node group for application workloads and a spot node group for cost-optimized batch jobs.

**How to Use:**
```hcl
node_group_config = {
  enable          = true
  config = {
  general-ng = {
    node_group_name = "general-nodegroup"
    subnet_ids      = data.aws_subnets.private.ids
    scaling_config = {
      desired_size = 2
      max_size     = 3
      min_size     = 1
    }
    instance_types = ["t3.medium"]
    capacity_type  = "ON_DEMAND"
    disk_size      = 20
    ami_type       = "AL2_x86_64"
  }
  }
}
```

---

#### 2. **EKS with Fargate Profile**

For EKS Cluster with fargate-profile creation, see the [examples/fargate-profile](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/examples/fargate-profile) folder.

Enable `fargate_profile_config` to run specific workloads on AWS Fargate — a serverless compute engine — ideal for lightweight, isolated, or on-demand applications without managing underlying infrastructure.

**Key Capabilities:**
- Eliminates the need to manage EC2 nodes for specific workloads.
- Ideal for low-resource, burstable or security-isolated workloads.
- Assign specific namespaces to Fargate using selectors.

**Example Use Case:**
An `AWS EKS Fargate profile` allows an administrator to declare which pods run on Fargate and specify which pods run on which Fargate profile through selectors.

**How to Use:**
```hcl
fargate_profile_config = {
  enable               = true
  fargate_profile_name = "example"
  subnet_ids           = data.aws_subnets.private.ids
  selectors = [
    {
      namespace = "example"
    }
  ]
}
```

---

#### 3. **Auto Mode Support**

For EKS Cluster with auto-mode creation, see the [examples/auto-mode](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/examples/auto-mode) folder.

This module supports an **Auto Mode** configuration, `EKS Auto Mode` extends AWS management of Kubernetes clusters beyond the cluster itself, to allow AWS to also set up and manage the infrastructure that enables the smooth operation of your workloads.

**Key Capabilities:**
- Simplified Cluster Operations: Automatically provisions production-ready EKS clusters with minimal manual configuration or deep Kubernetes expertise.
- Dynamic Scaling: Continuously adjusts cluster capacity by adding/removing nodes based on application demand, ensuring high availability without manual planning.
- Cost Efficiency: Optimizes compute usage by consolidating workloads and terminating idle instances to reduce operational costs.
- Enhanced Security: Uses immutable, hardened AMIs with SELinux, read-only file systems, and automatic node recycling every 21 days to maintain a strong security posture.
- Automated Maintenance: Keeps your cluster components up to date with automated patching that respects disruption budgets.
- Built-In Add-ons: Includes essential networking, storage, and observability components (e.g., Pod networking, DNS, CSI drivers) without requiring manual add-on setup.
- Custom Node Configuration: Supports creation of custom NodePools and NodeClasses to fine-tune compute, storage, and networking based on workload needs.

**Example Use Case:**
You want to deploy workloads that require automatic scaling based on resource demands.

**How to Use:**
```hcl
module "eks_cluster" {
  source                                = "../../"
  namespace                             = "arc"
  environment                           = "poc"
  kubernetes_version                    = "1.31"
  name                                  = "${var.namespace}-${var.environment}-cluster"
  vpc_config                            = local.vpc_config
  auto_mode_config                      = local.auto_mode_config
  bootstrap_self_managed_addons_enabled = false                       # Make sure this is false for auto-mode creation
  access_config                         = local.access_config
  enable_oidc_provider                  = false
  envelope_encryption                   = local.envelope_encryption
  kubernetes_network_config             = local.kubernetes_network_config
}
```

---

#### 4. **Karpenter Integration**

For EKS Cluster with karpenter creation, see the [examples/karpenter](https://github.com/sourcefuse/terraform-aws-arc-eks/tree/main/examples/karpenter) folder.

Enable `karpenter_config` to provision and manage dynamic compute capacity for Kubernetes workloads using [Karpenter](https://karpenter.sh/).

**Key Capabilities:**
- Auto-provision capacity based on pod requirements.
- Faster scaling and cost-optimization compared to static node groups.
- Fully automated with Helm-based deployment.

**Example Use Case:**
You need highly dynamic compute provisioning with support for heterogeneous workloads and instance types, with minimal manual intervention.

**How to Use:**
```hcl
karpenter_config = {
  enable            = true
  name              = "karpenter"
  namespace         = "karpenter"
  version = "0.36.0"
  helm_release_values = [file("${path.module}/karpenter-helm-values.yaml")]
  helm_release_set_values = [
    {
      name  = "dnsPolicy"
      value = "Default"
    }
  ]
}
```

**Required Setup:**
- Ensure proper tags are applied to subnets and security groups:
```hcl
resource "aws_ec2_tag" "karpenter_discovery" {
  resource_id = <subnet_or_sg_id>
  key         = "karpenter.sh/discovery"
  value       = module.eks_cluster.name
}
```

**NodeClass and NodePool Example:**
```hcl
resource "kubectl_manifest" "karpenter_nodeclass" {
  yaml_body = file("${path.module}/karpenter-nodeclass.yaml")
}
```

---

### Tips and Recommendations

- Use `node_group_config` for granular node group management
- Use `karpenter_config` for dynamic compute provisioning
- Leverage `fargate_profile_config` for low-priority or bursty workloads
- Consider EKS Auto Mode for minimal operational overhead
- Use custom `access_config` to centralize EKS access management


## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-eks/issues).

## Security Considerations

### AWS VPC

Understand the security considerations related to EKS and Kubernetes clusters on AWS when using this module.

### Best Practices for AWS EKS

Follow best practices to ensure secure EKS configurations:

- [EKS security on AWS](https://docs.aws.amazon.com/eks/latest/userguide/security.html)

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-eks/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-eks/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-eks/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
