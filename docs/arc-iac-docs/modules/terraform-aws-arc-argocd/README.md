![Module Structure](./static/argocd-banner.png)

# [terraform-aws-arc-argocd](https://github.com/sourcefuse/terraform-aws-arc-argocd)

[![Latest Release](https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-argocd.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-argocd/releases/latest)
[![Last Updated](https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-argocd.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-argocd/commits)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-argocd&token=8c09eb33c3523d0e29229b87e4e0f02e7b8245ea)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-argocd)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for deploying and managing ArgoCD on Amazon EKS clusters. This module provides a production-ready ArgoCD installation with comprehensive AWS service integrations, following security and operational best practices.

### Key Features

- **GitOps Continuous Delivery**: Declarative application deployment and lifecycle management
- **AWS Load Balancer Integration**: Automated ALB provisioning with HTTPS termination
- **Certificate Management**: Automatic ACM certificate creation with DNS validation
- **DNS Automation**: Route53 record creation and management
- **Secure AWS Access**: IAM Roles for Service Accounts (IRSA) for pod-level permissions
- **High Availability**: Multi-replica deployment with Redis HA support
- **Image Automation**: ArgoCD Image Updater for automated container updates
- **Multi-Cluster Support**: ApplicationSet controller for managing applications across clusters
- **Enterprise SSO**: Dex integration for GitHub, OIDC, SAML authentication
- **Event Notifications**: Integration with Slack, email, and webhook services

## Architecture

The module deploys the following components:

1. **ArgoCD Core Components**
   - Application Controller: Monitors applications and synchronizes desired state
   - API Server: Provides API and UI for ArgoCD
   - Repository Server: Manages Git repository connections and manifests
   - Redis: Caching layer for improved performance

2. **AWS Infrastructure**
   - Application Load Balancer (ALB) for external access
   - ACM Certificate for HTTPS encryption
   - Route53 DNS records for domain resolution
   - IAM roles and policies for AWS service access

3. **Optional Components**
   - ArgoCD Image Updater for automated image updates
   - Notifications Controller for event-driven alerts
   - Dex for SSO authentication

## Prerequisites

- Terraform >= 1.6.0
- AWS CLI configured with appropriate credentials
- Existing EKS cluster with OIDC provider enabled
- VPC with public subnets (for internet-facing ALB)
- Route53 hosted zone (optional, for automatic DNS management)

## Usage

### External Access (ALB + HTTPS)

```hcl
module "argocd" {
  source = "sourcefuse/arc-argocd/aws"

  namespace   = "myapp"
  environment = "prod"

  eks_cluster_name = "my-eks-cluster"

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
    auto_create_route53_record = true
    route53_zone_name          = "example.com"
    alb_subnets                = ["subnet-xxxxx", "subnet-yyyyy"]
  }

  irsa_config = {
    enable = true
  }

  tags = {
    Project   = "myapp"
    ManagedBy = "terraform"
  }
}
```

### With Existing Certificate

```hcl
module "argocd" {
  source = "sourcefuse/arc-argocd/aws"

  # ... other configuration ...

  ingress_config = {
    enable              = true
    host                = "argocd.example.com"
    acm_certificate_arn = "arn:aws:acm:us-east-1:123456789:certificate/xxxxx"
  }
}
```

### High Availability Configuration

```hcl
module "argocd" {
  source = "sourcefuse/arc-argocd/aws"

  # ... other configuration ...

  ha_config = {
    enable               = true
    server_replicas      = 3
    repo_server_replicas = 2
    controller_replicas  = 1
  }
}
```

### With ArgoCD Resources (Repositories, Projects, Applications)

```hcl
module "argocd" {
  source = "sourcefuse/arc-argocd/aws"

  namespace   = "myapp"
  environment = "prod"

  eks_cluster_name = "my-eks-cluster"

  argocd_config = {
    enable  = true
    version = "7.8.13"
  }

  # Define repositories
  repositories = {
    "my-private-repo" = {
      url      = "https://github.com/myorg/myrepo"
      type     = "git"
      username = "git"
      password = var.github_token
    }
    "my-helm-repo" = {
      url  = "https://charts.example.com"
      type = "helm"
    }
  }

  # Define projects
  projects = {
    "production" = {
      description  = "Production applications"
      source_repos = ["https://github.com/myorg/*"]
      destinations = [
        {
          namespace = "prod-*"
          server    = "https://kubernetes.default.svc"
        }
      ]
    }
  }

  # Define applications
  applications = {
    "my-app" = {
      repo_url        = "https://github.com/myorg/myrepo"
      target_revision = "main"
      path            = "k8s/overlays/prod"
      project         = "production"
      destination = {
        namespace = "prod-apps"
        server    = "https://kubernetes.default.svc"
      }
      sync_policy = {
        automated = {
          prune     = true
          self_heal = true
        }
        sync_options = ["CreateNamespace=true"]
      }
    }
    "my-helm-app" = {
      repo_url        = "https://charts.example.com"
      target_revision = "1.0.0"
      path            = "my-chart"
      project         = "production"
      destination = {
        namespace = "prod-apps"
      }
      helm = {
        release_name = "my-release"
        parameters = [
          {
            name  = "image.tag"
            value = "v1.0.0"
          }
        ]
      }
      sync_policy = {
        automated = {
          prune     = true
          self_heal = true
        }
      }
    }
  }

  tags = {
    Project   = "myapp"
    ManagedBy = "terraform"
  }
}
```

