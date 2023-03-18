# terraform-aws-ref-arch-ecs

## Overview

Terraform Module for AWS ECS by the SourceFuse ARC team.

The module assumes that upstream dependencies, namely networking dependencies, are created upstream and the values are passed into this module via mechanisms such as Terraform data source queries.

![Module Components](./static/ecs_module_hla.png)

The module provisions

* ECS Cluster - we are focusing on the Fargate launch type, so we do not provision any underlying EC2 instances for the ECS launch type.
* Application Load Balancer
* Health Check Service - vanilla Nginx service that is used as the default route for the load balancer. The purpose of the health check service is to ensure that the core infrastructure, networking, security groups, etc. are configured correctly.
* Task execution IAM role - used by downstream services for task execution.
* Tags/SSM params - the module tags resources and outputs SSM params that can be used in data source lookups downstream for ECS services to reference to deploy into the cluster.

Our approach to ECS Fargate clusters is to provision a cluster and allow downstream services to attach to it via convention based data source queries.

## Usage

```hcl
module "ecs" {
  source = "git::https://github.com/sourcefuse/terraform-aws-refarch-ecs"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.57.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acm"></a> [acm](#module\_acm) | git::https://github.com/cloudposse/terraform-aws-acm-request-certificate | 0.17.0 |
| <a name="module_alb"></a> [alb](#module\_alb) | ./modules/alb | n/a |
| <a name="module_alb_sg"></a> [alb\_sg](#module\_alb\_sg) | git::https://github.com/cloudposse/terraform-aws-security-group | 2.0.0 |
| <a name="module_ecs"></a> [ecs](#module\_ecs) | git::https://github.com/terraform-aws-modules/terraform-aws-ecs | v4.1.2 |
| <a name="module_health_check"></a> [health\_check](#module\_health\_check) | ./modules/health-check | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_policy.secrets_manager_read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy_attachment.secrets_manager_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_role.execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_lb_listener.http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_service_discovery_private_dns_namespace.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_private_dns_namespace) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_iam_policy_document.assume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_logs_enabled"></a> [access\_logs\_enabled](#input\_access\_logs\_enabled) | A boolean flag to enable/disable access\_logs | `bool` | `true` | no |
| <a name="input_acm_domain_name"></a> [acm\_domain\_name](#input\_acm\_domain\_name) | Domain name the ACM Certificate belongs to | `string` | n/a | yes |
| <a name="input_acm_process_domain_validation_options"></a> [acm\_process\_domain\_validation\_options](#input\_acm\_process\_domain\_validation\_options) | Flag to enable/disable processing of the record to add to the DNS zone to complete certificate validation | `bool` | `true` | no |
| <a name="input_acm_process_domain_validation_record_ttl"></a> [acm\_process\_domain\_validation\_record\_ttl](#input\_acm\_process\_domain\_validation\_record\_ttl) | The TTL of the record to add to the DNS zone to complete certificate validation | `string` | `"300"` | no |
| <a name="input_acm_subject_alternative_names"></a> [acm\_subject\_alternative\_names](#input\_acm\_subject\_alternative\_names) | Subject alternative names for the ACM Certificate | `list(string)` | `[]` | no |
| <a name="input_additional_ssm_params"></a> [additional\_ssm\_params](#input\_additional\_ssm\_params) | Additional SSM Parameters you would like to add for your ECS configuration.<br>The optional value defaults are:<br>  description = "Managed by Terraform"<br>  type = "SecureString"<br>  overwrite = true | <pre>list(object({<br>    name        = string<br>    value       = string<br>    description = string<br>    type        = string<br>    overwrite   = bool<br>  }))</pre> | `[]` | no |
| <a name="input_alb_access_logs_s3_bucket_force_destroy"></a> [alb\_access\_logs\_s3\_bucket\_force\_destroy](#input\_alb\_access\_logs\_s3\_bucket\_force\_destroy) | A boolean that indicates all objects should be deleted from the ALB access logs S3 bucket so that the bucket can be destroyed without error | `bool` | `false` | no |
| <a name="input_alb_access_logs_s3_bucket_force_destroy_enabled"></a> [alb\_access\_logs\_s3\_bucket\_force\_destroy\_enabled](#input\_alb\_access\_logs\_s3\_bucket\_force\_destroy\_enabled) | When `true`, permits `force_destroy` to be set to `true`.<br>This is an extra safety precaution to reduce the chance that Terraform will destroy and recreate<br>your S3 bucket, causing COMPLETE LOSS OF ALL DATA even if it was stored in Glacier.<br>WARNING: Upgrading this module from a version prior to 0.27.0 to this version<br>  will cause Terraform to delete your existing S3 bucket CAUSING COMPLETE DATA LOSS<br>  unless you follow the upgrade instructions on the Wiki [here](https://github.com/cloudposse/terraform-aws-s3-log-storage/wiki/Upgrading-to-v0.27.0-(POTENTIAL-DATA-LOSS)).<br>  See additional instructions for upgrading from v0.27.0 to v0.28.0 [here](https://github.com/cloudposse/terraform-aws-s3-log-storage/wiki/Upgrading-to-v0.28.0-and-AWS-provider-v4-(POTENTIAL-DATA-LOSS)). | `bool` | `false` | no |
| <a name="input_alb_certificate_arn"></a> [alb\_certificate\_arn](#input\_alb\_certificate\_arn) | ALB Certificate ARN. If `var.create_acm_certificate` is `true`, this will be ignored. | `string` | `null` | no |
| <a name="input_alb_idle_timeout"></a> [alb\_idle\_timeout](#input\_alb\_idle\_timeout) | The time that the connection is allowed to be idle. | `number` | `300` | no |
| <a name="input_alb_internal"></a> [alb\_internal](#input\_alb\_internal) | Determines if this load balancer is internally or externally facing. | `bool` | `false` | no |
| <a name="input_alb_ssl_policy"></a> [alb\_ssl\_policy](#input\_alb\_ssl\_policy) | Load Balancer SSL policy. | `string` | `"ELBSecurityPolicy-FS-1-2-Res-2020-10"` | no |
| <a name="input_alb_subnet_ids"></a> [alb\_subnet\_ids](#input\_alb\_subnet\_ids) | Subnet Ids assigned to the LB | `list(string)` | n/a | yes |
| <a name="input_cluster_name_override"></a> [cluster\_name\_override](#input\_cluster\_name\_override) | Name to assign the cluster. If null, the default will be `namespace-environment-cluster` | `string` | `null` | no |
| <a name="input_create_acm_certificate"></a> [create\_acm\_certificate](#input\_create\_acm\_certificate) | Create an ACM Certificate to use with the ALB | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_execution_policy_attachment_arns"></a> [execution\_policy\_attachment\_arns](#input\_execution\_policy\_attachment\_arns) | The ARNs of the policies you want to apply | `list(string)` | <pre>[<br>  "arn:aws:iam::aws:policy/AmazonSSMReadOnlyAccess",<br>  "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"<br>]</pre> | no |
| <a name="input_health_check_route_53_private_zone"></a> [health\_check\_route\_53\_private\_zone](#input\_health\_check\_route\_53\_private\_zone) | Used with `name` field to get a private Hosted Zone | `bool` | `false` | no |
| <a name="input_health_check_route_53_records"></a> [health\_check\_route\_53\_records](#input\_health\_check\_route\_53\_records) | List of Route 53 records for the health check service. | `list(string)` | n/a | yes |
| <a name="input_health_check_subnet_ids"></a> [health\_check\_subnet\_ids](#input\_health\_check\_subnet\_ids) | Subnet IDs for the health check tasks to run in. If not defined, this will use `var.alb_subnet_ids`. | `list(string)` | `[]` | no |
| <a name="input_log_group_retention_days"></a> [log\_group\_retention\_days](#input\_log\_group\_retention\_days) | Specifies the number of days you want to retain log events in the specified log group.<br>Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096,<br>1827, 2192, 2557, 2922, 3288, 3653, and 0.<br>If you select 0, the events in the log group are always retained and never expire | `number` | `30` | no |
| <a name="input_log_group_skip_destroy"></a> [log\_group\_skip\_destroy](#input\_log\_group\_skip\_destroy) | Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the Terraform state. | `bool` | `false` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace your resource belongs to.<br>Usually an abbreviation of your organization name, e.g. 'example' or 'arc', to help ensure generated IDs are globally unique" | `string` | n/a | yes |
| <a name="input_route_53_zone"></a> [route\_53\_zone](#input\_route\_53\_zone) | Route 53 domain to generate an ACM request for and to create A records against, i.e. sfrefarch.com. A wildcard subject alternative name is generated with the certificate. | `string` | n/a | yes |
| <a name="input_service_discovery_private_dns_namespace"></a> [service\_discovery\_private\_dns\_namespace](#input\_service\_discovery\_private\_dns\_namespace) | The name of the namespace | `list(string)` | <pre>[<br>  "default.example.local"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign the resources. | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Id of the VPC where the resources will live | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_arn"></a> [alb\_arn](#output\_alb\_arn) | ARN to the ALB |
| <a name="output_alb_certificate_arn"></a> [alb\_certificate\_arn](#output\_alb\_certificate\_arn) | ACM Certificate ARN |
| <a name="output_alb_dns_name"></a> [alb\_dns\_name](#output\_alb\_dns\_name) | External DNS name to the ALB |
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | ECS Cluster ARN |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | ECS Cluster ID |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | ECS Cluster name |
| <a name="output_health_check_fqdn"></a> [health\_check\_fqdn](#output\_health\_check\_fqdn) | Health check FQDN record created in Route 53. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## SSM Parameters  
There are some commonly referenced outputs generated by this module.
These outputs are also published to SSM for ease of access for downstream resources.  
The default SSM Parameter format used by this module is the following:  
```
[
  ## alb
  {
    name        = "/${var.namespace}/${var.environment}/alb/${module.alb.alb_name}/endpoint"
    value       = module.alb.alb_dns_name
    description = "ALB DNS Endpoint"
    type        = "String"
  },
  {
    name        = "/${var.namespace}/${var.environment}/alb/${module.alb.alb_name}/arn"
    value       = module.alb.alb_arn
    description = "ALB ARN"
    type        = "String"
  },

  ## ecs
  {
    name        = "/${var.namespace}/${var.environment}/ecs/${module.ecs.cluster_name}/id"
    value       = module.ecs.cluster_id
    description = "ECS Cluster ID"
    type        = "String"
  },
  {
    name        = "/${var.namespace}/${var.environment}/ecs/${module.ecs.cluster_name}/arn"
    value       = module.ecs.cluster_arn
    description = "ECS Cluster ARN"
    type        = "String"
  }
]
```  

You can append to this array by adding values to `var.additional_ssm_params`.  

## Versioning  
This project uses a `.version` file at the root of the repo which the pipeline reads from and does a git tag.  

When you intend to commit to `main`, you will need to increment this version. Once the project is merged,
the pipeline will kick off and tag the latest git commit.  

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
  go mod init github.com/sourcefuse/terraform-aws-refarch-ecs
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:
- SourceFuse
