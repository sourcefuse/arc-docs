![Module Structure](./static/banner.png)

# [terraform-aws-arc-workspace](https://github.com/sourcefuse/terraform-aws-arc-workspace)

<a href="https://github.com/sourcefuse/terraform-aws-arc-workspace/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-workspace.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-workspace/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-workspace.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-workspace)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-workspace)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-workspace/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-workspace/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing Workspaces.

## Usage

To see a Microsoft AD example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-workspace/blob/main/examples/Microsoft-AD/main.tf) file in the example folder.  

```hcl
module "microsoft-ad-workspace" {
  source                             = "sourcefuse/arc-workspace/aws"
  version                            = "1.0.9"
  region                             = var.region
  vpc_id                             = data.aws_vpc.vpc.id
  subnet_ids                         = data.aws_subnets.private.ids
  directory_type                     = var.directory_type
  directory_name                     = var.directory_name
  directory_size                     = var.directory_size
  self_service_permissions           = var.self_service_permissions
  workspace_access_properties        = var.workspace_access_properties
  workspace_creation_properties      = var.workspace_creation_properties
  workspaces_service_access_arn      = data.aws_iam_policy.workspaces_service_access.arn
  workspaces_self_service_access_arn = data.aws_iam_policy.workspaces_self_service_access.arn
  user_names                         = var.user_names
  workspace_properties               = var.workspace_properties
  volume_encryption_key              = var.volume_encryption_key
  ip_rules                           = var.ip_rules // change it according to your requirement
  tags                               = module.tags.tags
}
```

To see a AD Connector example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-workspace/blob/main/examples/AD-Connector/main.tf) file in the example folder.

```hcl
module "ad-connector-workspace" {
  source                             = "sourcefuse/arc-workspace/aws"
  version                            = "1.0.9"
  region                             = var.region
  vpc_id                             = data.aws_vpc.vpc.id
  subnet_ids                         = data.aws_subnets.private.ids
  directory_type                     = var.directory_type
  directory_name                     = var.directory_name
  directory_size                     = var.directory_size
  self_service_permissions           = var.self_service_permissions
  workspace_access_properties        = var.workspace_access_properties
  workspace_creation_properties      = var.workspace_creation_properties
  workspaces_service_access_arn      = data.aws_iam_policy.workspaces_service_access.arn
  workspaces_self_service_access_arn = data.aws_iam_policy.workspaces_self_service_access.arn
  user_names                         = var.user_names
  customer_dns_ips                   = var.customer_dns_ips
  customer_username                  = var.customer_username
  workspace_properties               = var.workspace_properties
  volume_encryption_key              = var.volume_encryption_key
  ip_rules                           = var.ip_rules // change it according to your requirement
  tags                               = module.tags.tags
}
```
Both Examples look similar but the difference between them is ```customer_dns_ips``` and ```customer_username``` which is required for ADConnector but not required for AWS Managed Microsoft-AD
## IMPORTANT NOTE

For user_names attribute which is shown in example. There are two approaches you can follow
1. If you want to create custom user_names so you have to first run terraform apply and then create custom user names in workspace manually and specify here that username and re-run tf apply so that workspace with custom-username gets created with appropriate configuration.

2. By default you can specify Administrators , Admins here which are default in directory and that will create workspace

3. if you specify custom user_names which can be any number make sure if you specify, lets say 5 custom user_names then terraform will create 5 workspaces for each user.

4. custom user_names need to be created manually as mentioned in 1st point as there is no functionality in terraform to achieve this as of now.

5. if you leave user_names attribute empty then no workspace will get created , only directory will get created and iam-roles etc.

6. example to specify custom user_names
```
variable "user_names" {
  description = "List of usernames to create workspaces for"
  type        = map(string)
  default     = {
     "mayank.sharma" = null
     "james.crowley" = null
     "travis.saucier" = null
  }
}
```
As we specified three custom user_names that means three workspaces for each user will get created

7. Last thing but not the least and this is very important that if you are trying to deploy in us-east-1 then below AZs are supported. When you are creating a virtual private cloud (VPC) for use with Amazon WorkSpaces, your VPC's subnets must reside in different Availability Zones in the Region where you're launching WorkSpaces. Availability Zones are distinct locations that are engineered to be isolated from failures in other Availability Zones. By launching instances in separate Availability Zones, you can protect your applications from the failure of a single location. Each subnet must reside entirely within one Availability Zone and cannot span zones. Here is the picture of supported Availability Zones For Workspaces.

