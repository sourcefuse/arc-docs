![Module Structure](./static/ecs-banner.png)

# [terraform-aws-arc-ecs](https://github.com/sourcefuse/terraform-aws-arc-ecs)

<a href="https://github.com/sourcefuse/terraform-aws-arc-ecs/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-ecs.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-ecs/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-ecs.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-ecs)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-ecs)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-ecs/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-ecs/actions/workflows/snyk.yaml)
## Overview

SourceFuse's AWS Reference Architecture Terraform module leverages the terraform-aws-modules/terraform-aws-ecs GitHub repository to facilitate the deployment and management of an AWS ECS (Elastic Container Service) cluster. It streamlines the configuration of ECS tasks, services, and related components, providing a scalable and efficient solution for orchestrating containerized applications. With customizable settings for logging and load balancing the module promotes seamless deployment and management of containerized workloads on AWS.

The module assumes that upstream dependencies, namely networking dependencies, are created upstream and the values are passed into this module via mechanisms such as Terraform data source queries.


The module provisions

* ECS Cluster - we are focusing on the Fargate launch type, so we do not provision any underlying EC2 instances for the ECS launch type for the time being.
* Application Load Balancer - default port 80.
* Health Check Service - vanilla HTTP echo service that is used as the default target group for the load balancer. The purpose of the health check service is to ensure that the core infrastructure, networking, security groups, etc. are configured correctly.
* Task execution IAM role - used by downstream services for task execution.
* Tags - the module tags resources for easy reference in the AWS console.


![Module Structure](./static/arc_ecs_basic_components.png)

Our approach to ECS Fargate clusters is to provision a cluster and allow downstream services to attach to it via convention based data source queries.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.
- Network


## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:


```plaintext
ecs/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```

2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example


```hcl
################################################################################
## ecs cluster
################################################################################

module "ecs_cluster" {
  source = "../../"

  ecs_cluster       = local.ecs_cluster
  capacity_provider = local.capacity_provider
  ecs_service       = local.ecs_service
  tags              = module.tags.tags
}

################################################################################
## ecs services and task
################################################################################

module "ecs_services" {
  for_each = local.ecs_services

  source           = "../../"
  ecs_cluster      = each.value.ecs_cluster
  ecs_cluster_name = local.ecs_cluster.name
  ecs_service      = each.value.ecs_service
  task             = each.value.task
  lb_data          = each.value.lb_data
  vpc_id           = data.aws_vpc.default.id
  target_group_arn = module.alb.target_group_arn
  environment      = var.environment
  tags             = module.tags.tags
  depends_on       = [module.ecs_cluster, module.alb]

}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "cluster_name" {
  description = "Name of the ECS Cluster"
  value       = module.ecs.cluster_name
}

```

5. **Execute Terraform Commands**

After defining your main configuration, navigate to the directory containing your Terraform files and run the following commands:


```bash
terraform init
terraform apply
```

6. **Review and Confirm**

