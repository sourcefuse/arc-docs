![Module Structure](./static/terraform-aws-arc-fsx.png)

# [terraform-aws-arc-fsx](https://github.com/sourcefuse/terraform-aws-arc-fsx)

<a href="https://github.com/sourcefuse/terraform-aws-arc-fsx/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-fsx.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-fsx/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-fsx.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-fsx&token=f9795bcdfa8a522b86818bff5287cf85038e7d88)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-fsx)

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module facilitates the management of a comprehensive, reusable Terraform module for provisioning and managing AWS IAM Identity Center (AWS SSO) resources following AWS and Terraform best practices.



## Features

- **Multi-FSx Support**: Windows File Server, Lustre, NetApp ONTAP, and OpenZFS
- **File Cache**: FSx File Cache for high-performance caching
- **Volumes**: ONTAP and OpenZFS volume management
- **Storage Virtual Machines**: ONTAP SVM creation and configuration
- **Snapshots**: OpenZFS snapshot management
- **Backups**: Manual backup creation and management
- **Security**: SourceFuse ARC Security Group module with protocol-specific rules
- **Active Directory**: Support for both AWS Managed AD and self-managed AD
- **S3 Integration**: Data repository associations for Lustre file systems
- **Backup Management**: Configurable automatic backups and retention
- **Encryption**: KMS encryption support for data at rest
- **IAM Integration**: Optional IAM role creation with least-privilege policies
- **Flexible Networking**: Multi-AZ and single-AZ deployment options

## FSx Component Support Matrix

| Component | Windows | Lustre | ONTAP | OpenZFS | File Cache |
|-----------|---------|--------|-------|---------|------------|
| File Systems | Yes | Yes | Yes | Yes | Yes |
| Volumes | No | No | Yes | Yes | No |
| Storage Virtual Machines | No | No | Yes | No | No |
| Snapshots | No | No | No | Yes | No |
| Backups | Yes | Yes | Yes | Yes | No |
| Data Repository | No | Yes | No | No | No |
| Multi-AZ | Yes | No | Yes | Yes | No |
| S3 Integration | No | Yes | No | No | No |

## Usage

### Basic Windows File Server

```hcl
module "fsx_windows" {
  source   = "sourcefuse/arc-fsx/aws"
  version  = "0.0.1"

  name        = "my-windows-fsx"
  environment = "prod"
  fsx_type    = "windows"

  vpc_id     = "vpc-12345678"
  subnet_ids = ["subnet-12345678"]

  storage_capacity    = 32
  throughput_capacity = 8
  deployment_type     = "SINGLE_AZ_2"

  active_directory_id = "d-1234567890"

  tags = {
    Project = "File Sharing"
  }
}
```

### NetApp ONTAP Complete

```hcl
module "fsx_ontap" {
  source   = "sourcefuse/arc-fsx/aws"
  version  = "0.0.1"

  name        = "my-ontap-fsx"
  environment = "prod"
  fsx_type    = "ontap"

  vpc_id     = "vpc-12345678"
  subnet_ids = ["subnet-12345678", "subnet-87654321"]

  storage_capacity    = 1024
  throughput_capacity = 512
  deployment_type     = "MULTI_AZ_1"

  ontap_configuration = {
    storage_virtual_machines = {
      main = {
        name = "main-svm"
        root_volume_security_style = "UNIX"
      }
    }
    volumes = {
      data = {
        name                       = "data-volume"
        storage_virtual_machine_id = "main"
        size_in_megabytes         = 102400
        storage_efficiency_enabled = true
      }
    }
  }

  tags = {
    Project = "Data Analytics"
  }
}
```

### OpenZFS Complete

```hcl
module "fsx_openzfs" {
  source   = "sourcefuse/arc-fsx/aws"
  version  = "0.0.1"

  name        = "my-openzfs-fsx"
  environment = "prod"
  fsx_type    = "openzfs"

  vpc_id     = "vpc-12345678"
  subnet_ids = ["subnet-12345678"]

  storage_capacity    = 64
  throughput_capacity = 64
  deployment_type     = "SINGLE_AZ_1"

  openzfs_configuration = {
    root_volume_configuration = {
      data_compression_type = "ZSTD"
      nfs_exports = {
        client_configurations = [{
          clients = "10.0.0.0/8"
          options = ["rw", "crossmnt", "sync"]
        }]
      }
    }
    volumes = {
      data = {
        name   = "data-volume"
        parent_volume_id = "root"
        data_compression_type = "ZSTD"
      }
    }
    snapshots = {
      daily = {
        name      = "daily-snapshot"
        volume_id = "data"
      }
    }
  }

  tags = {
    Project = "High Performance Storage"
  }
}
```
## Examples

