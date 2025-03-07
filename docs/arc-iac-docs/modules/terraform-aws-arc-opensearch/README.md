![Module Structure](./static/banner.png)

# [terraform-aws-arc-opensearch](https://github.com/sourcefuse/terraform-aws-arc-opensearch)

<a href="https://github.com/sourcefuse/terraform-aws-arc-opensearch/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-opensearch.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-opensearch/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-opensearch.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-opensearch)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-opensearch)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-opensearch/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-opensearch/actions/workflows/snyk.yaml)
## Overview
Terraform module for Amazon OpenSearch provides a flexible and scalable way to deploy and manage OpenSearch clusters, with support for both serverless and managed (provisioned) deployment options.

## Usage

See the `example/vpc` folder for a working module example.

```hcl
################################################################################
## opensearch
################################################################################
module "opensearch" {
  source                       = "sourcefuse/arc-opensearch/aws"
  version                      = "0.1.2"
  namespace                    = var.namespace
  environment                  = var.environment
  name                         = var.name
  engine_version               = var.engine_version
  instance_type                = var.instance_type
  instance_count               = var.instance_count
  enable_vpc_options           = true
  vpc_id                       = data.aws_vpc.default.id
  subnet_ids                   = local.private_subnet_ids
  ingress_rules                = local.ingress_rules
  egress_rules                 = local.egress_rules

  tags = module.tags.tags
}

################################################################################
## opensearch serverless
################################################################################
 module "opensearch_serverless" {
  source                       = "sourcefuse/arc-opensearch/aws"
  version                      = "0.1.2"
  enable_serverless            = true
  namespace                    = var.namespace
  environment                  = var.environment
  name                         = var.name
  ingress_rules                = local.ingress_rules
  egress_rules                 = local.egress_rules
  subnet_ids                   = local.private_subnet_ids
  vpc_id                       = data.aws_vpc.default.id
  data_lifecycle_policy_rules  = local.data_lifecycle_policy_rules
  access_policy_rules          = local.access_policy_rules
  tags                         = module.tags.tags

}

```
See the `example/public` folder if you want your os to be public

