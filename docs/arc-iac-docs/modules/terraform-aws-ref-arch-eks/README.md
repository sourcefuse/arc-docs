![Module Structure](./static/banner.png)

# [terraform-aws-arc-eks](https://github.com/sourcefuse/terraform-aws-arc-eks)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-4-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

<a href="https://github.com/sourcefuse/terraform-aws-arc-eks/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-eks.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-eks.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-eks)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-eks)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-ref-arch-eks/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-ref-arch-eks/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module provisions a EKS (Elastic Kubernetes Service) cluster with support for multiple operational modes and integrations:

- **EKS Cluster Creation**: Automates the setup of the EKS control plane and associated IAM roles, VPC configurations, and security groups.

- **EKS Auto Mode Support**: Enables simplified node management with AWS-managed node groups and automatic provisioning.

- **Karpenter Installation**: Optionally installs and configures Karpenter, a flexible autoscaler that dynamically launches compute based on pod requirements.

- **Fargate Support**: Allows deployment of serverless workloads on AWS Fargate by creating the required Fargate profiles and IAM roles.

This module helps streamline EKS provisioning while offering flexibility in compute options—ideal for both production and cost-optimized environments.

For more information about this repository and its usage, please see [Terraform AWS ARC EKS Module Usage Guide](docs/module-usage-guide/README.md).

![arc_eks_hla](./static/arc_eks_hla.png)