Terraform will display a plan showing the changes it intends to make. Review the plan and confirm by typing 'yes' when prompted.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs_cluster"></a> [ecs\_cluster](#module\_ecs\_cluster) | ./modules/ecs-cluster | n/a |
| <a name="module_ecs_service"></a> [ecs\_service](#module\_ecs\_service) | ./modules/ecs-service | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asg"></a> [asg](#input\_asg) | Auto Scaling Group configuration | <pre>object({<br>    name                = optional(string, null)<br>    min_size            = number<br>    max_size            = number<br>    desired_capacity    = optional(number)<br>    vpc_zone_identifier = optional(list(string))<br><br>    health_check_type         = optional(string)<br>    health_check_grace_period = optional(number, 300)<br>    protect_from_scale_in     = optional(bool)<br>    default_cooldown          = optional(number)<br><br>    instance_refresh = optional(object({<br>      strategy = string<br>      preferences = optional(object({<br>        min_healthy_percentage = optional(number)<br>      }))<br>    }))<br>  })</pre> | `null` | no |
| <a name="input_capacity_provider"></a> [capacity\_provider](#input\_capacity\_provider) | Configuration settings for the ECS capacity providers, including the capacity providers used for autoscaling and Fargate. This variable defines the properties of each capacity provider and how they are managed, such as scaling policies and termination protection. | <pre>object({<br>    autoscaling_capacity_providers = map(object({<br>      name                           = optional(string)<br>      auto_scaling_group_arn         = string<br>      managed_termination_protection = optional(string, "DISABLED")<br>      managed_draining               = optional(string, "ENABLED")<br>      managed_scaling = optional(object({<br>        instance_warmup_period    = optional(number)<br>        maximum_scaling_step_size = optional(number)<br>        minimum_scaling_step_size = optional(number)<br>        status                    = optional(string)<br>        target_capacity           = optional(number)<br>      }))<br>      tags = optional(map(string), {})<br>    }))<br>    use_fargate                = bool<br>    fargate_capacity_providers = any<br>  })</pre> | `null` | no |
| <a name="input_ecs_cluster"></a> [ecs\_cluster](#input\_ecs\_cluster) | The ECS-specific values to use such as cluster, service, and repository names.<br><br>Keys:<br>  - cluster\_name: The name of the ECS cluster.<br>  - cluster\_configuration: The execute command configuration for the cluster.<br>  - cluster\_settings: A list of cluster settings (e.g., container insights). Default is an empty list.<br>  - cluster\_service\_connect\_defaults: Configures a default Service Connect namespace.<br>  - create\_cloudwatch\_log\_group: Boolean flag to specify whether to create a CloudWatch log group for the ECS cluster. | <pre>object({<br>    name   = optional(string)<br>    create = optional(bool, true)<br>    configuration = optional(object({<br>      execute_command_configuration = optional(object({<br>        kms_key_id = optional(string, "")<br>        logging    = optional(string, "DEFAULT")<br>        log_configuration = optional(object({<br>          cloudwatch_encryption_enabled = optional(bool, null)<br>          log_group_name                = optional(string, null)<br>          log_group_retention_in_days   = optional(number, null)<br>          log_group_kms_key_id          = optional(string, null)<br>          log_group_tags                = optional(map(string), null)<br>          s3_bucket_name                = optional(string, null)<br>          s3_bucket_encryption_enabled  = optional(bool, null)<br>          s3_key_prefix                 = optional(string, null)<br>        }), {})<br>      }), {})<br>    }), {})<br>    create_cloudwatch_log_group = optional(bool, true)<br>    service_connect_defaults    = optional(map(string), null)<br>    settings                    = optional(any, null)<br>    tags                        = optional(map(string), null)<br>  })</pre> | n/a | yes |
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | Name of the ECS cluster to attach services | `string` | `null` | no |
| <a name="input_ecs_service"></a> [ecs\_service](#input\_ecs\_service) | Configuration for the ECS service, including cluster, service name, and load balancer settings. | <pre>object({<br>    cluster_name             = optional(string)<br>    service_name             = optional(string)<br>    repository_name          = optional(string)<br>    enable_load_balancer     = optional(bool, false)<br>    aws_lb_target_group_name = optional(string)<br>    ecs_subnets              = optional(list(string))<br>    create                   = optional(bool, false)<br>  })</pre> | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment associated with the ECS service | `string` | `null` | no |
| <a name="input_launch_template"></a> [launch\_template](#input\_launch\_template) | Configuration for the EC2 launch template used in ECS. | <pre>object({<br>    name = string<br>    block_device_mappings = optional(list(object({<br>      device_name = string<br>      ebs = optional(object({<br>        volume_size = number<br>      }))<br>    })), [])<br><br>    cpu_options = optional(object({<br>      core_count       = number<br>      threads_per_core = number<br>    }), null)<br><br>    disable_api_stop        = optional(bool, false)<br>    disable_api_termination = optional(bool, false)<br>    ebs_optimized           = optional(bool, false)<br><br>    elastic_gpu_specifications = optional(list(object({<br>      type = string<br>    })), [])<br><br>    iam_instance_profile = optional(object({<br>      name = string<br>    }), null)<br><br>    image_id                             = optional(string, null)<br>    instance_initiated_shutdown_behavior = optional(string, "stop")<br><br>    instance_type = optional(string, null)<br>    kernel_id     = optional(string, null)<br>    key_name      = optional(string, null)<br><br>    monitoring = optional(object({<br>      enabled = bool<br>    }), null)<br><br>    network_interfaces = optional(list(object({<br>      associate_public_ip_address = optional(bool, null)<br>      ipv4_prefixes               = optional(list(string), [])<br>      ipv6_prefixes               = optional(list(string), [])<br>      ipv4_addresses              = optional(list(string), [])<br>      ipv6_addresses              = optional(list(string), [])<br>      network_interface_id        = optional(string, null)<br>      private_ip_address          = optional(string, null)<br>      security_groups             = optional(list(string), [])<br>      subnet_id                   = optional(string, null)<br>    })), [])<br><br>    placement = optional(object({<br>      availability_zone = string<br>    }), null)<br><br>    vpc_security_group_ids = optional(list(string), [])<br><br>    tag_specifications = optional(list(object({<br>      resource_type = string<br>      tags          = map(string)<br>    })), [])<br><br>    user_data = optional(string, null)<br>  })</pre> | `null` | no |
| <a name="input_lb_data"></a> [lb\_data](#input\_lb\_data) | Load balancer configuration including listener port and security group. | <pre>object({<br>    listener_port        = number<br>    deregistration_delay = optional(number)<br>    security_group_id    = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | ARN of the target group used for the ECS service. | `string` | `null` | no |
| <a name="input_task"></a> [task](#input\_task) | Task-related information (vCPU, memory, # of tasks, port, and health check info.) | <pre>object({<br>    tasks_desired               = optional(number)<br>    launch_type                 = optional(string)<br>    network_mode                = optional(string)<br>    compatibilities             = optional(list(string))<br>    container_vcpu              = optional(number)<br>    container_memory            = optional(number)<br>    container_port              = number<br>    container_health_check_path = optional(string)<br>    container_definition        = optional(string)<br>    environment_variables       = optional(map(string))<br>    secrets                     = optional(map(string))<br>    task_execution_role         = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of VPC in which all resources need to be created | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_cluster_name"></a> [ecs\_cluster\_name](#output\_ecs\_cluster\_name) | The name of the ECS cluster |
| <a name="output_ecs_service_arn"></a> [ecs\_service\_arn](#output\_ecs\_service\_arn) | The ARN of the ECS service |
| <a name="output_ecs_service_name"></a> [ecs\_service\_name](#output\_ecs\_service\_name) | The name of the ECS service |
| <a name="output_ecs_task_definition_arn"></a> [ecs\_task\_definition\_arn](#output\_ecs\_task\_definition\_arn) | The ARN of the ECS task definition |
| <a name="output_ecs_task_role_arn"></a> [ecs\_task\_role\_arn](#output\_ecs\_task\_role\_arn) | The ARN of the IAM role assigned to the ECS task |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Versioning

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you don't specify this in your commit message then by default it will consider patch and will bump that accordingly


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
- SourceFuse ARC Team