```hcl
################################################################################
## opensearch
################################################################################
module "opensearch" {
  source                         = "sourcefuse/arc-opensearch/aws"
  version                        = "1.0.3"
  namespace                      = var.namespace
  environment                    = var.environment
  name                           = var.name
  engine_version                 = var.engine_version
  instance_type                  = var.instance_type
  instance_count                 = var.instance_count
  enable_encrypt_at_rest         = true
  enable_domain_endpoint_options = true
  advanced_security_enabled      = true

  tags = module.tags.tags
}

################################################################################
## opensearch serverless
################################################################################
module "opensearch_serverless" {
  source                       = "sourcefuse/arc-opensearch/aws"
  version                      = "1.0.3"
  enable_serverless            = true
  namespace                    = var.namespace
  environment                  = var.environment
  name                         = var.name
  enable_public_access         = true
  data_lifecycle_policy_rules  = local.data_lifecycle_policy_rules
  access_policy_rules          = local.access_policy_rules

  tags = module.tags.tags
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.74.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_opensearch"></a> [opensearch](#module\_opensearch) | ./modules/opensearch-domain | n/a |
| <a name="module_opensearch_serverless"></a> [opensearch\_serverless](#module\_opensearch\_serverless) | ./modules/opensearch-serverless | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policies"></a> [access\_policies](#input\_access\_policies) | Custom access policy for OpenSearch domain. If empty, default policy will be used | `string` | `""` | no |
| <a name="input_access_policy_rules"></a> [access\_policy\_rules](#input\_access\_policy\_rules) | List of rules for the access policy. | <pre>list(object({<br>    resource_type = string<br>    resource      = list(string)<br>    permissions   = list(string)<br>    principal     = optional(list(string), [])<br>  }))</pre> | `[]` | no |
| <a name="input_advanced_security_enabled"></a> [advanced\_security\_enabled](#input\_advanced\_security\_enabled) | Enable advanced security options (fine-grained access control) | `bool` | `false` | no |
| <a name="input_anonymous_auth_enabled"></a> [anonymous\_auth\_enabled](#input\_anonymous\_auth\_enabled) | Enable anonymous authentication | `bool` | `false` | no |
| <a name="input_auto_software_update_enabled"></a> [auto\_software\_update\_enabled](#input\_auto\_software\_update\_enabled) | Enable automatic software updates for OpenSearch | `bool` | `false` | no |
| <a name="input_auto_tune_cron_expression"></a> [auto\_tune\_cron\_expression](#input\_auto\_tune\_cron\_expression) | Cron expression for Auto-Tune maintenance schedule | `string` | `"0 1 * * ?"` | no |
| <a name="input_auto_tune_desired_state"></a> [auto\_tune\_desired\_state](#input\_auto\_tune\_desired\_state) | Desired state of Auto-Tune | `string` | `"ENABLED"` | no |
| <a name="input_auto_tune_duration_unit"></a> [auto\_tune\_duration\_unit](#input\_auto\_tune\_duration\_unit) | Duration unit for Auto-Tune maintenance | `string` | `"HOURS"` | no |
| <a name="input_auto_tune_duration_value"></a> [auto\_tune\_duration\_value](#input\_auto\_tune\_duration\_value) | Duration value for Auto-Tune maintenance | `number` | `1` | no |
| <a name="input_auto_tune_start_at"></a> [auto\_tune\_start\_at](#input\_auto\_tune\_start\_at) | Start time for Auto-Tune maintenance | `string` | `"2024-10-23T01:00:00Z"` | no |
| <a name="input_availability_zone_count"></a> [availability\_zone\_count](#input\_availability\_zone\_count) | The number of availability zones to use for zone awareness. | `number` | `2` | no |
| <a name="input_cognito_identity_pool_id"></a> [cognito\_identity\_pool\_id](#input\_cognito\_identity\_pool\_id) | Cognito Identity Pool ID | `string` | `""` | no |
| <a name="input_cognito_user_pool_id"></a> [cognito\_user\_pool\_id](#input\_cognito\_user\_pool\_id) | Cognito User Pool ID | `string` | `""` | no |
| <a name="input_create_access_policy"></a> [create\_access\_policy](#input\_create\_access\_policy) | Flag to determine if access policy should be created. | `bool` | `true` | no |
| <a name="input_create_data_lifecycle_policy"></a> [create\_data\_lifecycle\_policy](#input\_create\_data\_lifecycle\_policy) | Flag to determine if data lifecycle policy should be created. | `bool` | `true` | no |
| <a name="input_create_encryption_policy"></a> [create\_encryption\_policy](#input\_create\_encryption\_policy) | Flag to determine if encryption policy should be created. | `bool` | `true` | no |
| <a name="input_custom_certificate_arn"></a> [custom\_certificate\_arn](#input\_custom\_certificate\_arn) | ARN of the ACM certificate for the custom endpoint | `string` | `""` | no |
| <a name="input_custom_hostname"></a> [custom\_hostname](#input\_custom\_hostname) | Custom domain name for the OpenSearch endpoint | `string` | `""` | no |
| <a name="input_data_lifecycle_policy_rules"></a> [data\_lifecycle\_policy\_rules](#input\_data\_lifecycle\_policy\_rules) | Data lifecycle policy rules for the indices. | <pre>list(object({<br>    indexes   = list(string)<br>    retention = string<br>  }))</pre> | <pre>[<br>  {<br>    "indexes": [<br>      "*"<br>    ],<br>    "retention": "Unlimited"<br>  }<br>]</pre> | no |
| <a name="input_dedicated_master_count"></a> [dedicated\_master\_count](#input\_dedicated\_master\_count) | Number of dedicated master instances | `number` | `3` | no |
| <a name="input_dedicated_master_enabled"></a> [dedicated\_master\_enabled](#input\_dedicated\_master\_enabled) | Whether dedicated master is enabled | `bool` | `false` | no |
| <a name="input_dedicated_master_type"></a> [dedicated\_master\_type](#input\_dedicated\_master\_type) | Instance type for the dedicated master node | `string` | `"m5.large.search"` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for the OpenSearch collection. | `string` | `"OpenSearch collection domain for logs and search"` | no |
| <a name="input_ebs_enabled"></a> [ebs\_enabled](#input\_ebs\_enabled) | Whether EBS is enabled for the domain | `bool` | `true` | no |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | A list of egress rules for the security group. | <pre>list(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_enable_auto_tune"></a> [enable\_auto\_tune](#input\_enable\_auto\_tune) | Enable Auto-Tune for the domain | `bool` | `false` | no |
| <a name="input_enable_cognito_options"></a> [enable\_cognito\_options](#input\_enable\_cognito\_options) | Enable Cognito authentication for the OpenSearch domain | `bool` | `false` | no |
| <a name="input_enable_custom_endpoint"></a> [enable\_custom\_endpoint](#input\_enable\_custom\_endpoint) | Enable custom domain endpoint | `bool` | `false` | no |
| <a name="input_enable_domain_endpoint_options"></a> [enable\_domain\_endpoint\_options](#input\_enable\_domain\_endpoint\_options) | Enable custom domain endpoint options for the OpenSearch domain. | `bool` | `false` | no |
| <a name="input_enable_encrypt_at_rest"></a> [enable\_encrypt\_at\_rest](#input\_enable\_encrypt\_at\_rest) | Enable encryption at rest for the OpenSearch domain. | `bool` | `false` | no |
| <a name="input_enable_off_peak_window_options"></a> [enable\_off\_peak\_window\_options](#input\_enable\_off\_peak\_window\_options) | Enable off-peak window options for the domain | `bool` | `false` | no |
| <a name="input_enable_public_access"></a> [enable\_public\_access](#input\_enable\_public\_access) | Enable public access for the OpenSearch collection. If false, private access will be used. | `bool` | `false` | no |
| <a name="input_enable_serverless"></a> [enable\_serverless](#input\_enable\_serverless) | Enable OpenSearch Serverless. If true, creates the serverless module; if false, creates the standard module. | `bool` | `false` | no |
| <a name="input_enable_snapshot_options"></a> [enable\_snapshot\_options](#input\_enable\_snapshot\_options) | Enable snapshot options for the domain | `bool` | `false` | no |
| <a name="input_enable_vpc_options"></a> [enable\_vpc\_options](#input\_enable\_vpc\_options) | Enable VPC options for the OpenSearch domain. | `bool` | `false` | no |
| <a name="input_enable_zone_awareness"></a> [enable\_zone\_awareness](#input\_enable\_zone\_awareness) | Enable zone awareness for the OpenSearch domain. | `bool` | `false` | no |
| <a name="input_encrypt_at_rest_enabled"></a> [encrypt\_at\_rest\_enabled](#input\_encrypt\_at\_rest\_enabled) | Enable encryption at rest | `bool` | `true` | no |
| <a name="input_enforce_https"></a> [enforce\_https](#input\_enforce\_https) | Force HTTPS on the OpenSearch endpoint | `bool` | `true` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | OpenSearch or Elasticsearch engine version | `string` | `"OpenSearch_1.0"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment, i.e. dev, stage, prod | `string` | n/a | yes |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | A list of ingress rules for the security group. | <pre>list(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | Number of instances in the cluster | `number` | `2` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type for the OpenSearch domain | `string` | `"m5.large.search"` | no |
| <a name="input_internal_user_database_enabled"></a> [internal\_user\_database\_enabled](#input\_internal\_user\_database\_enabled) | Enable internal user database for fine-grained access control | `bool` | `true` | no |
| <a name="input_iops"></a> [iops](#input\_iops) | Provisioned IOPS for the volume | `number` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | KMS key ID for encryption at rest | `string` | `""` | no |
| <a name="input_log_publishing_enabled"></a> [log\_publishing\_enabled](#input\_log\_publishing\_enabled) | Whether to enable the log publishing option. | `bool` | `true` | no |
| <a name="input_log_types"></a> [log\_types](#input\_log\_types) | List of log types to publish to CloudWatch (Valid values: INDEX\_SLOW\_LOGS, SEARCH\_SLOW\_LOGS, ES\_APPLICATION\_LOGS, AUDIT\_LOGS) | `list(string)` | <pre>[<br>  "INDEX_SLOW_LOGS",<br>  "SEARCH_SLOW_LOGS"<br>]</pre> | no |
| <a name="input_master_user_arn"></a> [master\_user\_arn](#input\_master\_user\_arn) | The ARN of the IAM role for fine-grained access control. Required if use\_iam\_arn\_as\_master\_user is true. | `string` | `""` | no |
| <a name="input_master_user_name"></a> [master\_user\_name](#input\_master\_user\_name) | Master user name for OpenSearch | `string` | `"admin"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the OpenSearch domain | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the project, i.e. arc | `string` | n/a | yes |
| <a name="input_node_to_node_encryption_enabled"></a> [node\_to\_node\_encryption\_enabled](#input\_node\_to\_node\_encryption\_enabled) | Enable node-to-node encryption | `bool` | `true` | no |
| <a name="input_off_peak_hours"></a> [off\_peak\_hours](#input\_off\_peak\_hours) | Off-peak window start time (hours) | `number` | `0` | no |
| <a name="input_off_peak_minutes"></a> [off\_peak\_minutes](#input\_off\_peak\_minutes) | Off-peak window start time (minutes) | `number` | `0` | no |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | The number of days to retain log events in the log group | `number` | `7` | no |
| <a name="input_saml_options"></a> [saml\_options](#input\_saml\_options) | Configuration block for SAML options in the OpenSearch domain. | <pre>object({<br>    enabled                 = bool<br>    idp_entity_id           = optional(string)<br>    idp_metadata_content    = optional(string)<br>    roles_key               = optional(string)<br>    session_timeout_minutes = optional(number)<br>    subject_key             = optional(string)<br>  })</pre> | <pre>{<br>  "enabled": false,<br>  "idp_entity_id": null,<br>  "idp_metadata_content": null,<br>  "roles_key": null,<br>  "session_timeout_minutes": null,<br>  "subject_key": null<br>}</pre> | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Name for the security group | `string` | `""` | no |
| <a name="input_snapshot_start_hour"></a> [snapshot\_start\_hour](#input\_snapshot\_start\_hour) | Start hour for the automated snapshot | `number` | `0` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for the OpenSearch domain | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources | `map(string)` | n/a | yes |
| <a name="input_throughput"></a> [throughput](#input\_throughput) | Provisioned throughput for the volume | `number` | `null` | no |
| <a name="input_tls_security_policy"></a> [tls\_security\_policy](#input\_tls\_security\_policy) | TLS security policy for HTTPS endpoints | `string` | `"Policy-Min-TLS-1-2-PFS-2023-10"` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of OpenSearch collection. | `string` | `"TIMESERIES"` | no |
| <a name="input_use_iam_arn_as_master_user"></a> [use\_iam\_arn\_as\_master\_user](#input\_use\_iam\_arn\_as\_master\_user) | Set to true to use IAM ARN as the master user, false to create a master user. | `bool` | `false` | no |
| <a name="input_use_standby_replicas"></a> [use\_standby\_replicas](#input\_use\_standby\_replicas) | Flag to enable or disable standby replicas. | `bool` | `true` | no |
| <a name="input_use_ultrawarm"></a> [use\_ultrawarm](#input\_use\_ultrawarm) | Whether to enable UltraWarm nodes | `bool` | `false` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | EBS volume size in GB | `number` | `20` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | EBS volume type | `string` | `"gp2"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC for OpenSearch domain | `string` | `null` | no |
| <a name="input_warm_count"></a> [warm\_count](#input\_warm\_count) | Number of UltraWarm instances | `number` | `2` | no |
| <a name="input_warm_type"></a> [warm\_type](#input\_warm\_type) | UltraWarm node instance type | `string` | `"ultrawarm1.medium.search"` | no |
| <a name="input_zone_awareness_enabled"></a> [zone\_awareness\_enabled](#input\_zone\_awareness\_enabled) | Whether zone awareness is enabled | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_opensearch_collection_endpoint"></a> [opensearch\_collection\_endpoint](#output\_opensearch\_collection\_endpoint) | The Endpoint of the OpenSearch collection |
| <a name="output_opensearch_domain_arn"></a> [opensearch\_domain\_arn](#output\_opensearch\_domain\_arn) | The ARN of the OpenSearch domain. |
| <a name="output_opensearch_domain_endpoint"></a> [opensearch\_domain\_endpoint](#output\_opensearch\_domain\_endpoint) | The endpoint of the OpenSearch domain. |
| <a name="output_opensearch_domain_id"></a> [opensearch\_domain\_id](#output\_opensearch\_domain\_id) | The unique identifier for the OpenSearch domain. |
| <a name="output_opensearch_serverless_collection_arn"></a> [opensearch\_serverless\_collection\_arn](#output\_opensearch\_serverless\_collection\_arn) | The ARN of the OpenSearch Serverless collection |
| <a name="output_opensearch_serverless_collection_id"></a> [opensearch\_serverless\_collection\_id](#output\_opensearch\_serverless\_collection\_id) | The ID of the OpenSearch Serverless collection |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->  

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
  go mod init github.com/sourcefuse/terraform-aws-refarch-opensearch
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:  
* SourceFuse ARC Team
