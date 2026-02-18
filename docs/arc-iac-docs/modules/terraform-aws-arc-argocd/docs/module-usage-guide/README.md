# Terraform AWS ARC ArgoCD Module Usage Guide

## Introduction

### Purpose of the Document

This document provides comprehensive guidelines and instructions for users implementing the Terraform AWS ARC ArgoCD module for deploying and managing ArgoCD on Amazon EKS clusters.

### Module Overview

The Terraform AWS ARC ArgoCD module provides a secure, production-ready foundation for deploying ArgoCD on AWS EKS. It automates the deployment of ArgoCD with integrated AWS services including Application Load Balancer, ACM certificates, Route53 DNS, and IAM Roles for Service Accounts (IRSA).

**Key Capabilities:**
- GitOps continuous delivery with ArgoCD
- Automated AWS infrastructure provisioning
- Secure pod-level AWS access via IRSA
- High availability configurations
- Enterprise SSO integration
- Automated image update detection

### Prerequisites

Before using this module, ensure you have the following:

- **AWS Credentials**: Configured with appropriate IAM permissions
- **Terraform**: Version >= 1.6.0 installed
- **Existing EKS Cluster**: With OIDC provider enabled
- **kubectl**: Configured to access your EKS cluster
- **VPC Configuration**: With public and private subnets
- **Route53 Hosted Zone**: (Optional) For automatic DNS management
- **Working Knowledge**: AWS EKS, Kubernetes, Helm, and Terraform concepts

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "argocd" {
  source  = "sourcefuse/arc-argocd/aws"
  version = "1.0.0"

  namespace   = "myapp"
  environment = "prod"

  eks_cluster_name      = "my-eks-cluster"
  eks_cluster_endpoint  = "https://XXXXX.gr7.us-east-1.eks.amazonaws.com"
  eks_oidc_provider_url = "oidc.eks.us-east-1.amazonaws.com/id/XXXXX"
  eks_oidc_provider_arn = "arn:aws:iam::123456789:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/XXXXX"
  vpc_id                = "vpc-xxxxx"

  argocd_config = {
    enable  = true
    version = "7.8.13"
  }

  tags = {
    Project   = "myapp"
    ManagedBy = "terraform"
  }
}
```

Refer to the [Terraform Registry](https://registry.terraform.io/modules/sourcefuse/arc-argocd/aws/latest) for the latest version.

### Integration with Existing Terraform Configurations

To integrate the module with your existing Terraform mono repo configuration:

1. **Create Module Directory**
   ```bash
   mkdir -p terraform/argocd
   cd terraform/argocd
   ```

2. **Create Required Files**
   - `main.tf` - Module configuration
   - `variables.tf` - Input variables
   - `outputs.tf` - Output values
   - `providers.tf` - Provider configuration
   - `backend.tf` - Backend configuration

3. **Configure Backend**

   Create environment-specific backend configuration: `config.prod.hcl`
   ```hcl
   region         = "us-east-1"
   key            = "argocd/terraform.tfstate"
   bucket         = "my-terraform-state-bucket"
   dynamodb_table = "terraform-state-lock"
   encrypt        = true
   ```

4. **Initialize and Apply**
   ```bash
   terraform init -backend-config=config.prod.hcl
   terraform plan
   terraform apply
   ```

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create, list, and modify:

- **IAM Resources**
  - IAM roles and policies
  - IAM role policy attachments
  - OIDC provider trust relationships

- **Certificate Manager (ACM)**
  - ACM certificates
  - Certificate validation

- **Route53**
  - Hosted zones (read)
  - DNS records (create, update, delete)

- **Elastic Load Balancing**
  - Application Load Balancers
  - Target groups
  - Listeners

- **EKS/Kubernetes**
  - Kubernetes resources via EKS API
  - Helm releases
  - Service accounts

- **EC2**
  - VPC and subnet information (read)
  - Security groups (read)

## Module Configuration

### Input Variables

For a complete list of input variables with descriptions and types, see the README [Inputs](../../README.md#inputs) section.

**Core Required Variables:**
- `namespace` - Resource namespace prefix
- `environment` - Deployment environment (dev, staging, prod)
- `eks_cluster_name` - EKS cluster name
- `eks_cluster_endpoint` - EKS API endpoint
- `eks_oidc_provider_url` - OIDC provider URL
- `eks_oidc_provider_arn` - OIDC provider ARN

**Key Optional Variables:**
- `argocd_config` - ArgoCD Helm configuration
- `ingress_config` - ALB and ingress settings
- `irsa_config` - IAM roles for service accounts
- `ha_config` - High availability settings
- `image_updater_config` - Image updater configuration

### Output Values

For a complete list of outputs, see the README [Outputs](../../README.md#outputs) section.

**Key Outputs:**
- `argocd_server_url` - ArgoCD UI URL
- `server_iam_role_arn` - Server IRSA role ARN
- `repo_server_iam_role_arn` - Repo-server IRSA role ARN
- `acm_certificate_arn` - ACM certificate ARN
- `route53_record_fqdn` - DNS record FQDN

## Module Usage

### Basic Usage

For basic usage without external access:

```hcl
module "argocd" {
  source = "sourcefuse/arc-argocd/aws"