![availability zones](./static/az.png)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.17.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_directory_service_directory.ADConnector](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_directory) | resource |
| [aws_directory_service_directory.microsoftAD](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_directory) | resource |
| [aws_iam_role.workspaces_default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.workspaces_default_self_service_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.workspaces_default_service_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.workspace](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ssm_parameter.ad_connector_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.ad_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_workspaces_directory.directory_ADConnector](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_directory) | resource |
| [aws_workspaces_directory.directory_microsoftAD](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_directory) | resource |
| [aws_workspaces_ip_group.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_ip_group) | resource |
| [aws_workspaces_workspace.workspace](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/workspaces_workspace) | resource |
| [random_password.ad_connector_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_password.ad_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_iam_policy_document.workspaces](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_workspaces_bundle.bundle](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/workspaces_bundle) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The ID of the bundle to use for the workspaces. | `string` | `null` | no |
| <a name="input_customer_dns_ips"></a> [customer\_dns\_ips](#input\_customer\_dns\_ips) | Connect settings for ADConnector. | `list(string)` | `[]` | no |
| <a name="input_customer_username"></a> [customer\_username](#input\_customer\_username) | Connect settings for ADConnector. | `string` | `""` | no |
| <a name="input_directory_name"></a> [directory\_name](#input\_directory\_name) | must be a fully qualified domain name and cannot end with a trailing period | `string` | `"poc.woebothealth.com"` | no |
| <a name="input_directory_size"></a> [directory\_size](#input\_directory\_size) | The size of the directory (Small or Large are accepted values). Large by default. | `string` | `"Small"` | no |
| <a name="input_directory_type"></a> [directory\_type](#input\_directory\_type) | Type of the directory service (MicrosoftAD or ADConnector). | `string` | `"MicrosoftAD"` | no |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | List of egress rules | <pre>list(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = any<br>    cidr_blocks = optional(list(string), [])<br>  }))</pre> | <pre>[<br>  {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": 0,<br>    "protocol": -1,<br>    "to_port": 0<br>  }<br>]</pre> | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | workspace iam-role-name | `string` | `"workspaces_DefaultRole"` | no |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | List of ingress rules | <pre>list(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = optional(list(string), [])<br>  }))</pre> | <pre>[<br>  {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": 443,<br>    "protocol": "tcp",<br>    "to_port": 443<br>  }<br>]</pre> | no |
| <a name="input_ip_group_description"></a> [ip\_group\_description](#input\_ip\_group\_description) | Description of the IP access control group | `string` | `"nat-gateway-ip-list control group"` | no |
| <a name="input_ip_group_name"></a> [ip\_group\_name](#input\_ip\_group\_name) | Name of the IP access control group | `string` | `"nat-gateway-ip-list"` | no |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules) | List of IP rules | <pre>list(object({<br>    source      = string<br>    description = string<br>  }))</pre> | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-west-2"` | no |
| <a name="input_security_group_description"></a> [security\_group\_description](#input\_security\_group\_description) | Description of the security group | `string` | `"My security group description"` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Name of the security group | `string` | `"workspace-SG"` | no |
| <a name="input_self_service_permissions"></a> [self\_service\_permissions](#input\_self\_service\_permissions) | Self-service permissions configuration. | <pre>object({<br>    change_compute_type  = bool<br>    increase_volume_size = bool<br>    rebuild_workspace    = bool<br>    restart_workspace    = bool<br>    switch_running_mode  = bool<br>  })</pre> | <pre>{<br>  "change_compute_type": false,<br>  "increase_volume_size": false,<br>  "rebuild_workspace": false,<br>  "restart_workspace": true,<br>  "switch_running_mode": false<br>}</pre> | no |
| <a name="input_ssm_ad_connector_parameter_name"></a> [ssm\_ad\_connector\_parameter\_name](#input\_ssm\_ad\_connector\_parameter\_name) | ssm parameter name for microsoft AD | `string` | `"/workspace/Connector/password"` | no |
| <a name="input_ssm_parameter_name"></a> [ssm\_parameter\_name](#input\_ssm\_parameter\_name) | ssm parameter name for microsoft AD | `string` | `"/workspace/microsoft-ad/password"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | private subnet\_ids | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to add to your resources | `map(string)` | n/a | yes |
| <a name="input_user_names"></a> [user\_names](#input\_user\_names) | List of usernames to create workspaces for | `map(string)` | `{}` | no |
| <a name="input_volume_encryption_key"></a> [volume\_encryption\_key](#input\_volume\_encryption\_key) | encryption key | `string` | `""` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | default vpc | `string` | n/a | yes |
| <a name="input_workspace_access_properties"></a> [workspace\_access\_properties](#input\_workspace\_access\_properties) | Workspace access properties configuration. | <pre>object({<br>    device_type_android    = string<br>    device_type_chromeos   = string<br>    device_type_ios        = string<br>    device_type_linux      = string<br>    device_type_osx        = string<br>    device_type_web        = string<br>    device_type_windows    = string<br>    device_type_zeroclient = string<br>  })</pre> | <pre>{<br>  "device_type_android": "ALLOW",<br>  "device_type_chromeos": "ALLOW",<br>  "device_type_ios": "ALLOW",<br>  "device_type_linux": "ALLOW",<br>  "device_type_osx": "ALLOW",<br>  "device_type_web": "DENY",<br>  "device_type_windows": "ALLOW",<br>  "device_type_zeroclient": "ALLOW"<br>}</pre> | no |
| <a name="input_workspace_creation_properties"></a> [workspace\_creation\_properties](#input\_workspace\_creation\_properties) | Workspace creation properties configuration. | <pre>object({<br>    custom_security_group_id            = string<br>    default_ou                          = string<br>    enable_internet_access              = bool<br>    enable_maintenance_mode             = bool<br>    user_enabled_as_local_administrator = bool<br>  })</pre> | <pre>{<br>  "custom_security_group_id": "",<br>  "default_ou": "",<br>  "enable_internet_access": false,<br>  "enable_maintenance_mode": true,<br>  "user_enabled_as_local_administrator": true<br>}</pre> | no |
| <a name="input_workspace_properties"></a> [workspace\_properties](#input\_workspace\_properties) | Workspace properties configuration. | <pre>object({<br>    compute_type_name                         = string<br>    user_volume_size_gib                      = number<br>    root_volume_size_gib                      = number<br>    running_mode                              = string<br>    running_mode_auto_stop_timeout_in_minutes = number<br>  })</pre> | <pre>{<br>  "compute_type_name": "VALUE",<br>  "root_volume_size_gib": 80,<br>  "running_mode": "ALWAYS_ON",<br>  "running_mode_auto_stop_timeout_in_minutes": 60,<br>  "user_volume_size_gib": 10<br>}</pre> | no |
| <a name="input_workspaces_self_service_access_arn"></a> [workspaces\_self\_service\_access\_arn](#input\_workspaces\_self\_service\_access\_arn) | workspaces self service access from aws | `string` | n/a | yes |
| <a name="input_workspaces_service_access_arn"></a> [workspaces\_service\_access\_arn](#input\_workspaces\_service\_access\_arn) | workspaces service access from aws | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_bundle_id"></a> [workspace\_bundle\_id](#output\_workspace\_bundle\_id) | The ID of the AWS Workspaces bundle. |
| <a name="output_workspace_directory_id"></a> [workspace\_directory\_id](#output\_workspace\_directory\_id) | The ID of the AWS Workspaces directory. |
| <a name="output_workspace_properties"></a> [workspace\_properties](#output\_workspace\_properties) | The properties of the AWS Workspaces. |
| <a name="output_workspace_root_volume_encryption_enabled"></a> [workspace\_root\_volume\_encryption\_enabled](#output\_workspace\_root\_volume\_encryption\_enabled) | Whether root volume encryption is enabled for the AWS Workspaces. |
| <a name="output_workspace_user_name"></a> [workspace\_user\_name](#output\_workspace\_user\_name) | The username of the AWS Workspaces user. |
| <a name="output_workspace_user_volume_encryption_enabled"></a> [workspace\_user\_volume\_encryption\_enabled](#output\_workspace\_user\_volume\_encryption\_enabled) | Whether user volume encryption is enabled for the AWS Workspaces. |
| <a name="output_workspace_volume_encryption_key"></a> [workspace\_volume\_encryption\_key](#output\_workspace\_volume\_encryption\_key) | The encryption key used for AWS Workspaces volumes. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly  

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

### Tests
- Tests are available in `test` directory
- Configure the dependencies
  ```sh
  cd test/
  go mod init github.com/sourcefuse/arc-terraform-workspace
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  cd test
  go test
  ```

## Authors

This project is authored by:
- SourceFuse ARC Team
