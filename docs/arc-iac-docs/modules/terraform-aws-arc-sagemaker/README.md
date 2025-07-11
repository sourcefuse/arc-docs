![Module Structure](./static/sagemaker-banner.png)
# AWS SageMaker Terraform Module
# [terraform-aws-arc-sagemaker](https://github.com/sourcefuse/terraform-aws-arc-sagemaker)

<a href="https://github.com/sourcefuse/terraform-aws-arc-sagemaker/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-sagemaker.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-sagemaker/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-sagemaker.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-sagemaker&token=593eae6b5a514b62b2c08871c2f608e4ce172ec5)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-sagemaker)


## Overview

The ARC Terraform module provides a robust and fully extensible solution for managing SageMaker Studio domains, user profiles, models, endpoint, endpoint configurations, and pipelines. It supports custom app settings, and VPC integration to meet enterprise-grade machine learning needs. With dynamic configurations and secure defaults, the module enables rapid, consistent, and scalable SageMaker infrastructure provisioning using best practices.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:



```plaintext
sagemaker/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "sagemaker_model" {
  source                 = "sourcefuse/arc-sagemaker/aws"
  version                = "0.0.1"

  name                   = "terraform-arc"
  create_endpoint_config = true
  create_model           = true


  primary_container = {
    image          = "683313688378.dkr.ecr.us-east-1.amazonaws.com/sagemaker-scikit-learn:1.0-1-cpu-py3"
    model_data_url = "s3://your-sagemaker-model-bucket-21-05-25/model/model.tar.gz"
    environment    = {}
  }

  production_variants = [
    {
      variant_name           = "AllTraffic"
      initial_instance_count = 1
      instance_type          = "ml.m5.large"
      initial_variant_weight = 1.0
    }
  ]
  tags = module.tags.tags
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "model_name" {
  description = "Name of the SageMaker model"
  value       = module.sagemaker_model.model_name
}

output "model_arn" {
  description = "ARN of the SageMaker model"
  value       = module.sagemaker_model.model_arn
}

output "endpoint_config_arn" {
  description = "ARN of the SageMaker endpoint configuration"
  value       = module.sagemaker_model.endpoint_config_arn
}

```

5. **.tfvars**

Inside the `.tfvars` file of the module, you can provide desired values that can be referenced in the main configuration.


