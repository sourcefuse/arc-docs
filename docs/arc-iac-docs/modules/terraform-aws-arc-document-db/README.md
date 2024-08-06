![Module Structure](./static/banner.png)

# [terraform-aws-arc-document-db](https://github.com/sourcefuse/terraform-aws-arc-document-db)

<a href="https://github.com/sourcefuse/terraform-aws-arc-document-db/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-document-db.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-document-db/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-document-db.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-document-db)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-document-db)

[![snyk](https://github.com/sourcefuse/terraform-aws-arc-document-db/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-document-db/actions/workflows/snyk.yaml)

## Overview

The SourceFuse AWS Reference Architecture (ARC) Terraform module for managing AWS DocumentDB offers a streamlined solution for provisioning, configuring, and managing DocumentDB clusters within the Amazon Web Services (AWS) environment. This Terraform module is specifically designed to simplify the deployment and maintenance of DocumentDB.

For more information about this repository and its usage, please see [Terraform AWS ARC Document DB Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-document-db/blob/main/docs/module-usage-guide/README.md).

## Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-document-db/blob/main/example/main.tf) file in the example folder.  

```tcl
module "example_doc_db_cluster" {
  source  = "sourcefuse/arc-document-db/aws"  
  // we recommend to pin the version we aren't simply for an example reference against our latest changes.
  namespace   = var.namespace
  environment = var.environment

  doc_db_cluster_name = var.doc_db_cluster_name
  cluster_size        = var.cluster_size
  master_username     = var.master_username
  instance_class      = var.instance_class
  vpc_id              = data.aws_vpc.vpc_id.id
  subnet_ids          = data.aws_subnets.private.ids

  tags = module.tags.tags

}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_doc_db_cluster"></a> [doc\_db\_cluster](#module\_doc\_db\_cluster) | cloudposse/documentdb-cluster/aws | 0.24.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.documentdb_host](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.documentdb_port](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.documentdb_username](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_cidr_blocks"></a> [allowed\_cidr\_blocks](#input\_allowed\_cidr\_blocks) | List of CIDR blocks to be allowed to connect to the DocumentDB cluster | `list(string)` | `[]` | no |
| <a name="input_allowed_security_groups"></a> [allowed\_security\_groups](#input\_allowed\_security\_groups) | List of existing Security Groups to be allowed to connect to the DocumentDB cluster | `list(string)` | `[]` | no |
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window | `bool` | `true` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Specifies whether any minor engine upgrades will be applied automatically to the DB instance during the maintenance window or not | `bool` | `true` | no |
| <a name="input_cluster_dns_name"></a> [cluster\_dns\_name](#input\_cluster\_dns\_name) | Name of the cluster CNAME record to create in the parent DNS zone specified by `zone_id`. If left empty, the name will be auto-asigned using the format `master.var.name` | `string` | `""` | no |
| <a name="input_cluster_family"></a> [cluster\_family](#input\_cluster\_family) | The family of the DocumentDB cluster parameter group. For more details, see https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-parameter-group-create.html | `string` | `"docdb3.6"` | no |
| <a name="input_cluster_parameters"></a> [cluster\_parameters](#input\_cluster\_parameters) | List of DB parameters to apply | <pre>list(object({<br>    apply_method = string<br>    name         = string<br>    value        = string<br>  }))</pre> | `[]` | no |
| <a name="input_cluster_size"></a> [cluster\_size](#input\_cluster\_size) | Number of DB instances to create in the cluster | `number` | n/a | yes |
| <a name="input_db_port"></a> [db\_port](#input\_db\_port) | The port on which the DB accepts connections | `number` | `27017` | no |
| <a name="input_doc_db_cluster_name"></a> [doc\_db\_cluster\_name](#input\_doc\_db\_cluster\_name) | Name of the DB cluster | `string` | n/a | yes |
| <a name="input_documentdb_host"></a> [documentdb\_host](#input\_documentdb\_host) | The name for the DocumentDB host SSM parameter | `string` | `"/arc/doc_db/host"` | no |
| <a name="input_documentdb_port"></a> [documentdb\_port](#input\_documentdb\_port) | The name for the DocumentDB port SSM parameter | `string` | `"/arc/doc_db/port"` | no |
| <a name="input_documentdb_username"></a> [documentdb\_username](#input\_documentdb\_username) | The name for the DocumentDB username SSM parameter | `string` | `"/arc/doc_db/username"` | no |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | List of log types to export to cloudwatch. The following log types are supported: `audit`, `error`, `general`, `slowquery` | `list(string)` | `[]` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb` | `string` | `"docdb"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The version number of the database engine to use | `string` | `"3.6.0"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | environment value, e.g 'prod', 'staging', 'dev', 'UAT' | `string` | `""` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | Instance class to use for the DB instances in the cluster | `string` | n/a | yes |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to `true` | `string` | `""` | no |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | Username for the master DB user | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | n/a | yes |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | Daily time range during which the backups happen | `string` | `"07:00-09:00"` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The window to perform maintenance in. Syntax: `ddd:hh24:mi-ddd:hh24:mi`. | `string` | `"Mon:22:00-Mon:23:00"` | no |
| <a name="input_reader_dns_name"></a> [reader\_dns\_name](#input\_reader\_dns\_name) | Name of the reader endpoint CNAME record to create in the parent DNS zone specified by `zone_id`. If left empty, the name will be auto-asigned using the format `replicas.var.name` | `string` | `""` | no |
| <a name="input_retention_period"></a> [retention\_period](#input\_retention\_period) | Number of days to retain backups for | `number` | `5` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | Determines whether a final DB snapshot is created before the DB cluster is deleted | `bool` | `true` | no |
| <a name="input_snapshot_identifier"></a> [snapshot\_identifier](#input\_snapshot\_identifier) | Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot | `string` | `""` | no |
| <a name="input_ssm_parameter_enabled"></a> [ssm\_parameter\_enabled](#input\_ssm\_parameter\_enabled) | Whether to create an SSM parameter for the master password | `bool` | `true` | no |
| <a name="input_ssm_parameter_path_prefix"></a> [ssm\_parameter\_path\_prefix](#input\_ssm\_parameter\_path\_prefix) | The path prefix for the created SSM parameter e.g. '/docdb/master-password/dev'. `ssm_parameter_enabled` must be set to `true` for this to take affect. | `string` | `"/arc/doc_db/master_password/"` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Specifies whether the DB cluster is encrypted | `bool` | `true` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs to create the DB cluster in | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to apply to all resources | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC to create the DB cluster in | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Route53 parent zone ID. If provided (not empty), the module will create sub-domain DNS records for the DocumentDB master and replicas | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Amazon Resource Name (ARN) of the DocumentDB cluster |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | DocumentDB Cluster Identifier |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | Endpoint of the DocumentDB cluster |
| <a name="output_reader_endpoint"></a> [reader\_endpoint](#output\_reader\_endpoint) | Read-only endpoint of the DocumentDB cluster, automatically load-balanced across replicas |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

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
  go mod init github.com/sourcefuse/terraform-aws-refarch-<module_name>
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:
- SourceFuse ARC Team