## Usage
See `examples` directory for usage  examples, including configurations for `auto-mode`, `fargate-profile`, `karpenter`, and `nodegroup`. Below is the example for a simple EKS cluster creation.
```hcl
module "eks_cluster" {
  source                    = "sourcefuse/arc-eks/aws"
  version                   = "5.0.16"
  namespace                 = var.namespace
  environment               = var.environment
  kubernetes_version        = var.kubernetes_version
  name                      = "${var.namespace}-${var.environment}-cluster"
  vpc_config                = local.vpc_config
  access_config             = local.access_config
  enable_oidc_provider      = false
  envelope_encryption       = local.envelope_encryption
  kubernetes_network_config = local.kubernetes_network_config
}
```



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | = 2.24.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 2.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.1.0, != 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.94.1 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.12.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.24.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.6 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | sourcefuse/arc-kms/aws | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_access_entry.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry) | resource |
| [aws_eks_access_policy_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_policy_association) | resource |
| [aws_eks_addon.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_fargate_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_fargate_profile) | resource |
| [aws_eks_node_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_instance_profile.karpenter_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_openid_connect_provider.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_policy.iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.auto](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.eks_fargate_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.eks_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.karpenter_controller_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.karpenter_node_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.karpenter_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.eks_cluster_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.fargate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.karpenter_node_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node_AmazonEC2ContainerRegistryPullOnly](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node_polcies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group_rule.cluster_ingress_rules](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [helm_release.karpenter](https://registry.terraform.io/providers/hashicorp/helm/2.12.1/docs/resources/release) | resource |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/2.24.0/docs/resources/config_map) | resource |
| [kubernetes_config_map_v1_data.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/2.24.0/docs/resources/config_map_v1_data) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [tls_certificate.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_config"></a> [access\_config](#input\_access\_config) | Access configuration for the cluster.<br>- `authentication_mode`: One of "API" or "API\_AND\_CONFIG\_MAP"<br>- `bootstrap_cluster_creator_admin_permissions`: Grant creator admin access<br>- `aws_auth_config_map`: (optional) Config for aws-auth ConfigMap<br>- `eks_access_entries`: (optional) List of principals and their policy associations | <pre>object({<br>    authentication_mode                         = optional(string, "API")<br>    bootstrap_cluster_creator_admin_permissions = optional(bool, false)<br><br>    aws_auth_config_map = optional(object({<br>      create   = optional(bool, false)<br>      manage   = optional(bool, false)<br>      roles    = optional(list(any), [])<br>      users    = optional(list(any), [])<br>      accounts = optional(list(string), [])<br>    }), {})<br><br>    eks_access_entries = optional(list(object({<br>      principal_arn = optional(string)<br>      policy_arns   = optional(list(string))<br>      access_scope = optional(object({<br>        type       = string<br>        namespaces = optional(list(string))<br>      }))<br>    })), [])<br>  })</pre> | <pre>{<br>  "authentication_mode": "API",<br>  "bootstrap_cluster_creator_admin_permissions": false<br>}</pre> | no |
| <a name="input_additional_cluster_security_group_rules"></a> [additional\_cluster\_security\_group\_rules](#input\_additional\_cluster\_security\_group\_rules) | List of ingress security group rules to apply to the EKS cluster security group | <pre>list(object({<br>    from_port        = number<br>    to_port          = number<br>    protocol         = string<br>    cidr_blocks      = optional(list(string), [])<br>    ipv6_cidr_blocks = optional(list(string), [])<br>    description      = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_additional_node_group_policy_arns"></a> [additional\_node\_group\_policy\_arns](#input\_additional\_node\_group\_policy\_arns) | Optional additional policies to attach to node group role | `list(string)` | `[]` | no |
| <a name="input_auto_mode_config"></a> [auto\_mode\_config](#input\_auto\_mode\_config) | (optional) EKS automates routine cluster tasks for compute, storage, and networking.<br>When a new pod can't fit onto existing nodes, EKS creates a new node.<br>EKS combines cluster infrastructure managed by AWS with integrated Kubernetes capabilities to meet application compute needs. | <pre>object({<br>    enable        = optional(bool, false)<br>    node_pools    = optional(list(string), ["general-purpose", "system"])<br>    node_role_arn = optional(string, null)<br>  })</pre> | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_bootstrap_self_managed_addons_enabled"></a> [bootstrap\_self\_managed\_addons\_enabled](#input\_bootstrap\_self\_managed\_addons\_enabled) | (optional) Install default unmanaged add-ons, such as aws-cni, kube-proxy, and CoreDNS during cluster creation. If false, you must manually install desired add-ons. Changing this value will force a new cluster to be created. | `bool` | `true` | no |
| <a name="input_eks_additional_policy_arns"></a> [eks\_additional\_policy\_arns](#input\_eks\_additional\_policy\_arns) | Optional additional policy ARNs that user wants to attach | `list(string)` | `[]` | no |
| <a name="input_eks_addons"></a> [eks\_addons](#input\_eks\_addons) | Map of EKS Add-ons to create | <pre>map(object({<br>    addon_version               = optional(string)<br>    service_account_role_arn    = optional(string)<br>    resolve_conflicts_on_update = optional(string)<br>    resolve_conflicts_on_create = optional(string)<br>  }))</pre> | `{}` | no |
| <a name="input_eks_policy_arns"></a> [eks\_policy\_arns](#input\_eks\_policy\_arns) | List of IAM policy ARNs to attach to the EKS role | `list(string)` | <pre>[<br>  "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",<br>  "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",<br>  "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",<br>  "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy",<br>  "arn:aws:iam::aws:policy/AmazonEKSComputePolicy"<br>]</pre> | no |
| <a name="input_enable_arc_zonal_shift"></a> [enable\_arc\_zonal\_shift](#input\_enable\_arc\_zonal\_shift) | (optional) Whether to enable ARC Zonal shift , it shift application traffic away from an impaired Availability Zone (AZ) in your EKS cluster. | `bool` | `false` | no |
| <a name="input_enable_oidc_provider"></a> [enable\_oidc\_provider](#input\_enable\_oidc\_provider) | Whether to enable OIDC provider | `bool` | `true` | no |
| <a name="input_enabled_cluster_log_types"></a> [enabled\_cluster\_log\_types](#input\_enabled\_cluster\_log\_types) | A list of the desired control plane logging to enable. Valid values [`api`, `audit`, `authenticator`, `controllerManager`, `scheduler`] | `list(string)` | `[]` | no |
| <a name="input_envelope_encryption"></a> [envelope\_encryption](#input\_envelope\_encryption) | Whether to enable Envelope encryption | <pre>object({<br>    enable                      = optional(bool, true)<br>    kms_deletion_window_in_days = optional(number, 10)<br>    resources                   = optional(list(string), ["secrets"])<br>    key_arn                     = optional(string, null) // if null it created new KMS key<br>  })</pre> | <pre>{<br>  "enable": true,<br>  "resources": [<br>    "secrets"<br>  ]<br>}</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_fargate_profile_config"></a> [fargate\_profile\_config](#input\_fargate\_profile\_config) | Combined configuration for the EKS Fargate profile, including IAM policies. | <pre>object({<br>    enable                 = bool<br>    fargate_profile_name   = optional(string)<br>    pod_execution_role_arn = optional(string)<br>    subnet_ids             = optional(list(string))<br>    selectors = optional(list(object({<br>      namespace = string<br>      labels    = optional(map(string))<br>    })))<br>    tags                   = optional(map(string), {})<br>    policy_arns            = optional(list(string), ["arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"])<br>    additional_policy_arns = optional(list(string), [])<br>  })</pre> | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_karpenter_config"></a> [karpenter\_config](#input\_karpenter\_config) | Configuration for Karpenter | <pre>object({<br>    enable                                  = bool<br>    name                                    = optional(string)<br>    namespace                               = optional(string, "karpenter")<br>    create_namespace                        = optional(bool)<br>    version                                 = optional(string, "0.36.0")<br>    helm_repository                         = optional(string, "oci://public.ecr.aws/karpenter")<br>    chart                                   = optional(string)<br>    additional_karpenter_node_role_policies = optional(list(string), [])<br>    helm_release_values                     = optional(any)<br>    helm_release_set_values = optional(list(object({<br>      name  = string<br>      value = string<br>    })), [])<br>  })</pre> | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_kubernetes_network_config"></a> [kubernetes\_network\_config](#input\_kubernetes\_network\_config) | Configuration block for Kubernetes network.<br><br>- `service_ipv4_cidr`: Optional custom CIDR block for Kubernetes service IPs. Must be within 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16 and have a netmask between /12 and /24.<br>- `ip_family`: The IP family to assign (ipv4 or ipv6). Default is ipv4. | <pre>object({<br>    ipv4_cidr = optional(string, null)<br>    ip_family = optional(string, "ipv4")<br>  })</pre> | <pre>{<br>  "ip_family": "ipv4"<br>}</pre> | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Desired Kubernetes master version | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | EKS Cluster name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace your resource belongs to.<br>Usually an abbreviation of your organization name, e.g. 'example' or 'arc', to help ensure generated IDs are globally unique" | `string` | n/a | yes |
| <a name="input_node_group_config"></a> [node\_group\_config](#input\_node\_group\_config) | Configuration for EKS managed node groups.<br><br>- enable: Controls whether EKS node groups should be created.<br>- config: A map of node group configurations, where each key is an identifier for a node group.<br>  Each node group object may include:<br><br>  - node\_group\_name: (Optional) Custom name for the node group. If not specified, a default will be used.<br>  - node\_role\_arn: (Optional) ARN of the IAM role for the node group.<br>  - release\_version: (Optional) AMI version for the node group.<br>  - scaling\_config: Required settings for desired, minimum, and maximum node counts.<br>  - taints: (Optional) List of taints applied to nodes, each with a key, value (optional), and effect.<br>  - update\_config: (Optional) Configuration for rolling updates, such as max unavailable nodes.<br>  - remote\_access: (Optional) SSH access configuration, including key name and allowed source security group IDs.<br>  - launch\_template: (Optional) Launch template settings, including ID, name, and version.<br>  - node\_repair\_config: (Optional) Node auto-repair configuration (e.g., self-healing).<br>  - instance\_types: (Optional) List of EC2 instance types to use (default is ["t3.medium"]).<br>  - ami\_type: (Optional) AMI type (e.g., "AL2\_x86\_64", "BOTTLEROCKET\_x86\_64").<br>  - disk\_size: (Optional) Size in GiB of the root EBS volume.<br>  - capacity\_type: (Optional) Capacity type ("ON\_DEMAND" or "SPOT"), defaults to "ON\_DEMAND".<br>  - labels: (Optional) Key-value map of Kubernetes labels to apply to the nodes.<br>  - ignore\_desired\_size: (Optional) If true, the desired size will be ignored during updates (default: false).<br>  - subnet\_ids: Required list of subnet IDs where the node group will be deployed.<br>  - kubernetes\_version: (Optional) Kubernetes version to use for the node group. | <pre>object({<br>    enable = bool<br>    config = map(object({<br>      node_group_name = optional(string)<br>      node_role_arn   = optional(string)<br>      release_version = optional(string)<br>      scaling_config = object({<br>        desired_size = number<br>        max_size     = number<br>        min_size     = number<br>      })<br>      taints = optional(list(object({<br>        key    = string<br>        value  = optional(string)<br>        effect = string<br>      })), [])<br>      update_config = optional(object({<br>        max_unavailable            = optional(number)<br>        max_unavailable_percentage = optional(number)<br>      }))<br>      remote_access = optional(object({<br>        ec2_ssh_key               = string<br>        source_security_group_ids = list(string)<br>      }))<br>      launch_template = optional(object({<br>        id      = optional(string)<br>        name    = optional(string)<br>        version = string<br>      }))<br>      node_repair_config = optional(object({<br>        enabled = bool<br>      }))<br>      instance_types      = optional(list(string), ["t3.medium"])<br>      ami_type            = optional(string)<br>      disk_size           = optional(number)<br>      capacity_type       = optional(string, "ON_DEMAND")<br>      labels              = optional(map(string), {})<br>      ignore_desired_size = optional(bool, false)<br>      subnet_ids          = list(string)<br>      kubernetes_version  = optional(string)<br>    }))<br>  })</pre> | <pre>{<br>  "config": {},<br>  "enable": false<br>}</pre> | no |
| <a name="input_node_group_policy_arns"></a> [node\_group\_policy\_arns](#input\_node\_group\_policy\_arns) | Default policies for EKS node group | `list(string)` | <pre>[<br>  "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",<br>  "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",<br>  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for EKS resources | `map(string)` | `{}` | no |
| <a name="input_upgrade_policy"></a> [upgrade\_policy](#input\_upgrade\_policy) | (optional) Support type to use for the cluster. If the cluster is set to EXTENDED, it will enter extended support at the end of standard support.<br>    If the cluster is set to STANDARD, it will be automatically upgraded at the end of standard support.<br>    Valid values are EXTENDED, STANDARD"<br><br>    STANDARD - This option supports the Kubernetes version for 14 months after the release date. There is no additional cost. When standard support ends, your cluster will be auto upgraded to the next version.<br>    EXTENDED - This option supports the Kubernetes version for 26 months after the release date. The extended support period has an additional hourly cost that begins after the standard support period ends. When extended support ends, your cluster will be auto upgraded to the next version. | `string` | `"STANDARD"` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | Configuration block for VPC settings:<br>  - security\_group\_ids: List of security group IDs associated with the VPC.<br>  - subnet\_ids: List of subnet IDs where resources will be deployed.<br>  - endpoint\_private\_access: Enable or disable private access to the cluster endpoint.<br>  - endpoint\_public\_access: Enable or disable public access to the cluster endpoint.<br>  - public\_access\_cidrs: CIDR blocks that can access the public endpoint (if enabled). | <pre>object({<br>    security_group_ids      = optional(list(string), [])<br>    subnet_ids              = list(string)<br>    endpoint_private_access = optional(bool, false)<br>    endpoint_public_access  = optional(bool, true)<br>    public_access_cidrs     = optional(list(string), ["0.0.0.0/0"])<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The Amazon Resource Name (ARN) of the EKS cluster |
| <a name="output_certificate_authority_data"></a> [certificate\_authority\_data](#output\_certificate\_authority\_data) | The base64-encoded certificate data required to communicate with the EKS cluster |
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | The unique identifier of the EKS cluster |
| <a name="output_eks_cluster_security_group_id"></a> [eks\_cluster\_security\_group\_id](#output\_eks\_cluster\_security\_group\_id) | The ID of the security group associated with the EKS cluster's control plane |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The endpoint for the EKS cluster API server |
| <a name="output_name"></a> [name](#output\_name) | The name of the EKS cluster |
| <a name="output_oidc_provider_url"></a> [oidc\_provider\_url](#output\_oidc\_provider\_url) | The OIDC identity provider URL for the EKS cluster (without the https:// prefix) |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Kubernetes dashboard
To view the dashboard, run the following commands:

```shell
aws eks update-kubeconfig --name refarch-dev-primary-k8s-cluster --region us-east-1
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-dashboard-viewer | awk '{print $1}') #Copy the token from the output
kubectl proxy
```

Then navigate to:

```text
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login
```

and use the copied token to login
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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/vijay-stephen"><img src="https://avatars.githubusercontent.com/u/91307015?v=4?s=100" width="100px;" alt="vijay-stephen"/><br /><sub><b>vijay-stephen</b></sub></a><br /><a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=vijay-stephen" title="Code">💻</a> <a href="#infra-vijay-stephen" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=vijay-stephen" title="Documentation">📖</a> <a href="#maintenance-vijay-stephen" title="Maintenance">🚧</a> <a href="#mentoring-vijay-stephen" title="Mentoring">🧑‍🏫</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://www.sourcefuse.com/"><img src="https://avatars.githubusercontent.com/u/73998079?v=4?s=100" width="100px;" alt="Shubham Sinha"/><br /><sub><b>Shubham Sinha</b></sub></a><br /><a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=shubhamsinha-sf" title="Code">💻</a> <a href="#infra-shubhamsinha-sf" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=shubhamsinha-sf" title="Documentation">📖</a> <a href="#maintenance-shubhamsinha-sf" title="Maintenance">🚧</a> <a href="#mentoring-shubhamsinha-sf" title="Mentoring">🧑‍🏫</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://sourcefuse.com"><img src="https://avatars.githubusercontent.com/u/89415058?v=4?s=100" width="100px;" alt="Travis Saucier"/><br /><sub><b>Travis Saucier</b></sub></a><br /><a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=tsaucier-sf" title="Code">💻</a> <a href="#infra-tsaucier-sf" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=tsaucier-sf" title="Documentation">📖</a> <a href="#maintenance-tsaucier-sf" title="Maintenance">🚧</a> <a href="#mentoring-tsaucier-sf" title="Mentoring">🧑‍🏫</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/mayank0202"><img src="https://avatars.githubusercontent.com/u/83959396?v=4?s=100" width="100px;" alt="Mayank Sharma"/><br /><sub><b>Mayank Sharma</b></sub></a><br /><a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=mayank0202" title="Code">💻</a> <a href="#infra-mayank0202" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/sourcefuse/terraform-aws-arc-eks/commits?author=mayank0202" title="Documentation">📖</a> <a href="#maintenance-mayank0202" title="Maintenance">🚧</a> <a href="#mentoring-mayank0202" title="Mentoring">🧑‍🏫</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
