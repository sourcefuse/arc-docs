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
module "ecs_cluster" {
  source = "./modules/ecs_cluster"

  ecs_cluster = {
    name                        = var.ecs_cluster.name
    configuration               = var.ecs_cluster.configuration
    create_cloudwatch_log_group = var.ecs_cluster.create_cloudwatch_log_group
    service_connect_defaults    = var.ecs_cluster.service_connect_defaults
    settings                    = var.ecs_cluster.settings
  }

  capacity_provider = {
    autoscaling_capacity_providers        = var.capacity_provider.autoscaling_capacity_providers
    default_capacity_provider_use_fargate = var.capacity_provider.default_capacity_provider_use_fargate
    fargate_capacity_providers            = var.capacity_provider.fargate_capacity_providers
  }
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
| <a name="module_alb"></a> [alb](#module\_alb) | ./modules/alb | n/a |
| <a name="module_ecs_cluster"></a> [ecs\_cluster](#module\_ecs\_cluster) | ./modules/ecs_cluster | n/a |
| <a name="module_ecs_service"></a> [ecs\_service](#module\_ecs\_service) | ./modules/ecs_service | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb"></a> [alb](#input\_alb) | Configuration settings for the Application Load Balancer (ALB). This includes attributes related to the ALB itself, such as its name, port, protocol, and other optional settings like access logs and tags. | <pre>object({<br>    name                       = optional(string, null)<br>    port                       = optional(number)<br>    protocol                   = optional(string, "HTTP")<br>    internal                   = optional(bool, false)<br>    load_balancer_type         = optional(string, "application")<br>    idle_timeout               = optional(number, 60)<br>    enable_deletion_protection = optional(bool, false)<br>    enable_http2               = optional(bool, true)<br>    certificate_arn            = optional(string, null)<br>    create_alb                 = optional(bool, false)<br><br>    access_logs = optional(object({<br>      bucket  = string<br>      enabled = optional(bool, false)<br>      prefix  = optional(string, "")<br>    }))<br><br>    tags = optional(map(string), {})<br>  })</pre> | n/a | yes |
| <a name="input_alb_target_group"></a> [alb\_target\_group](#input\_alb\_target\_group) | List of target groups to create | <pre>list(object({<br>    name                              = optional(string, "target-group")<br>    port                              = number<br>    protocol                          = optional(string, null)<br>    protocol_version                  = optional(string, "HTTP1")<br>    vpc_id                            = optional(string, "")<br>    target_type                       = optional(string, "ip")<br>    ip_address_type                   = optional(string, "ipv4")<br>    load_balancing_algorithm_type     = optional(string, "round_robin")<br>    load_balancing_cross_zone_enabled = optional(string, "use_load_balancer_configuration")<br>    deregistration_delay              = optional(number, 300)<br>    slow_start                        = optional(number, 0)<br>    tags                              = optional(map(string), {})<br><br>    health_check = optional(object({<br>      enabled             = optional(bool, true)<br>      protocol            = optional(string, "HTTP")<br>      path                = optional(string, "/")<br>      port                = optional(string, "traffic-port")<br>      timeout             = optional(number, 6)<br>      healthy_threshold   = optional(number, 3)<br>      unhealthy_threshold = optional(number, 3)<br>      interval            = optional(number, 30)<br>      matcher             = optional(string, "200")<br>    }))<br><br>    stickiness = optional(object({<br>      enabled         = optional(bool, true)<br>      type            = string<br>      cookie_duration = optional(number, 86400)<br>      })<br>    )<br><br>  }))</pre> | n/a | yes |
| <a name="input_capacity_provider"></a> [capacity\_provider](#input\_capacity\_provider) | Configuration settings for the ECS capacity providers, including the capacity providers used for autoscaling and Fargate. This variable defines the properties of each capacity provider and how they are managed, such as scaling policies and termination protection. | <pre>object({<br>    autoscaling_capacity_providers = map(object({<br>      name                           = optional(string)<br>      auto_scaling_group_arn         = string<br>      managed_termination_protection = optional(string, "DISABLED")<br>      managed_draining               = optional(string, "ENABLED")<br>      managed_scaling = optional(object({<br>        instance_warmup_period    = optional(number)<br>        maximum_scaling_step_size = optional(number)<br>        minimum_scaling_step_size = optional(number)<br>        status                    = optional(string)<br>        target_capacity           = optional(number)<br>      }))<br>      tags = optional(map(string), {})<br>    }))<br>    use_fargate                = bool<br>    fargate_capacity_providers = any<br>  })</pre> | n/a | yes |
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | CIDR blocks for security group ingress rules | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_ecs_cluster"></a> [ecs\_cluster](#input\_ecs\_cluster) | The ECS-specific values to use such as cluster, service, and repository names.<br><br>Keys:<br>  - cluster\_name: The name of the ECS cluster.<br>  - cluster\_configuration: The execute command configuration for the cluster.<br>  - cluster\_settings: A list of cluster settings (e.g., container insights). Default is an empty list.<br>  - cluster\_service\_connect\_defaults: Configures a default Service Connect namespace.<br>  - create\_cloudwatch\_log\_group: Boolean flag to specify whether to create a CloudWatch log group for the ECS cluster. | <pre>object({<br>    name = string<br>    configuration = optional(object({<br>      execute_command_configuration = optional(object({<br>        kms_key_id = optional(string, "")<br>        logging    = optional(string, "DEFAULT")<br>        log_configuration = optional(object({<br>          cloudwatch_encryption_enabled = optional(bool, null)<br>          log_group_name                = optional(string, null)<br>          log_group_retention_in_days   = optional(number, null)<br>          log_group_kms_key_id          = optional(string, null)<br>          log_group_tags                = optional(map(string), null)<br>          s3_bucket_name                = optional(string, null)<br>          s3_bucket_encryption_enabled  = optional(bool, null)<br>          s3_key_prefix                 = optional(string, null)<br>        }), {})<br>      }), {})<br>    }), {})<br>    create_cloudwatch_log_group = bool<br>    service_connect_defaults    = optional(map(string), null)<br>    settings                    = optional(any, null)<br>    tags                        = optional(map(string), null)<br>  })</pre> | n/a | yes |
| <a name="input_ecs_service"></a> [ecs\_service](#input\_ecs\_service) | The ECS-specific values to use such as cluster, service, and repository names. | <pre>object({<br>    cluster_name             = string<br>    service_name             = string<br>    repository_name          = string<br>    enable_load_balancer     = bool<br>    aws_lb_target_group_name = optional(string)<br>    create_service           = optional(bool, false)<br>  })</pre> | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment associated with the ECS service | `string` | n/a | yes |
| <a name="input_lb"></a> [lb](#input\_lb) | ALB-related information (listening port, deletion protection, security group) | <pre>object({<br>    name                 = string<br>    listener_port        = number<br>    deregistration_delay = optional(number)<br>    security_group_id    = string<br>  })</pre> | n/a | yes |
| <a name="input_listener_rules"></a> [listener\_rules](#input\_listener\_rules) | List of listener rules to create | <pre>list(object({<br>    priority = number<br><br>    conditions = list(object({<br>      field  = string<br>      values = list(string)<br>    }))<br><br>    actions = list(object({<br>      type             = string<br>      target_group_arn = optional(string)<br>      order            = optional(number)<br>      redirect = optional(object({<br>        protocol    = string<br>        port        = string<br>        host        = optional(string)<br>        path        = optional(string)<br>        query       = optional(string)<br>        status_code = string<br>      }), null)<br><br>      fixed_response = optional(object({<br>        content_type = string<br>        message_body = optional(string)<br>        status_code  = optional(string)<br>      }), null)<br>    }))<br>  }))</pre> | n/a | yes |
| <a name="input_task"></a> [task](#input\_task) | Task-related information (vCPU, memory, # of tasks, port, and health check info.) | <pre>object({<br>    tasks_desired               = optional(number)<br>    container_vcpu              = optional(number)<br>    container_memory            = optional(number)<br>    container_port              = number<br>    container_health_check_path = optional(string)<br>    container_definition        = optional(string)<br>    environment_variables       = optional(map(string))<br>    task_execution_role         = optional(string)<br>  })</pre> | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of VPC in which all resources need to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_name"></a> [alb\_name](#output\_alb\_name) | The names of the ALBs. |
| <a name="output_ecs_cluster_name"></a> [ecs\_cluster\_name](#output\_ecs\_cluster\_name) | The name of the ECS cluster. |
| <a name="output_ecs_service_name"></a> [ecs\_service\_name](#output\_ecs\_service\_name) | The service names of the ECS services. |
| <a name="output_ecs_task_definition_arn"></a> [ecs\_task\_definition\_arn](#output\_ecs\_task\_definition\_arn) | The ARNs of the ECS task definitions. |
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