## First Time Usage
***uncomment the backend block in [main.tf](./examples/endpoint//main.tf)***
```shell
terraform init -backend-config=config.dev.hcl
```
***If testing locally, `terraform init` should be fine***

Create a `dev` workspace
```shell
terraform workspace new dev
```

Plan Terraform
```shell
terraform plan -var-file dev.tfvars
```

Apply Terraform
```shell
terraform apply -var-file dev.tfvars
```

## Production Setup
```shell
terraform init -backend-config=config.prod.hcl
```

Create a `prod` workspace
```shell
terraform workspace new prod
```

Plan Terraform
```shell
terraform plan -var-file prod.tfvars
```

Apply Terraform
```shell
terraform apply -var-file prod.tfvars  
```

## Cleanup  
Destroy Terraform
```shell
terraform destroy -var-file dev.tfvars
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
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_arc_security_group"></a> [arc\_security\_group](#module\_arc\_security\_group) | sourcefuse/arc-security-group/aws | 0.0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.pipeline_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.sagemaker_execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.execution_role_custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.pipeline_role_custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.attach_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.execution_role_all_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.pipeline_role_sagemaker_full_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_sagemaker_domain.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_domain) | resource |
| [aws_sagemaker_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_endpoint) | resource |
| [aws_sagemaker_endpoint_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_endpoint_configuration) | resource |
| [aws_sagemaker_model.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_model) | resource |
| [aws_sagemaker_pipeline.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_pipeline) | resource |
| [aws_sagemaker_user_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_user_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_iam_policies"></a> [additional\_iam\_policies](#input\_additional\_iam\_policies) | List of additional IAM policy ARNs to attach to the execution role | `list(string)` | `[]` | no |
| <a name="input_additional_security_group_ids"></a> [additional\_security\_group\_ids](#input\_additional\_security\_group\_ids) | List of additional security group IDs to attach to the domain | `list(string)` | `[]` | no |
| <a name="input_app_network_access_type"></a> [app\_network\_access\_type](#input\_app\_network\_access\_type) | Specifies the VPC used for non-EFS traffic. Valid values are PublicInternetOnly and VpcOnly | `string` | `"PublicInternetOnly"` | no |
| <a name="input_app_security_group_management"></a> [app\_security\_group\_management](#input\_app\_security\_group\_management) | The entity that creates and manages the required security groups for inter-app communication in VPCOnly mode. Valid values are Service and Customer | `string` | `"Service"` | no |
| <a name="input_async_inference_config"></a> [async\_inference\_config](#input\_async\_inference\_config) | (Optional) Configuration for asynchronous inference. | <pre>object({<br/>    output_config = object({<br/>      s3_output_path  = string<br/>      s3_failure_path = optional(string)<br/>      kms_key_id      = optional(string)<br/>      notification_config = optional(object({<br/>        include_inference_response_in = optional(string)<br/>        error_topic                   = optional(string)<br/>        success_topic                 = optional(string)<br/>      }))<br/>    })<br/>    client_config = optional(object({<br/>      max_concurrent_invocations_per_instance = optional(number)<br/>    }))<br/>  })</pre> | `null` | no |
| <a name="input_auth_mode"></a> [auth\_mode](#input\_auth\_mode) | The mode of authentication that members use to access the domain. Valid values are IAM and SSO | `string` | `"IAM"` | no |
| <a name="input_container"></a> [container](#input\_container) | List of containers for inference pipeline (alternative to primary\_container) | `list(any)` | `null` | no |
| <a name="input_create_domain"></a> [create\_domain](#input\_create\_domain) | Whether to create the SageMaker domain | `bool` | `false` | no |
| <a name="input_create_endpoint"></a> [create\_endpoint](#input\_create\_endpoint) | Whether to create the SageMaker endpoint | `bool` | `false` | no |
| <a name="input_create_endpoint_config"></a> [create\_endpoint\_config](#input\_create\_endpoint\_config) | Whether to create the SageMaker endpoint configuration | `bool` | `false` | no |
| <a name="input_create_execution_role"></a> [create\_execution\_role](#input\_create\_execution\_role) | Whether to create an execution role for SageMaker | `bool` | `false` | no |
| <a name="input_create_model"></a> [create\_model](#input\_create\_model) | Whether to create the SageMaker model | `bool` | `false` | no |
| <a name="input_create_pipeline"></a> [create\_pipeline](#input\_create\_pipeline) | Whether to create the SageMaker pipeline | `bool` | `false` | no |
| <a name="input_create_pipeline_role"></a> [create\_pipeline\_role](#input\_create\_pipeline\_role) | Whether to create a separate role for pipelines | `bool` | `false` | no |
| <a name="input_create_sagemaker_execution_role"></a> [create\_sagemaker\_execution\_role](#input\_create\_sagemaker\_execution\_role) | Whether to create an SageMaker execution role | `bool` | `false` | no |
| <a name="input_create_security_groups"></a> [create\_security\_groups](#input\_create\_security\_groups) | Whether to create security groups for SageMaker Studio | `bool` | `false` | no |
| <a name="input_create_user_profile"></a> [create\_user\_profile](#input\_create\_user\_profile) | Whether to create the SageMaker user profile | `bool` | `false` | no |
| <a name="input_data_capture_config"></a> [data\_capture\_config](#input\_data\_capture\_config) | (Optional) Configuration for capturing input/output data. | <pre>object({<br/>    initial_sampling_percentage = number<br/>    destination_s3_uri          = string<br/>    kms_key_id                  = optional(string)<br/>    enable_capture              = optional(bool)<br/>    capture_options = list(object({<br/>      capture_mode = string<br/>    }))<br/>    capture_content_type_header = optional(object({<br/>      csv_content_types  = optional(list(string))<br/>      json_content_types = optional(list(string))<br/>    }))<br/>  })</pre> | `null` | no |
| <a name="input_default_space_settings"></a> [default\_space\_settings](#input\_default\_space\_settings) | The default space settings for the domain | <pre>object({<br/>    execution_role_arn = string<br/>    security_groups    = optional(list(string))<br/><br/>    jupyter_server_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/>    }))<br/><br/>    kernel_gateway_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/>    }))<br/><br/>    jupyter_lab_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/>    }))<br/><br/>    space_storage_settings = optional(object({<br/>      default_ebs_storage_settings = optional(object({<br/>        default_ebs_volume_size_in_gb = number<br/>        maximum_ebs_volume_size_in_gb = number<br/>      }))<br/>    }))<br/><br/>    custom_file_system_config = optional(object({<br/>      efs_file_system_config = optional(object({<br/>        file_system_id   = string<br/>        file_system_path = string<br/>      }))<br/>    }))<br/><br/>    custom_posix_user_config = optional(object({<br/>      gid = optional(number)<br/>      uid = optional(number)<br/>    }))<br/>  })</pre> | `null` | no |
| <a name="input_default_user_settings"></a> [default\_user\_settings](#input\_default\_user\_settings) | The default user settings for the domain | <pre>object({<br/>    execution_role_arn  = string<br/>    auto_mount_home_efs = optional(string, "Disabled")<br/>    default_landing_uri = optional(string)<br/>    studio_web_portal   = optional(string, "ENABLED")<br/><br/>    jupyter_lab_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/><br/>      app_lifecycle_management = optional(object({<br/>        idle_settings = optional(object({<br/>          lifecycle_management        = optional(string, "ENABLED")<br/>          idle_timeout_in_minutes     = optional(number, 60)<br/>          max_idle_timeout_in_minutes = optional(number, 480)<br/>          min_idle_timeout_in_minutes = optional(number, 60)<br/>        }))<br/>      }))<br/><br/>      custom_images = optional(list(object({<br/>        app_image_config_name = string<br/>        image_name            = string<br/>        image_version_number  = optional(number)<br/>      })))<br/><br/>      code_repositories = optional(list(object({<br/>        repository_url = string<br/>      })))<br/><br/>      lifecycle_config_arns         = optional(list(string))<br/>      built_in_lifecycle_config_arn = optional(string)<br/><br/>      emr_settings = optional(object({<br/>        assumable_role_arns = optional(list(string))<br/>        execution_role_arns = optional(list(string))<br/>      }))<br/>    }))<br/><br/>    code_editor_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/><br/>      app_lifecycle_management = optional(object({<br/>        idle_settings = optional(object({<br/>          lifecycle_management        = optional(string, "ENABLED")<br/>          idle_timeout_in_minutes     = optional(number, 60)<br/>          max_idle_timeout_in_minutes = optional(number, 480)<br/>          min_idle_timeout_in_minutes = optional(number, 60)<br/>        }))<br/>      }))<br/><br/>      custom_images = optional(list(object({<br/>        app_image_config_name = string<br/>        image_name            = string<br/>        image_version_number  = optional(number)<br/>      })))<br/><br/>      lifecycle_config_arns         = optional(list(string))<br/>      built_in_lifecycle_config_arn = optional(string)<br/>    }))<br/><br/>    jupyter_server_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/><br/>      code_repositories = optional(list(object({<br/>        repository_url = string<br/>      })))<br/><br/>      lifecycle_config_arns = optional(list(string))<br/>    }))<br/><br/>    kernel_gateway_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/><br/>      custom_images = optional(list(object({<br/>        app_image_config_name = string<br/>        image_name            = string<br/>        image_version_number  = optional(number)<br/>      })))<br/><br/>      lifecycle_config_arns = optional(list(string))<br/>    }))<br/><br/>    canvas_app_settings = optional(object({<br/>      time_series_forecasting_settings = optional(object({<br/>        status                   = optional(string, "DISABLED")<br/>        amazon_forecast_role_arn = optional(string)<br/>      }))<br/><br/>      model_register_settings = optional(object({<br/>        status                                = optional(string, "DISABLED")<br/>        cross_account_model_register_role_arn = optional(string)<br/>      }))<br/><br/>      workspace_settings = optional(object({<br/>        s3_artifact_path = optional(string)<br/>        s3_kms_key_id    = optional(string)<br/>      }))<br/><br/>      direct_deploy_settings = optional(object({<br/>        status = optional(string, "DISABLED")<br/>      }))<br/><br/>      kendra_settings = optional(object({<br/>        status = optional(string, "DISABLED")<br/>      }))<br/><br/>      identity_provider_oauth_settings = optional(list(object({<br/>        data_source_name = optional(string)<br/>        secret_arn       = optional(string)<br/>        status           = optional(string, "DISABLED")<br/>      })))<br/><br/>      emr_serverless_settings = optional(object({<br/>        execution_role_arn = optional(string)<br/>        status             = optional(string, "DISABLED")<br/>      }))<br/>    }))<br/><br/>    tensor_board_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/>    }))<br/><br/>    r_session_app_settings = optional(object({<br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/><br/>      custom_images = optional(list(object({<br/>        app_image_config_name = string<br/>        image_name            = string<br/>        image_version_number  = optional(number)<br/>      })))<br/>    }))<br/><br/>    r_studio_server_pro_app_settings = optional(object({<br/>      access_status = optional(string, "DISABLED")<br/>      user_group    = optional(string, "R_STUDIO_USER")<br/>    }))<br/><br/>    sharing_settings = optional(object({<br/>      notebook_output_option = optional(string, "Disabled")<br/>      s3_kms_key_id          = optional(string)<br/>      s3_output_path         = optional(string)<br/>    }))<br/><br/>    space_storage_settings = optional(object({<br/>      default_ebs_storage_settings = optional(object({<br/>        default_ebs_volume_size_in_gb = number<br/>        maximum_ebs_volume_size_in_gb = number<br/>      }))<br/>    }))<br/><br/>    custom_file_system_config = optional(object({<br/>      efs_file_system_config = optional(object({<br/>        file_system_id   = string<br/>        file_system_path = string<br/>      }))<br/>    }))<br/><br/>    custom_posix_user_config = optional(object({<br/>      gid = optional(number)<br/>      uid = optional(number)<br/>    }))<br/><br/>    studio_web_portal_settings = optional(object({<br/>      hidden_app_types      = optional(list(string))<br/>      hidden_instance_types = optional(list(string))<br/>      hidden_ml_tools       = optional(list(string))<br/>    }))<br/>  })</pre> | `null` | no |
| <a name="input_deployment_config"></a> [deployment\_config](#input\_deployment\_config) | Deployment configuration block | <pre>object({<br/>    blue_green_update_policy = optional(object({<br/>      traffic_routing_configuration = object({<br/>        type                     = string<br/>        wait_interval_in_seconds = number<br/>        canary_size = optional(object({<br/>          type  = string<br/>          value = number<br/>        }))<br/>        linear_step_size = optional(object({<br/>          type  = string<br/>          value = number<br/>        }))<br/>      })<br/>      maximum_execution_timeout_in_seconds = optional(number)<br/>      termination_wait_in_seconds          = optional(number)<br/>    }))<br/>    auto_rollback_configuration = optional(object({<br/>      alarms = list(object({<br/>        alarm_name = string<br/>      }))<br/>    }))<br/>    rolling_update_policy = optional(object({<br/>      wait_interval_in_seconds             = number<br/>      maximum_execution_timeout_in_seconds = optional(number)<br/>      maximum_batch_size = object({<br/>        type  = string<br/>        value = number<br/>      })<br/>      rollback_maximum_batch_size = optional(object({<br/>        type  = string<br/>        value = number<br/>      }))<br/>    }))<br/>  })</pre> | `null` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The name of the SageMaker domain | `string` | `"arc-sagemaker-domain"` | no |
| <a name="input_domain_settings"></a> [domain\_settings](#input\_domain\_settings) | The domain settings | <pre>object({<br/>    execution_role_identity_config = optional(string, "USER_PROFILE_NAME")<br/>    security_group_ids             = optional(list(string))<br/><br/>    docker_settings = optional(object({<br/>      enable_docker_access      = optional(string, "ENABLED")<br/>      vpc_only_trusted_accounts = optional(list(string))<br/>    }))<br/><br/>    r_studio_server_pro_domain_settings = optional(object({<br/>      domain_execution_role_arn    = string<br/>      r_studio_connect_url         = optional(string)<br/>      r_studio_package_manager_url = optional(string)<br/><br/>      default_resource_spec = optional(object({<br/>        instance_type                 = optional(string, "ml.t3.medium")<br/>        lifecycle_config_arn          = optional(string)<br/>        sagemaker_image_arn           = optional(string)<br/>        sagemaker_image_version_arn   = optional(string)<br/>        sagemaker_image_version_alias = optional(string)<br/>      }))<br/>    }))<br/>  })</pre> | `null` | no |
| <a name="input_enable_network_isolation"></a> [enable\_network\_isolation](#input\_enable\_network\_isolation) | Isolate the model container from external network | `bool` | `null` | no |
| <a name="input_execution_role_name"></a> [execution\_role\_name](#input\_execution\_role\_name) | Name of the execution role to create | `string` | `"SageMakerStudioExecutionRole"` | no |
| <a name="input_execution_role_path"></a> [execution\_role\_path](#input\_execution\_role\_path) | Path for the execution role | `string` | `"/"` | no |
| <a name="input_inference_execution_config"></a> [inference\_execution\_config](#input\_inference\_execution\_config) | Multi-container execution configuration | <pre>object({<br/>    mode = string<br/>  })</pre> | `null` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | (Optional) ARN of the KMS key to encrypt storage volume data. | `string` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the SageMaker model. | `string` | `"terraform-sg"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | (Optional) Prefix for the endpoint configuration name. Conflicts with name. | `string` | `null` | no |
| <a name="input_pipeline_role_name"></a> [pipeline\_role\_name](#input\_pipeline\_role\_name) | Name of the pipeline role to create | `string` | `"SageMakerPipelineExecutionRole"` | no |
| <a name="input_pipeline_role_path"></a> [pipeline\_role\_path](#input\_pipeline\_role\_path) | Path for the pipeline role | `string` | `"/"` | no |
| <a name="input_pipelines"></a> [pipelines](#input\_pipelines) | List of SageMaker pipelines to create | <pre>list(object({<br/>    name         = string<br/>    display_name = string<br/>    description  = optional(string)<br/>    definition   = optional(string)<br/>    role_arn     = optional(string)<br/>    tags         = optional(map(string))<br/><br/>    pipeline_definition_s3_location = optional(object({<br/>      bucket     = string<br/>      object_key = string<br/>      version_id = optional(string)<br/>    }))<br/><br/>    parallelism_configuration = optional(object({<br/>      max_parallel_execution_steps = number<br/>    }))<br/>  }))</pre> | `[]` | no |
| <a name="input_primary_container"></a> [primary\_container](#input\_primary\_container) | Primary container block | <pre>object({<br/>    image              = string<br/>    mode               = optional(string)<br/>    model_data_url     = optional(string)<br/>    model_package_name = optional(string)<br/>    container_hostname = optional(string)<br/>    environment        = optional(map(string))<br/>    image_config = optional(object({<br/>      repository_access_mode = string<br/>      repository_auth_config = optional(object({<br/>        repository_credentials_provider_arn = string<br/>      }))<br/>    }))<br/>    inference_specification_name = optional(string)<br/>    multi_model_config = optional(object({<br/>      model_cache_setting = string<br/>    }))<br/>    model_data_source = optional(object({<br/>      s3_data_source = object({<br/>        compression_type = string<br/>        s3_data_type     = string<br/>        s3_uri           = string<br/>        model_access_config = optional(object({<br/>          accept_eula = bool<br/>        }))<br/>      })<br/>    }))<br/>  })</pre> | <pre>{<br/>  "environment": {},<br/>  "image": "683313688378.dkr.ecr.us-east-1.amazonaws.com/sagemaker-scikit-learn:1.0-1-cpu-py3",<br/>  "model_data_url": "s3://your-sagemaker-model-bucket-21-05-25/model/model.tar.gz"<br/>}</pre> | no |
| <a name="input_production_variants"></a> [production\_variants](#input\_production\_variants) | (Required) List of production variant configurations. | <pre>list(object({<br/>    variant_name                                      = optional(string)<br/>    model_name                                        = optional(string)<br/>    initial_instance_count                            = optional(number)<br/>    instance_type                                     = optional(string)<br/>    accelerator_type                                  = optional(string)<br/>    container_startup_health_check_timeout_in_seconds = optional(number)<br/>    core_dump_config = optional(object({<br/>      destination_s3_uri = string<br/>      kms_key_id         = string<br/>    }))<br/>    enable_ssm_access                      = optional(bool)<br/>    inference_ami_version                  = optional(string)<br/>    initial_variant_weight                 = optional(number)<br/>    model_data_download_timeout_in_seconds = optional(number)<br/>    routing_config = optional(object({<br/>      routing_strategy = string<br/>    }))<br/>    serverless_config = optional(object({<br/>      max_concurrency         = number<br/>      memory_size_in_mb       = number<br/>      provisioned_concurrency = optional(number)<br/>    }))<br/>    managed_instance_scaling = optional(object({<br/>      status             = optional(string)<br/>      min_instance_count = optional(number)<br/>      max_instance_count = optional(number)<br/>    }))<br/>    volume_size_in_gb = optional(number)<br/>  }))</pre> | <pre>[<br/>  {<br/>    "initial_instance_count": 1,<br/>    "initial_variant_weight": 1,<br/>    "instance_type": "ml.m5.large",<br/>    "variant_name": "AllTraffic"<br/>  }<br/>]</pre> | no |
| <a name="input_retention_policy"></a> [retention\_policy](#input\_retention\_policy) | The retention policy for the domain | <pre>object({<br/>    home_efs_file_system = optional(string, "Retain")<br/>  })</pre> | `null` | no |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br/>    security_group_ids_to_attach = optional(list(string), [])<br/>    create                       = optional(bool, true)<br/>    description                  = optional(string, null)<br/>    ingress_rules = optional(list(object({<br/>      description              = optional(string, null)<br/>      cidr_block               = optional(string, null)<br/>      source_security_group_id = optional(string, null)<br/>      from_port                = number<br/>      ip_protocol              = string<br/>      to_port                  = string<br/>      self                     = optional(bool, false)<br/>    })), [])<br/>    egress_rules = optional(list(object({<br/>      description                   = optional(string, null)<br/>      cidr_block                    = optional(string, null)<br/>      destination_security_group_id = optional(string, null)<br/>      from_port                     = number<br/>      ip_protocol                   = string<br/>      to_port                       = string<br/>      prefix_list_id                = optional(string, null)<br/>    })), [])<br/>  })</pre> | <pre>{<br/>  "create": false<br/>}</pre> | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | sagemaker security group name | `string` | `"sagemaker-sg"` | no |
| <a name="input_shadow_production_variants"></a> [shadow\_production\_variants](#input\_shadow\_production\_variants) | (Optional) List of shadow production variant configurations. | <pre>list(object({<br/>    variant_name           = optional(string)<br/>    model_name             = string<br/>    initial_instance_count = optional(number)<br/>    instance_type          = optional(string)<br/>    initial_variant_weight = optional(number)<br/>  }))</pre> | `[]` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The VPC subnets that Studio uses for communication | `list(string)` | `[]` | no |
| <a name="input_tag_propagation"></a> [tag\_propagation](#input\_tag\_propagation) | Indicates whether custom tag propagation is supported for the domain. Valid values are ENABLED and DISABLED | `string` | `"DISABLED"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the SageMaker model | `map(string)` | `{}` | no |
| <a name="input_user_profiles"></a> [user\_profiles](#input\_user\_profiles) | List of user profiles to create | <pre>list(object({<br/>    name                           = string<br/>    single_sign_on_user_identifier = optional(string)<br/>    single_sign_on_user_value      = optional(string)<br/>    tags                           = optional(map(string))<br/><br/>    user_settings = optional(object({<br/>      execution_role_arn  = optional(string)<br/>      auto_mount_home_efs = optional(string)<br/>      default_landing_uri = optional(string)<br/>      studio_web_portal   = optional(string)<br/>      security_groups     = optional(list(string))<br/><br/>      jupyter_lab_app_settings = optional(object({<br/>        default_resource_spec = optional(object({<br/>          instance_type                 = optional(string)<br/>          lifecycle_config_arn          = optional(string)<br/>          sagemaker_image_arn           = optional(string)<br/>          sagemaker_image_version_arn   = optional(string)<br/>          sagemaker_image_version_alias = optional(string)<br/>        }))<br/><br/>        app_lifecycle_management = optional(object({<br/>          idle_settings = optional(object({<br/>            lifecycle_management        = optional(string)<br/>            idle_timeout_in_minutes     = optional(number)<br/>            max_idle_timeout_in_minutes = optional(number)<br/>            min_idle_timeout_in_minutes = optional(number)<br/>          }))<br/>        }))<br/><br/>        custom_images = optional(list(object({<br/>          app_image_config_name = string<br/>          image_name            = string<br/>          image_version_number  = optional(number)<br/>        })))<br/><br/>        code_repositories = optional(list(object({<br/>          repository_url = string<br/>        })))<br/><br/>        lifecycle_config_arns         = optional(list(string))<br/>        built_in_lifecycle_config_arn = optional(string)<br/><br/>        emr_settings = optional(object({<br/>          assumable_role_arns = optional(list(string))<br/>          execution_role_arns = optional(list(string))<br/>        }))<br/>      }))<br/><br/>      code_editor_app_settings = optional(object({<br/>        default_resource_spec = optional(object({<br/>          instance_type                 = optional(string)<br/>          lifecycle_config_arn          = optional(string)<br/>          sagemaker_image_arn           = optional(string)<br/>          sagemaker_image_version_arn   = optional(string)<br/>          sagemaker_image_version_alias = optional(string)<br/>        }))<br/><br/>        app_lifecycle_management = optional(object({<br/>          idle_settings = optional(object({<br/>            lifecycle_management        = optional(string)<br/>            idle_timeout_in_minutes     = optional(number)<br/>            max_idle_timeout_in_minutes = optional(number)<br/>            min_idle_timeout_in_minutes = optional(number)<br/>          }))<br/>        }))<br/><br/>        custom_images = optional(list(object({<br/>          app_image_config_name = string<br/>          image_name            = string<br/>          image_version_number  = optional(number)<br/>        })))<br/><br/>        lifecycle_config_arns         = optional(list(string))<br/>        built_in_lifecycle_config_arn = optional(string)<br/>      }))<br/><br/>      jupyter_server_app_settings = optional(object({<br/>        default_resource_spec = optional(object({<br/>          instance_type                 = optional(string)<br/>          lifecycle_config_arn          = optional(string)<br/>          sagemaker_image_arn           = optional(string)<br/>          sagemaker_image_version_arn   = optional(string)<br/>          sagemaker_image_version_alias = optional(string)<br/>        }))<br/><br/>        code_repositories = optional(list(object({<br/>          repository_url = string<br/>        })))<br/><br/>        lifecycle_config_arns = optional(list(string))<br/>      }))<br/><br/>      kernel_gateway_app_settings = optional(object({<br/>        default_resource_spec = optional(object({<br/>          instance_type                 = optional(string)<br/>          lifecycle_config_arn          = optional(string)<br/>          sagemaker_image_arn           = optional(string)<br/>          sagemaker_image_version_arn   = optional(string)<br/>          sagemaker_image_version_alias = optional(string)<br/>        }))<br/><br/>        custom_images = optional(list(object({<br/>          app_image_config_name = string<br/>          image_name            = string<br/>          image_version_number  = optional(number)<br/>        })))<br/><br/>        lifecycle_config_arns = optional(list(string))<br/>      }))<br/><br/>      canvas_app_settings = optional(object({<br/>        time_series_forecasting_settings = optional(object({<br/>          status                   = optional(string)<br/>          amazon_forecast_role_arn = optional(string)<br/>        }))<br/><br/>        model_register_settings = optional(object({<br/>          status                                = optional(string)<br/>          cross_account_model_register_role_arn = optional(string)<br/>        }))<br/><br/>        workspace_settings = optional(object({<br/>          s3_artifact_path = optional(string)<br/>          s3_kms_key_id    = optional(string)<br/>        }))<br/><br/>        direct_deploy_settings = optional(object({<br/>          status = optional(string)<br/>        }))<br/><br/>        kendra_settings = optional(object({<br/>          status = optional(string)<br/>        }))<br/><br/>        identity_provider_oauth_settings = optional(list(object({<br/>          data_source_name = optional(string)<br/>          secret_arn       = optional(string)<br/>          status           = optional(string)<br/>        })))<br/><br/>        emr_serverless_settings = optional(object({<br/>          execution_role_arn = optional(string)<br/>          status             = optional(string)<br/>        }))<br/>      }))<br/><br/>      tensor_board_app_settings = optional(object({<br/>        default_resource_spec = optional(object({<br/>          instance_type                 = optional(string)<br/>          lifecycle_config_arn          = optional(string)<br/>          sagemaker_image_arn           = optional(string)<br/>          sagemaker_image_version_arn   = optional(string)<br/>          sagemaker_image_version_alias = optional(string)<br/>        }))<br/>      }))<br/><br/>      r_session_app_settings = optional(object({<br/>        default_resource_spec = optional(object({<br/>          instance_type                 = optional(string)<br/>          lifecycle_config_arn          = optional(string)<br/>          sagemaker_image_arn           = optional(string)<br/>          sagemaker_image_version_arn   = optional(string)<br/>          sagemaker_image_version_alias = optional(string)<br/>        }))<br/><br/>        custom_images = optional(list(object({<br/>          app_image_config_name = string<br/>          image_name            = string<br/>          image_version_number  = optional(number)<br/>        })))<br/>      }))<br/><br/>      r_studio_server_pro_app_settings = optional(object({<br/>        access_status = optional(string)<br/>        user_group    = optional(string)<br/>      }))<br/><br/>      sharing_settings = optional(object({<br/>        notebook_output_option = optional(string)<br/>        s3_kms_key_id          = optional(string)<br/>        s3_output_path         = optional(string)<br/>      }))<br/><br/>      space_storage_settings = optional(object({<br/>        default_ebs_storage_settings = optional(object({<br/>          default_ebs_volume_size_in_gb = number<br/>          maximum_ebs_volume_size_in_gb = number<br/>        }))<br/>      }))<br/><br/>      custom_file_system_config = optional(object({<br/>        efs_file_system_config = optional(object({<br/>          file_system_id   = string<br/>          file_system_path = string<br/>        }))<br/>      }))<br/><br/>      custom_posix_user_config = optional(object({<br/>        gid = optional(number)<br/>        uid = optional(number)<br/>      }))<br/><br/>      studio_web_portal_settings = optional(object({<br/>        hidden_app_types      = optional(list(string))<br/>        hidden_instance_types = optional(list(string))<br/>        hidden_ml_tools       = optional(list(string))<br/>      }))<br/>    }))<br/>  }))</pre> | `[]` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | VPC configuration for the model | <pre>object({<br/>    security_group_ids = list(string)<br/>    subnets            = list(string)<br/>  })</pre> | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC that Studio uses for communication | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_arn"></a> [domain\_arn](#output\_domain\_arn) | ARN of the SageMaker domain |
| <a name="output_domain_id"></a> [domain\_id](#output\_domain\_id) | ID of the SageMaker domain |
| <a name="output_domain_url"></a> [domain\_url](#output\_domain\_url) | URL to access the SageMaker Studio |
| <a name="output_endpoint_arn"></a> [endpoint\_arn](#output\_endpoint\_arn) | ARN of the SageMaker endpoint |
| <a name="output_endpoint_config_arn"></a> [endpoint\_config\_arn](#output\_endpoint\_config\_arn) | ARN of the SageMaker endpoint configuration |
| <a name="output_endpoint_config_name"></a> [endpoint\_config\_name](#output\_endpoint\_config\_name) | Name of the SageMaker endpoint configuration |
| <a name="output_endpoint_name"></a> [endpoint\_name](#output\_endpoint\_name) | Name of the SageMaker endpoint |
| <a name="output_model_arn"></a> [model\_arn](#output\_model\_arn) | ARN of the SageMaker model |
| <a name="output_model_name"></a> [model\_name](#output\_model\_name) | Name of the SageMaker model |
| <a name="output_pipeline_arns"></a> [pipeline\_arns](#output\_pipeline\_arns) | List of SageMaker pipeline ARNs |
| <a name="output_pipeline_names"></a> [pipeline\_names](#output\_pipeline\_names) | List of SageMaker pipeline names |
| <a name="output_user_profile_names"></a> [user\_profile\_names](#output\_user\_profile\_names) | List of SageMaker user profile names |
| <a name="output_user_profiles"></a> [user\_profiles](#output\_user\_profiles) | Map of SageMaker user profiles with their ARNs |
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

### Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly

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