- [Basic Windows File Server](./examples/basic-windows/) - Single-AZ Windows file server with AWS Managed AD
- [Windows with Self-Managed AD](./examples/windows-self-managed-ad/) - Windows file server with custom Active Directory
- [Lustre](./examples/lustre/) - High-performance Lustre file system
- [ONTAP Complete](./examples/ontap-complete/) - NetApp ONTAP with storage virtual machines and volumes
- [ONTAP Multi-Protocol](./examples/ontap-multi-protocol/) - NetApp ONTAP with NFS, SMB, and iSCSI support
- [OpenZFS Complete](./examples/openzfs-complete/) - OpenZFS with snapshots and compression


## Security Considerations

- Security groups are created with minimal required ports for each FSx type
- KMS encryption is supported for data at rest
- IAM roles follow least-privilege principles
- Network access is restricted to specified CIDR blocks
- Backup encryption is enabled by default

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.28.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.7.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_fsx_backup.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_backup) | resource |
| [aws_fsx_data_repository_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_data_repository_association) | resource |
| [aws_fsx_file_cache.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_file_cache) | resource |
| [aws_fsx_lustre_file_system.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_lustre_file_system) | resource |
| [aws_fsx_ontap_file_system.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_ontap_file_system) | resource |
| [aws_fsx_ontap_storage_virtual_machine.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_ontap_storage_virtual_machine) | resource |
| [aws_fsx_ontap_volume.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_ontap_volume) | resource |
| [aws_fsx_openzfs_file_system.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_openzfs_file_system) | resource |
| [aws_fsx_openzfs_snapshot.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_openzfs_snapshot) | resource |
| [aws_fsx_openzfs_volume.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_openzfs_volume) | resource |
| [aws_fsx_windows_file_system.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_windows_file_system) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_ssm_parameter.fsx_admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.svm_admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [random_id.fsx](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [random_password.fsx_admin](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_password.svm_admin](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_configuration"></a> [backup\_configuration](#input\_backup\_configuration) | Backup configuration for FSx file systems | <pre>object({<br/>    copy_tags_to_backups              = optional(bool, true)<br/>    skip_final_backup                 = optional(bool, false)<br/>    final_backup_tags                 = optional(map(string), {})<br/>    automatic_backup_retention_days   = optional(number, 0)<br/>    daily_automatic_backup_start_time = optional(string, null)<br/>  })</pre> | `{}` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create FSx resources | `bool` | `true` | no |
| <a name="input_deployment_type"></a> [deployment\_type](#input\_deployment\_type) | Deployment type for the file system | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name (e.g., dev, staging, prod) | `string` | `"dev"` | no |
| <a name="input_file_cache_configuration"></a> [file\_cache\_configuration](#input\_file\_cache\_configuration) | FSx File Cache configuration | <pre>object({<br/>    create_file_cache                         = optional(bool, false)<br/>    file_cache_type                           = optional(string, "LUSTRE")<br/>    file_cache_type_version                   = optional(string, "2.12")<br/>    file_cache_storage_capacity               = optional(number, 1200)<br/>    copy_tags_to_data_repository_associations = optional(bool, true)<br/>    lustre_configuration = optional(object({<br/>      deployment_type               = string<br/>      per_unit_storage_throughput   = number<br/>      weekly_maintenance_start_time = optional(string)<br/>      metadata_configuration = optional(object({<br/>        storage_capacity = number<br/>      }))<br/>    }), null)<br/>    data_repository_associations = optional(map(object({<br/>      data_repository_path           = string<br/>      file_cache_path                = string<br/>      data_repository_subdirectories = optional(list(string))<br/>      nfs = optional(object({<br/>        version = string<br/>        dns_ips = optional(list(string))<br/>      }))<br/>    })), {})<br/>  })</pre> | `{}` | no |
| <a name="input_fsx_backups"></a> [fsx\_backups](#input\_fsx\_backups) | FSx Backups configuration | <pre>map(object({<br/>    volume_id = optional(string)<br/>  }))</pre> | `{}` | no |
| <a name="input_fsx_type"></a> [fsx\_type](#input\_fsx\_type) | Type of FSx file system to create | `string` | `"windows"` | no |
| <a name="input_iam_configuration"></a> [iam\_configuration](#input\_iam\_configuration) | IAM configuration for FSx | <pre>object({<br/>    create_iam_role   = optional(bool, false)<br/>    iam_policy_arns   = optional(list(string), [])<br/>    custom_iam_policy = optional(string, null)<br/>  })</pre> | `{}` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | KMS key ID for encryption | `string` | `null` | no |
| <a name="input_lustre_configuration"></a> [lustre\_configuration](#input\_lustre\_configuration) | Lustre file system specific configuration | <pre>object({<br/>    per_unit_storage_throughput = optional(number, null)<br/>    import_path                 = optional(string, null)<br/>    export_path                 = optional(string, null)<br/>    imported_file_chunk_size    = optional(number, null)<br/>    auto_import_policy          = optional(string, null)<br/>    data_compression_type       = optional(string, null)<br/>    drive_cache_type            = optional(string, null)<br/>    efa_enabled                 = optional(bool, null)<br/>    log_configuration = optional(object({<br/>      destination = string<br/>      level       = string<br/>    }), null)<br/>    metadata_configuration = optional(object({<br/>      mode = string<br/>      iops = optional(number)<br/>    }), null)<br/>    root_squash_configuration = optional(object({<br/>      root_squash    = optional(string)<br/>      no_squash_nids = optional(list(string))<br/>    }), null)<br/>    data_read_cache_configuration = optional(object({<br/>      sizing_mode = string<br/>      size        = optional(number)<br/>    }), null)<br/>    data_repository_associations = optional(map(object({<br/>      data_repository_path             = string<br/>      file_system_path                 = string<br/>      batch_import_meta_data_on_create = optional(bool)<br/>      imported_file_chunk_size         = optional(number)<br/>      s3 = optional(object({<br/>        auto_export_policy = object({<br/>          events = list(string)<br/>        })<br/>        auto_import_policy = object({<br/>          events = list(string)<br/>        })<br/>      }))<br/>    })), {})<br/>  })</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name prefix for FSx resources | `string` | `""` | no |
| <a name="input_ontap_configuration"></a> [ontap\_configuration](#input\_ontap\_configuration) | ONTAP file system specific configuration | <pre>object({<br/>    fsx_admin_password              = optional(string, null)<br/>    ha_pairs                        = optional(number, null)<br/>    throughput_capacity_per_ha_pair = optional(number, null)<br/>    storage_virtual_machines = optional(map(object({<br/>      name                       = string<br/>      svm_admin_password         = optional(string)<br/>      root_volume_security_style = optional(string)<br/>      active_directory_configuration = optional(object({<br/>        netbios_name                           = string<br/>        dns_ips                                = list(string)<br/>        domain_name                            = string<br/>        password                               = string<br/>        username                               = string<br/>        file_system_administrators_group       = optional(string)<br/>        organizational_unit_distinguished_name = optional(string)<br/>      }))<br/>    })), {})<br/>    volumes = optional(map(object({<br/>      name                       = string<br/>      svm_name                   = string<br/>      size_in_megabytes          = optional(number)<br/>      size_in_bytes              = optional(number)<br/>      junction_path              = optional(string)<br/>      security_style             = optional(string)<br/>      volume_style               = optional(string)<br/>      ontap_volume_type          = optional(string)<br/>      snapshot_policy            = optional(string)<br/>      copy_tags_to_backups       = optional(bool)<br/>      skip_final_backup          = optional(bool)<br/>      final_backup_tags          = optional(map(string))<br/>      storage_efficiency_enabled = optional(bool)<br/>      tiering_policy = optional(object({<br/>        name           = optional(string)<br/>        cooling_period = optional(number)<br/>      }))<br/>      aggregate_configuration = optional(object({<br/>        aggregates                 = optional(list(string))<br/>        constituents_per_aggregate = optional(number)<br/>      }))<br/>      snaplock_configuration = optional(object({<br/>        snaplock_type              = string<br/>        audit_log_volume           = optional(bool)<br/>        privileged_delete          = optional(string)<br/>        volume_append_mode_enabled = optional(bool)<br/>        autocommit_period = optional(object({<br/>          type  = string<br/>          value = optional(number)<br/>        }))<br/>        retention_period = optional(object({<br/>          default_retention = object({<br/>            type  = string<br/>            value = optional(number)<br/>          })<br/>          maximum_retention = object({<br/>            type  = string<br/>            value = optional(number)<br/>          })<br/>          minimum_retention = object({<br/>            type  = string<br/>            value = optional(number)<br/>          })<br/>        }))<br/>      }))<br/>      bypass_snaplock_enterprise_retention = optional(bool)<br/>    })), {})<br/>  })</pre> | `{}` | no |
| <a name="input_openzfs_configuration"></a> [openzfs\_configuration](#input\_openzfs\_configuration) | OpenZFS file system specific configuration | <pre>object({<br/>    disk_iops_configuration = optional(object({<br/>      mode = string<br/>      iops = optional(number)<br/>    }), null)<br/>    root_volume_configuration = optional(object({<br/>      copy_tags_to_snapshots = optional(bool)<br/>      data_compression_type  = optional(string)<br/>      read_only              = optional(bool)<br/>      record_size_kib        = optional(number)<br/>      nfs_exports = optional(list(object({<br/>        client_configurations = list(object({<br/>          clients = string<br/>          options = list(string)<br/>        }))<br/>      })))<br/>      user_and_group_quotas = optional(list(object({<br/>        id                         = number<br/>        storage_capacity_quota_gib = number<br/>        type                       = string<br/>      })))<br/>    }), null)<br/>    volumes = optional(map(object({<br/>      name                             = string<br/>      parent_volume_id                 = optional(string)<br/>      copy_tags_to_snapshots           = optional(bool)<br/>      data_compression_type            = optional(string)<br/>      read_only                        = optional(bool)<br/>      record_size_kib                  = optional(number)<br/>      storage_capacity_quota_gib       = optional(number)<br/>      storage_capacity_reservation_gib = optional(number)<br/>      delete_volume_options            = optional(list(string))<br/>      origin_snapshot = optional(object({<br/>        copy_strategy = string<br/>        snapshot_arn  = string<br/>      }))<br/>      nfs_exports = optional(list(object({<br/>        client_configurations = list(object({<br/>          clients = string<br/>          options = list(string)<br/>        }))<br/>      })))<br/>      user_and_group_quotas = optional(list(object({<br/>        id                         = number<br/>        storage_capacity_quota_gib = number<br/>        type                       = string<br/>      })))<br/>      tags = optional(map(string))<br/>    })), {})<br/>    snapshots = optional(map(object({<br/>      name        = string<br/>      volume_name = string<br/>    })), {})<br/>  })</pre> | `{}` | no |
| <a name="input_preferred_subnet_id"></a> [preferred\_subnet\_id](#input\_preferred\_subnet\_id) | Preferred subnet ID for multi-AZ deployments | `string` | `null` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security group IDs to use for FSx | `list(string)` | `[]` | no |
| <a name="input_storage_capacity"></a> [storage\_capacity](#input\_storage\_capacity) | Storage capacity of the file system in GiB | `number` | n/a | yes |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | Storage type (SSD or HDD) | `string` | `"SSD"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for the file system | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to apply to all resources | `map(string)` | `{}` | no |
| <a name="input_throughput_capacity"></a> [throughput\_capacity](#input\_throughput\_capacity) | Throughput capacity in MB/s | `number` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID where the file system will be created | `string` | n/a | yes |
| <a name="input_weekly_maintenance_start_time"></a> [weekly\_maintenance\_start\_time](#input\_weekly\_maintenance\_start\_time) | Weekly maintenance start time (d:HH:MM) | `string` | `null` | no |
| <a name="input_windows_configuration"></a> [windows\_configuration](#input\_windows\_configuration) | Windows File Server specific configuration | <pre>object({<br/>    active_directory_id = optional(string, null)<br/>    self_managed_active_directory = optional(object({<br/>      dns_ips                                = list(string)<br/>      domain_name                            = string<br/>      password                               = string<br/>      username                               = string<br/>      file_system_administrators_group       = optional(string)<br/>      organizational_unit_distinguished_name = optional(string)<br/>    }), null)<br/>    audit_log_configuration = optional(object({<br/>      file_access_audit_log_level       = string<br/>      file_share_access_audit_log_level = string<br/>      audit_log_destination             = optional(string)<br/>    }), null)<br/>  })</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_repository_association_ids"></a> [data\_repository\_association\_ids](#output\_data\_repository\_association\_ids) | IDs of the data repository associations |
| <a name="output_file_cache_dns_name"></a> [file\_cache\_dns\_name](#output\_file\_cache\_dns\_name) | DNS name of the FSx File Cache |
| <a name="output_file_cache_id"></a> [file\_cache\_id](#output\_file\_cache\_id) | ID of the FSx File Cache |
| <a name="output_file_cache_network_interface_ids"></a> [file\_cache\_network\_interface\_ids](#output\_file\_cache\_network\_interface\_ids) | Network interface IDs of the FSx File Cache |
| <a name="output_fsx_arn"></a> [fsx\_arn](#output\_fsx\_arn) | ARN of the FSx file system |
| <a name="output_fsx_backup_arns"></a> [fsx\_backup\_arns](#output\_fsx\_backup\_arns) | ARNs of FSx Backups |
| <a name="output_fsx_backup_ids"></a> [fsx\_backup\_ids](#output\_fsx\_backup\_ids) | IDs of FSx Backups |
| <a name="output_fsx_dns_name"></a> [fsx\_dns\_name](#output\_fsx\_dns\_name) | DNS name of the FSx file system |
| <a name="output_fsx_id"></a> [fsx\_id](#output\_fsx\_id) | ID of the FSx file system |
| <a name="output_fsx_network_interface_ids"></a> [fsx\_network\_interface\_ids](#output\_fsx\_network\_interface\_ids) | Network interface IDs of the FSx file system |
| <a name="output_fsx_owner_id"></a> [fsx\_owner\_id](#output\_fsx\_owner\_id) | AWS account ID of the FSx file system owner |
| <a name="output_fsx_type"></a> [fsx\_type](#output\_fsx\_type) | Type of FSx file system created |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | ARN of the created IAM role |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | Name of the created IAM role |
| <a name="output_lustre_mount_name"></a> [lustre\_mount\_name](#output\_lustre\_mount\_name) | Mount name for Lustre file system |
| <a name="output_ontap_endpoints"></a> [ontap\_endpoints](#output\_ontap\_endpoints) | ONTAP file system endpoints |
| <a name="output_ontap_storage_virtual_machine_endpoints"></a> [ontap\_storage\_virtual\_machine\_endpoints](#output\_ontap\_storage\_virtual\_machine\_endpoints) | Endpoints of ONTAP Storage Virtual Machines |
| <a name="output_ontap_storage_virtual_machine_ids"></a> [ontap\_storage\_virtual\_machine\_ids](#output\_ontap\_storage\_virtual\_machine\_ids) | IDs of ONTAP Storage Virtual Machines |
| <a name="output_ontap_volume_arns"></a> [ontap\_volume\_arns](#output\_ontap\_volume\_arns) | ARNs of ONTAP Volumes |
| <a name="output_ontap_volume_ids"></a> [ontap\_volume\_ids](#output\_ontap\_volume\_ids) | IDs of ONTAP Volumes |
| <a name="output_openzfs_root_volume_id"></a> [openzfs\_root\_volume\_id](#output\_openzfs\_root\_volume\_id) | Root volume ID for OpenZFS file system |
| <a name="output_openzfs_snapshot_arns"></a> [openzfs\_snapshot\_arns](#output\_openzfs\_snapshot\_arns) | ARNs of OpenZFS Snapshots |
| <a name="output_openzfs_snapshot_ids"></a> [openzfs\_snapshot\_ids](#output\_openzfs\_snapshot\_ids) | IDs of OpenZFS Snapshots |
| <a name="output_openzfs_volume_arns"></a> [openzfs\_volume\_arns](#output\_openzfs\_volume\_arns) | ARNs of OpenZFS Volumes |
| <a name="output_openzfs_volume_ids"></a> [openzfs\_volume\_ids](#output\_openzfs\_volume\_ids) | IDs of OpenZFS Volumes |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags applied to the FSx file system |
| <a name="output_windows_remote_administration_endpoint"></a> [windows\_remote\_administration\_endpoint](#output\_windows\_remote\_administration\_endpoint) | Remote administration endpoint for Windows file system |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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
  go get github.com/gruntwork-io/terratest/modules/terraform
  go get github.com/stretchr/testify/assert
  ```
### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

## Authors
This project is authored by:
- SourceFuse