  namespace   = "myapp"
  environment = "dev"

  eks_cluster_name      = "my-eks-cluster"
  eks_cluster_endpoint  = data.aws_eks_cluster.this.endpoint
  eks_oidc_provider_url = replace(data.aws_eks_cluster.this.identity[0].oidc[0].issuer, "https://", "")
  eks_oidc_provider_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${replace(data.aws_eks_cluster.this.identity[0].oidc[0].issuer, "https://", "")}"
  vpc_id                = data.aws_eks_cluster.this.vpc_config[0].vpc_id

  argocd_config = {
    enable  = true
    version = "7.8.13"
  }

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
```

This basic example creates:
- ArgoCD server, repo-server, and application controller
- Redis cache
- Internal Kubernetes service (no external access)

### Production Usage with External Access

For production deployments with HTTPS access:

```hcl
module "argocd" {
  source = "sourcefuse/arc-argocd/aws"

  namespace   = "myapp"
  environment = "prod"

  eks_cluster_name      = "prod-eks-cluster"
  eks_cluster_endpoint  = data.aws_eks_cluster.this.endpoint
  eks_oidc_provider_url = replace(data.aws_eks_cluster.this.identity[0].oidc[0].issuer, "https://", "")
  eks_oidc_provider_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${replace(data.aws_eks_cluster.this.identity[0].oidc[0].issuer, "https://", "")}"
  vpc_id                = data.aws_eks_cluster.this.vpc_config[0].vpc_id

  argocd_config = {
    enable  = true
    version = "7.8.13"

    helm_release_set_values = [
      {
        name  = "configs.cm.url"
        value = "https://argocd.example.com"
      },
      {
        name  = "configs.params.server\\.insecure"
        value = "true"
      }
    ]
  }

  ingress_config = {
    enable                     = true
    host                       = "argocd.example.com"
    ingress_class_name         = "alb"
    create_acm_certificate     = true
    install_alb_controller     = true
    auto_create_route53_record = true
    route53_zone_name          = "example.com"
    alb_subnets                = ["subnet-xxxxx", "subnet-yyyyy"]
  }

  irsa_config = {
    enable = true
  }

  ha_config = {
    enable               = true
    server_replicas      = 3
    repo_server_replicas = 2
  }