## Examples

- [Complete Example](./examples/complete) - Full-featured deployment with all options
- [EKS Integration](./examples/eks-integration) - Deploy EKS cluster and ArgoCD together

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 7.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.12.1 |
| <a name="requirement_http"></a> [http](#requirement\_http) | >= 3.0.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 2.0.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.24.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >= 0.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.32.1 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 3.1.1 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 2.1.3 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 3.0.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.argocd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.argocd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_iam_policy.ecr_readonly](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.argocd_repo_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.argocd_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.argocd_repo_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.argocd_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.repo_server_ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_route53_record.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.argocd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [helm_release.argocd](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.argocd_image_updater](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubectl_manifest.argocd_application](https://registry.terraform.io/providers/alekc/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.argocd_project](https://registry.terraform.io/providers/alekc/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.argocd_repository](https://registry.terraform.io/providers/alekc/kubectl/latest/docs/resources/manifest) | resource |
| [time_sleep.wait_for_argocd_crds](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_acm_certificate.wildcard](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_iam_policy_document.argocd_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_readonly](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [kubernetes_ingress_v1.argocd](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/ingress_v1) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_config"></a> [admin\_config](#input\_admin\_config) | ArgoCD admin account configuration.<br/><br/>- `disable_admin` : Disable the built-in admin user (recommended for prod with SSO).<br/>- `bcrypt_hash`   : Bcrypt hash of the admin password. Leave empty to auto-generate. | <pre>object({<br/>    disable_admin = optional(bool, false)<br/>    bcrypt_hash   = optional(string, "")<br/>  })</pre> | `{}` | no |
| <a name="input_applications"></a> [applications](#input\_applications) | Map of ArgoCD applications to create.<br/><br/>Each application requires:<br/>- `repo_url`        : Git repository URL<br/>- `target_revision` : Git revision (branch, tag, commit)<br/>- `path`            : Path within repository<br/>- `project`         : ArgoCD project name<br/>- `destination`     : Destination cluster and namespace<br/>- `sync_policy`     : Sync policy configuration<br/>- `helm`            : Helm-specific configuration | <pre>map(object({<br/>    repo_url        = string<br/>    target_revision = optional(string, "HEAD")<br/>    path            = optional(string)<br/>    project         = optional(string, "default")<br/>    finalizers      = optional(list(string))<br/>    destination = optional(object({<br/>      server    = optional(string, "https://kubernetes.default.svc")<br/>      namespace = optional(string, "default")<br/>    }))<br/>    sync_policy = optional(object({<br/>      automated = optional(object({<br/>        prune     = optional(bool, false)<br/>        self_heal = optional(bool, false)<br/>      }))<br/>      sync_options = optional(list(string))<br/>      retry = optional(object({<br/>        limit = optional(number, 5)<br/>        backoff = optional(object({<br/>          duration     = optional(string, "5s")<br/>          factor       = optional(number, 2)<br/>          max_duration = optional(string, "3m")<br/>        }))<br/>      }))<br/>    }))<br/>    helm = optional(object({<br/>      release_name = optional(string)<br/>      values       = optional(string)<br/>      value_files  = optional(list(string))<br/>      parameters = optional(list(object({<br/>        name  = string<br/>        value = string<br/>      })))<br/>    }))<br/>  }))</pre> | `{}` | no |
| <a name="input_applicationset_config"></a> [applicationset\_config](#input\_applicationset\_config) | ApplicationSet controller configuration.<br/><br/>- `enable`   : Enable ApplicationSet controller (default: true — ships with ArgoCD chart).<br/>- `replicas` : Number of ApplicationSet controller replicas. | <pre>object({<br/>    enable   = optional(bool, true)<br/>    replicas = optional(number, 1)<br/>  })</pre> | `{}` | no |
| <a name="input_argocd_config"></a> [argocd\_config](#input\_argocd\_config) | Configuration for the ArgoCD Helm release.<br/><br/>- `enable`              : Toggle ArgoCD installation (default: true).<br/>- `name`                : Helm release name (default: "argocd").<br/>- `chart`               : Helm chart name (default: "argo-cd").<br/>- `helm_repository`     : Helm chart repository URL.<br/>- `version`             : Helm chart version to install.<br/>- `namespace`           : Kubernetes namespace for ArgoCD.<br/>- `create_namespace`    : Whether to create the namespace if it does not exist.<br/>- `timeout`             : Helm install/upgrade timeout in seconds.<br/>- `wait`                : Wait for all resources to be ready.<br/>- `atomic`              : Rollback on failure.<br/>- `cleanup_on_fail`     : Delete new resources on failed install.<br/>- `helm_release_values` : List of YAML value strings for the Helm release.<br/>- `helm_release_set_values` : List of individual set values [{name, value}]. | <pre>object({<br/>    enable              = optional(bool, true)<br/>    name                = optional(string, "argocd")<br/>    chart               = optional(string, "argo-cd")<br/>    helm_repository     = optional(string, "https://argoproj.github.io/argo-helm")<br/>    version             = optional(string, "7.8.13")<br/>    namespace           = optional(string, "argocd")<br/>    create_namespace    = optional(bool, true)<br/>    timeout             = optional(number, 600)<br/>    wait                = optional(bool, true)<br/>    atomic              = optional(bool, true)<br/>    cleanup_on_fail     = optional(bool, true)<br/>    helm_release_values = optional(list(string), [])<br/>    helm_release_set_values = optional(list(object({<br/>      name  = string<br/>      value = string<br/>    })), [])<br/>  })</pre> | `{}` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the existing EKS cluster where ArgoCD will be installed. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element for the deployment environment (e.g., prod, staging, dev). | `string` | n/a | yes |
| <a name="input_ha_config"></a> [ha\_config](#input\_ha\_config) | High availability configuration for ArgoCD.<br/><br/>- `enable`          : Enable HA mode with multiple replicas (default: false).<br/>- `server_replicas` : Number of ArgoCD server replicas.<br/>- `repo_server_replicas` : Number of ArgoCD repo-server replicas.<br/>- `controller_replicas`  : Number of application controller replicas. | <pre>object({<br/>    enable               = optional(bool, false)<br/>    server_replicas      = optional(number, 2)<br/>    repo_server_replicas = optional(number, 2)<br/>    controller_replicas  = optional(number, 1)<br/>  })</pre> | `{}` | no |
| <a name="input_image_updater_config"></a> [image\_updater\_config](#input\_image\_updater\_config) | ArgoCD Image Updater configuration for automatic image update detection.<br/><br/>- `enable`              : Deploy ArgoCD Image Updater alongside ArgoCD.<br/>- `chart`               : Helm chart name (default: "argocd-image-updater").<br/>- `version`             : Helm chart version for image updater.<br/>- `helm_release_values` : List of YAML value strings for image updater Helm release.<br/>- `registries`          : List of container registries to monitor. | <pre>object({<br/>    enable              = optional(bool, false)<br/>    chart               = optional(string, "argocd-image-updater")<br/>    version             = optional(string, "0.12.0")<br/>    helm_release_values = optional(list(string), [])<br/>    registries = optional(list(object({<br/>      name    = string<br/>      api_url = string<br/>      prefix  = string<br/>    })), [])<br/>  })</pre> | `{}` | no |
| <a name="input_ingress_config"></a> [ingress\_config](#input\_ingress\_config) | Ingress configuration for exposing ArgoCD UI.<br/><br/>- `enable`             : Enable ingress resource creation via Helm values.<br/>- `host`               : Hostname for ArgoCD UI (e.g., argocd.example.com).<br/>- `ingress_class_name` : Kubernetes ingress class (default: "alb").<br/>- `annotations`        : Additional annotations for the ingress resource.<br/>- `tls_enabled`        : Enable TLS termination.<br/>- `acm_certificate_arn`: ACM certificate ARN for ALB HTTPS listener.<br/>- `auto_create_route53_record` : Automatically create Route53 A record for the ingress.<br/>- `route53_zone_name`  : Route53 hosted zone name (e.g., example.com) for automatic DNS record creation. | <pre>object({<br/>    enable                     = optional(bool, false)<br/>    host                       = optional(string, "")<br/>    ingress_class_name         = optional(string, "alb")<br/>    annotations                = optional(map(string), {})<br/>    tls_enabled                = optional(bool, true)<br/>    acm_certificate_arn        = optional(string, "")<br/>    create_acm_certificate     = optional(bool, false)<br/>    auto_create_route53_record = optional(bool, false)<br/>    route53_zone_name          = optional(string, "")<br/>    alb_subnets                = optional(list(string), [])<br/>  })</pre> | `{}` | no |
| <a name="input_irsa_config"></a> [irsa\_config](#input\_irsa\_config) | IAM Roles for Service Accounts (IRSA) configuration.<br/><br/>- `enable`                   : Create IRSA roles for ArgoCD components.<br/>- `server_role_name`         : IAM role name for ArgoCD server.<br/>- `server_policy_arns`       : Additional policy ARNs to attach to server role.<br/>- `repo_server_role_name`    : IAM role name for repo-server (for private ECR Helm charts, etc.).<br/>- `repo_server_policy_arns`  : Additional policy ARNs for repo-server role. | <pre>object({<br/>    enable                  = optional(bool, false)<br/>    server_role_name        = optional(string, "")<br/>    server_policy_arns      = optional(list(string), [])<br/>    repo_server_role_name   = optional(string, "")<br/>    repo_server_policy_arns = optional(list(string), [])<br/>  })</pre> | `{}` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. Used as a prefix for resource names. | `string` | n/a | yes |
| <a name="input_notifications_config"></a> [notifications\_config](#input\_notifications\_config) | ArgoCD Notifications controller configuration.<br/><br/>- `enable`   : Enable the notifications controller.<br/>- `triggers` : Map of notification triggers.<br/>- `templates`: Map of notification templates.<br/>- `services` : Map of notification services (slack, webhook, email, etc.). | <pre>object({<br/>    enable    = optional(bool, false)<br/>    triggers  = optional(map(string), {})<br/>    templates = optional(map(string), {})<br/>    services  = optional(map(string), {})<br/>  })</pre> | `{}` | no |
| <a name="input_projects"></a> [projects](#input\_projects) | Map of ArgoCD projects to create.<br/><br/>Each project can have:<br/>- `description`                  : Project description<br/>- `source_repos`                 : List of allowed source repositories<br/>- `destinations`                 : List of allowed destinations<br/>- `cluster_resource_whitelist`   : Cluster-scoped resources whitelist<br/>- `namespace_resource_whitelist` : Namespace-scoped resources whitelist | <pre>map(object({<br/>    description  = optional(string)<br/>    source_repos = optional(list(string))<br/>    destinations = optional(list(object({<br/>      namespace = string<br/>      server    = string<br/>    })))<br/>    cluster_resource_whitelist = optional(list(object({<br/>      group = string<br/>      kind  = string<br/>    })))<br/>    namespace_resource_whitelist = optional(list(object({<br/>      group = string<br/>      kind  = string<br/>    })))<br/>  }))</pre> | `{}` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | Map of ArgoCD repositories to create.<br/><br/>Each repository can have:<br/>- `url`             : Repository URL (required)<br/>- `type`            : Repository type (git, helm) (default: git)<br/>- `username`        : Username for authentication<br/>- `password`        : Password for authentication<br/>- `ssh_private_key` : SSH private key for authentication<br/>- `insecure`        : Skip TLS verification<br/>- `enable_lfs`      : Enable Git LFS | <pre>map(object({<br/>    url             = string<br/>    type            = optional(string, "git")<br/>    username        = optional(string)<br/>    password        = optional(string)<br/>    ssh_private_key = optional(string)<br/>    insecure        = optional(bool)<br/>    enable_lfs      = optional(bool)<br/>  }))</pre> | `{}` | no |
| <a name="input_sso_config"></a> [sso\_config](#input\_sso\_config) | SSO / Dex configuration for ArgoCD authentication.<br/><br/>- `enable`   : Enable Dex SSO integration.<br/>- `provider` : SSO provider type (e.g., "github", "oidc", "saml").<br/>- `config`   : Provider-specific configuration map (clientID, clientSecret, org, etc.). | <pre>object({<br/>    enable   = optional(bool, false)<br/>    provider = optional(string, "")<br/>    config   = optional(map(string), {})<br/>  })</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | ACM certificate ARN used for ArgoCD ingress. |
| <a name="output_alb_dns_name"></a> [alb\_dns\_name](#output\_alb\_dns\_name) | DNS name of the ALB created for ArgoCD ingress. |
| <a name="output_applications"></a> [applications](#output\_applications) | Map of created ArgoCD applications. |
| <a name="output_argocd_server_url"></a> [argocd\_server\_url](#output\_argocd\_server\_url) | The ArgoCD server URL (based on ingress host or cluster-internal service). |
| <a name="output_chart_version"></a> [chart\_version](#output\_chart\_version) | The ArgoCD Helm chart version deployed. |
| <a name="output_image_updater_status"></a> [image\_updater\_status](#output\_image\_updater\_status) | Status of the ArgoCD Image Updater Helm release. |
| <a name="output_name"></a> [name](#output\_name) | The name of the ArgoCD Helm release. |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | The Kubernetes namespace where ArgoCD is installed. |
| <a name="output_projects"></a> [projects](#output\_projects) | Map of created ArgoCD projects. |
| <a name="output_repo_server_iam_role_arn"></a> [repo\_server\_iam\_role\_arn](#output\_repo\_server\_iam\_role\_arn) | ARN of the IAM role for the ArgoCD repo-server service account. |
| <a name="output_repositories"></a> [repositories](#output\_repositories) | Map of created ArgoCD repositories. |
| <a name="output_route53_record_fqdn"></a> [route53\_record\_fqdn](#output\_route53\_record\_fqdn) | FQDN of the Route53 record created for ArgoCD. |
| <a name="output_server_iam_role_arn"></a> [server\_iam\_role\_arn](#output\_server\_iam\_role\_arn) | ARN of the IAM role for the ArgoCD server service account. |
| <a name="output_status"></a> [status](#output\_status) | Status of the ArgoCD Helm release. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Security Considerations

1. **IRSA**: Always enable IRSA for production deployments to follow least-privilege principles
2. **TLS Termination**: Use ACM certificates for HTTPS encryption
3. **Network Security**: Deploy ALB in public subnets, ArgoCD pods in private subnets
4. **Admin Account**: Disable the default admin account when using SSO
5. **RBAC**: Configure proper role-based access control for users and applications

## Troubleshooting

### ArgoCD UI Returns 504 Gateway Timeout

**Cause**: ALB cannot connect to ArgoCD pods or health checks are failing.

**Solution**:
1. Verify ArgoCD is running in insecure mode: `configs.params.server.insecure = true`
2. Check ALB backend protocol is HTTP (not HTTPS)
3. Ensure security groups allow traffic from ALB to pods on port 8080
4. Verify target group health: `aws elbv2 describe-target-health --target-group-arn <arn>`

### Certificate Validation Stuck

**Cause**: DNS validation records not created or Route53 zone not accessible.

**Solution**:
1. Verify Route53 hosted zone exists and is in the same AWS account
2. Check DNS validation records were created: `aws acm describe-certificate --certificate-arn <arn>`
3. Ensure `auto_create_route53_record = true` if using automatic validation
4. Wait 5-10 minutes for DNS propagation


## Best Practices

1. **Use IRSA**: Enable IRSA for secure AWS service access without long-lived credentials
2. **Enable HA**: For production workloads, enable high availability mode
3. **Separate Environments**: Use different namespaces and clusters for dev/staging/prod
4. **Version Pinning**: Pin ArgoCD chart version to avoid unexpected upgrades
5. **Backup Configuration**: Regularly backup ArgoCD configuration and application definitions
6. **Monitor Resources**: Set up CloudWatch alarms for ArgoCD pod health and ALB metrics
7. **Use SSO**: Configure SSO instead of relying on the default admin account
8. **Network Segmentation**: Deploy ArgoCD in private subnets, expose only via ALB

## Upgrade Guide

### Upgrading ArgoCD Version

1. Review [ArgoCD release notes](https://github.com/argoproj/argo-cd/releases) for breaking changes
2. Update the version in your configuration:
   ```hcl
   argocd_config = {
     version = "7.9.0"  # New version
   }
   ```
3. Run `terraform plan` to review changes
4. Apply during maintenance window: `terraform apply`
5. Verify all applications sync successfully after upgrade

### Upgrading Module Version

1. Review module changelog for breaking changes
2. Update module version:
   ```hcl
   module "argocd" {
     source  = "sourcefuse/arc-argocd/aws"
     version = "2.0.0"  # New version
   }
   ```
3. Run `terraform init -upgrade`
4. Review plan carefully: `terraform plan`
5. Apply changes: `terraform apply`


## Development

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations

- Configure pre-commit hooks
```sh
pre-commit install
```

- Configure golang deps for tests
```sh
> go get github.com/gruntwork-io/terratest/modules/terraform
> go get github.com/stretchr/testify/assert
```
### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests

- Tests are available in `test` directory

- In the test directory, run the below command
```sh
go test
```

## Authors

This project is authored by below people

- SourceFuse ARC Team

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->