  tags = {
    Environment = "prod"
    ManagedBy   = "terraform"
  }
}
```

### Tips and Recommendations

1. **Use IRSA**: Always enable IRSA for production deployments to follow AWS security best practices
2. **Enable HA**: For production workloads, enable high availability mode with multiple replicas
3. **Version Pinning**: Pin the ArgoCD chart version to avoid unexpected upgrades
4. **Separate Environments**: Use different namespaces and clusters for dev/staging/prod
5. **Backup Strategy**: Regularly backup ArgoCD configuration and application definitions
6. **Monitoring**: Set up CloudWatch alarms for ArgoCD pod health and ALB metrics
7. **Network Segmentation**: Deploy ArgoCD pods in private subnets, expose only via ALB
8. **SSO Integration**: Configure enterprise SSO instead of using the default admin account

## Advanced Configurations

### High Availability Setup

```hcl
ha_config = {
  enable               = true
  server_replicas      = 3
  repo_server_replicas = 2
  controller_replicas  = 1
}
```

### Image Updater Integration

```hcl
image_updater_config = {
  enable  = true
  version = "0.12.0"
  registries = [
    {
      name    = "ecr"
      api_url = "https://123456789.dkr.ecr.us-east-1.amazonaws.com"
      prefix  = "123456789.dkr.ecr.us-east-1.amazonaws.com"
    }
  ]
}
```

### SSO Configuration

```hcl
sso_config = {
  enable   = true
  provider = "github"
  config = {
    clientID     = "github-oauth-client-id"
    clientSecret = "github-oauth-client-secret"
    orgs         = "my-organization"
  }
}
```

### Custom Helm Values

```hcl
argocd_config = {
  enable  = true
  version = "7.8.13"

  helm_release_values = [
    yamlencode({
      configs = {
        cm = {
          "timeout.reconciliation" = "180s"
          "resource.customizations" = <<-EOT
            networking.k8s.io/Ingress:
              health.lua: |
                hs = {}
                hs.status = "Healthy"
                return hs
          EOT
        }
      }
    })
  ]
}
```

## Troubleshooting

### Common Issues

#### 1. ArgoCD UI Returns 504 Gateway Timeout

**Symptoms**: ALB returns 504 error when accessing ArgoCD UI

**Causes**:
- ArgoCD server not running in insecure mode
- Security groups blocking traffic
- Health check configuration incorrect

**Solutions**:
```bash
# Verify ArgoCD is in insecure mode
kubectl get configmap argocd-cmd-params-cm -n argocd -o yaml

# Check pod status
kubectl get pods -n argocd

# Verify ingress
kubectl describe ingress -n argocd
```

#### 2. Certificate Validation Stuck

**Symptoms**: ACM certificate stuck in "Pending Validation"

**Causes**:
- DNS validation records not created
- Route53 zone not accessible
- DNS propagation delay

**Solutions**:
```bash
# Check certificate status
aws acm describe-certificate --certificate-arn <arn>

# Verify DNS records
aws route53 list-resource-record-sets --hosted-zone-id <zone-id>

# Wait 5-10 minutes for DNS propagation
```

#### 3. IRSA Not Working

**Symptoms**: ArgoCD pods cannot access AWS services

**Causes**:
- Service account annotations missing
- OIDC provider not configured
- IAM role trust policy incorrect

**Solutions**:
```bash
# Check service account annotations
kubectl get sa argocd-server -n argocd -o yaml

# Verify OIDC provider
aws eks describe-cluster --name <cluster-name> --query "cluster.identity.oidc"

# Check IAM role trust policy
aws iam get-role --role-name <role-name>
```

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-argocd/issues) with:

- Terraform version
- Module version
- Error messages and logs
- Steps to reproduce
- Expected vs actual behavior

## Security Considerations

### Network Security

- **Private Subnets**: Deploy ArgoCD pods in private subnets
- **Security Groups**: Restrict ingress to ALB only
- **TLS Termination**: Always use HTTPS with ACM certificates
- **Network Policies**: Implement Kubernetes network policies

### Access Control

- **IRSA**: Use IAM roles for service accounts instead of long-lived credentials
- **RBAC**: Configure Kubernetes RBAC for ArgoCD access
- **SSO**: Enable enterprise SSO for user authentication
- **Admin Account**: Disable or rotate admin password after SSO setup

### Best Practices for AWS ArgoCD

Follow these security best practices:

1. **Least Privilege**: Grant minimum required IAM permissions
2. **Encryption**: Enable encryption at rest and in transit
3. **Audit Logging**: Enable ArgoCD audit logs and CloudWatch logging
4. **Secret Management**: Use AWS Secrets Manager or Parameter Store
5. **Image Scanning**: Scan container images for vulnerabilities
6. **Regular Updates**: Keep ArgoCD and dependencies up to date

**References**:
- [ArgoCD Security Best Practices](https://argo-cd.readthedocs.io/en/stable/operator-manual/security/)
- [EKS Security Best Practices](https://aws.github.io/aws-eks-best-practices/security/docs/)
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)

## Examples

### Complete Example

See the [complete example](../../examples/complete/) for a full-featured deployment with:
- External ALB access
- ACM certificate creation
- Route53 DNS automation
- IRSA configuration

### EKS Integration Example

See the [EKS integration example](../../examples/eks-integration/) for deploying both EKS and ArgoCD together.

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](../../CONTRIBUTING.md) file.

**Contribution Process**:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-argocd/issues).

**Include**:
- Clear description of the issue
- Steps to reproduce
- Expected behavior
- Actual behavior
- Environment details

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](../../LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!

## Additional Resources

- [ArgoCD Official Documentation](https://argo-cd.readthedocs.io/)
- [AWS Load Balancer Controller](https://kubernetes-sigs.github.io/aws-load-balancer-controller/)
- [EKS User Guide](https://docs.aws.amazon.com/eks/latest/userguide/)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Module GitHub Repository](https://github.com/sourcefuse/terraform-aws-arc-argocd)

## Support

For commercial support and consulting services:

- **Website**: [SourceFuse](https://www.sourcefuse.com)
- **Email**: support@sourcefuse.com
- **GitHub Issues**: [Report Issues](https://github.com/sourcefuse/terraform-aws-arc-argocd/issues)
