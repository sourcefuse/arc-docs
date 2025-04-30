![Module Structure](./static/asg-banner.png)

# [terraform-aws-arc-ec2-autoscale-group](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group)

<a href="https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-ec2-autoscale-group.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-ec2-autoscale-group.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-ec2-autoscale-group&token=d2a98006c7439f12118f086a79a8c2af526712ca)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-ec2-autoscale-group)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-ec2-autoscale-group/actions/workflows/snyk.yaml)

## Overview

SourceFuse's AWS Reference Architecture Terraform module leverages the terraform-aws-modules/terraform-aws-arc-ec2-autoscale-group GitHub repository to enable streamlined provisioning and management of EC2 Auto Scaling Groups. This module facilitates dynamic scaling of EC2 instances based on demand, ensuring high availability and cost efficiency for workloads. It supports customizable launch templates, instance profiles, and scaling policies, allowing flexible configuration tailored to diverse application needs. Integrated with CloudWatch monitoring and load balancing options, the module ensures resilient and performant infrastructure on AWS.

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
asg/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```

2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example


```hcl
module "asg" {
  source        = "sourcefuse/arc-ec2-autoscale-group/aws"
  version       = "0.0.1"

  launch_template                  = local.launch_template
  asg                              = local.asg_config
  security_group_data              = local.security_group_data
  security_group_name              = local.security_group_name
  vpc_id                           = data.aws_vpc.default.id
  autoscaling_notification_enabled = local.autoscaling_notification_enabled
  autoscaling_notification_types   = local.autoscaling_notification_types
  autoscaling_sns_topic_arn        = local.autoscaling_sns_topic_arn
  schedules                        = local.schedules
  autoscaling_policy               = local.autoscaling_policy
  predictive_scaling_configuration = local.predictive_scaling_configuration
  create_autoscaling_attachment    = local.create_autoscaling_attachment
  autoscaling_attachments          = local.autoscaling_attachments
  instance_profile_name            = local.instance_profile_name
  tags                             = module.tags.tags
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "name" {
  description = "Name of the Auto Scaling Group"
  value       = module.asg.name
}

output "asg_arn" {
  description = "ARN of the Auto Scaling Group"
  value       = module.asg.asg_arn
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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.85 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.96.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_arc_security_group"></a> [arc\_security\_group](#module\_arc\_security\_group) | sourcefuse/arc-security-group/aws | 0.0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_attachment) | resource |
| [aws_autoscaling_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_notification.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_notification) | resource |
| [aws_autoscaling_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_schedule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_schedule) | resource |
| [aws_autoscaling_traffic_source_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_traffic_source_attachment) | resource |
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_launch_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asg"></a> [asg](#input\_asg) | Configuration map for Auto Scaling Group | <pre>object({<br>    name                      = optional(string)<br>    min_size                  = number<br>    max_size                  = number<br>    desired_capacity          = optional(number)<br>    desired_capacity_type     = optional(string)<br>    vpc_zone_identifier       = optional(list(string))<br>    availability_zones        = optional(list(string))<br>    min_elb_capacity          = optional(number)<br>    wait_for_elb_capacity     = optional(number)<br>    wait_for_capacity_timeout = optional(string)<br>    capacity_rebalance        = optional(bool)<br>    context                   = optional(string)<br>    placement_group           = optional(string)<br>    health_check_type         = optional(string)<br>    health_check_grace_period = optional(number)<br>    protect_from_scale_in     = optional(bool)<br>    default_cooldown          = optional(number)<br>    default_instance_warmup   = optional(number)<br>    force_delete              = optional(bool)<br>    max_instance_lifetime     = optional(number)<br>    metrics_granularity       = optional(string)<br>    enabled_metrics           = optional(list(string))<br>    termination_policies      = optional(list(string))<br>    suspended_processes       = optional(list(string))<br>    service_linked_role_arn   = optional(string)<br>    instance_generations      = optional(bool)<br>    tags                      = optional(list(map(string)))<br><br>    availability_zone_distribution = optional(object({<br>      capacity_distribution_strategy = string<br>    }))<br><br>    initial_lifecycle_hook = optional(list(object({<br>      name                    = string<br>      lifecycle_transition    = string<br>      default_result          = optional(string)<br>      heartbeat_timeout       = optional(number)<br>      notification_metadata   = optional(string)<br>      notification_target_arn = optional(string)<br>      role_arn                = optional(string)<br>    })))<br><br>    instance_maintenance_policy = optional(object({<br>      min_healthy_percentage = optional(number)<br>      max_healthy_percentage = optional(number)<br>    }))<br><br>    mixed_instances_policy = optional(object({<br>      launch_template = object({<br>        launch_template_specification = object({<br>          version = string<br>        })<br>        override = optional(list(object({<br>          instance_type     = optional(string)<br>          weighted_capacity = optional(string)<br>          instance_requirements = optional(object({<br>            accelerator_count = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            accelerator_manufacturers = optional(list(string)),<br>            accelerator_names         = optional(list(string)),<br>            accelerator_total_memory_mib = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            accelerator_types      = optional(list(string)),<br>            allowed_instance_types = optional(list(string)),<br>            bare_metal             = optional(string),<br>            baseline_ebs_bandwidth_mbps = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            burstable_performance                                   = optional(string),<br>            cpu_manufacturers                                       = optional(list(string)),<br>            excluded_instance_types                                 = optional(list(string)),<br>            instance_generations                                    = optional(list(string)),<br>            local_storage                                           = optional(string),<br>            local_storage_types                                     = optional(list(string)),<br>            max_spot_price_as_percentage_of_optimal_on_demand_price = optional(number),<br>            memory_gib_per_vcpu = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            memory_mib = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            network_bandwidth_gbps = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            network_interface_count = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            on_demand_max_price_percentage_over_lowest_price = optional(number),<br>            require_hibernate_support                        = optional(bool),<br>            spot_max_price_percentage_over_lowest_price      = optional(number),<br>            total_local_storage_gb = optional(object({<br>              min = number,<br>              max = number<br>            })),<br>            vcpu_count = optional(object({<br>              min = number,<br>              max = number<br>            }))<br>          }))<br>        })))<br>      })<br><br>      instances_distribution = optional(object({<br>        on_demand_allocation_strategy            = optional(string)<br>        on_demand_base_capacity                  = optional(number)<br>        on_demand_percentage_above_base_capacity = optional(number)<br>        spot_allocation_strategy                 = optional(string)<br>        spot_instance_pools                      = optional(number)<br>        spot_max_price                           = optional(string)<br>      }))<br>    }))<br><br>    warm_pool = optional(object({<br>      max_group_prepared_capacity = optional(number)<br>      min_size                    = optional(number)<br>      pool_state                  = optional(string)<br>      instance_reuse_policy = optional(object({<br>        reuse_on_scale_in = optional(bool)<br>      }))<br>    }))<br><br>    instance_refresh = optional(list(object({<br>      strategy = string<br>      triggers = optional(list(string))<br>      preferences = optional(object({<br>        checkpoint_delay             = optional(number)<br>        checkpoint_percent           = optional(number)<br>        instance_warmup              = optional(number)<br>        min_healthy_percentage       = optional(number)<br>        max_healthy_percentage       = optional(number)<br>        scale_in_protected_instances = optional(string)<br>        standby_instances            = optional(string)<br>        auto_rollback                = optional(bool)<br>      }))<br>    })))<br>  })</pre> | n/a | yes |
| <a name="input_autoscaling_attachments"></a> [autoscaling\_attachments](#input\_autoscaling\_attachments) | Map of autoscaling attachment configurations | <pre>map(object({<br>    autoscaling_group_name = string<br>    lb_target_group_arn    = optional(string)<br>    elb                    = optional(string)<br>  }))</pre> | `{}` | no |
| <a name="input_autoscaling_notification_enabled"></a> [autoscaling\_notification\_enabled](#input\_autoscaling\_notification\_enabled) | Boolean flag to enable or disable autoscaling notifications | `bool` | `false` | no |
| <a name="input_autoscaling_notification_types"></a> [autoscaling\_notification\_types](#input\_autoscaling\_notification\_types) | List of notification types for the Auto Scaling group | `list(string)` | <pre>[<br>  "autoscaling:EC2_INSTANCE_LAUNCH",<br>  "autoscaling:EC2_INSTANCE_TERMINATE",<br>  "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",<br>  "autoscaling:EC2_INSTANCE_TERMINATE_ERROR"<br>]</pre> | no |
| <a name="input_autoscaling_policy"></a> [autoscaling\_policy](#input\_autoscaling\_policy) | Configuration for the autoscaling policy | <pre>object({<br>    name                      = optional(string)<br>    policy_type               = optional(string)<br>    adjustment_type           = optional(string)<br>    cooldown                  = optional(number)<br>    estimated_instance_warmup = optional(number)<br>    scaling_adjustment        = optional(number)<br>    metric_aggregation_type   = optional(string)<br>    min_adjustment_magnitude  = optional(number)<br><br>    step_adjustment = optional(list(object({<br>      scaling_adjustment          = number<br>      metric_interval_lower_bound = optional(number)<br>      metric_interval_upper_bound = optional(number)<br>    })))<br><br>    target_tracking_configuration = optional(object({<br>      disable_scale_in = optional(bool)<br>      target_value     = optional(number)<br><br>      predefined_metric_specification = optional(object({<br>        predefined_metric_type = string<br>        resource_label         = optional(string)<br>      }))<br><br>      customized_metric_specification = optional(object({<br>        metric_name = string<br>        namespace   = string<br>        statistic   = string<br>        unit        = optional(string)<br><br>        metric_dimension = optional(list(object({<br>          name  = string<br>          value = string<br>        })))<br>      }))<br>    }))<br>  })</pre> | `{}` | no |
| <a name="input_autoscaling_sns_topic_arn"></a> [autoscaling\_sns\_topic\_arn](#input\_autoscaling\_sns\_topic\_arn) | ARN of the SNS topic to send Auto Scaling notifications to | `string` | n/a | yes |
| <a name="input_create_autoscaling_attachment"></a> [create\_autoscaling\_attachment](#input\_create\_autoscaling\_attachment) | Whether to create autoscaling attachments | `bool` | `false` | no |
| <a name="input_create_traffic_source_attachment"></a> [create\_traffic\_source\_attachment](#input\_create\_traffic\_source\_attachment) | Whether to create traffic source attachment for the auto scaling group | `bool` | `false` | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | The name of the IAM instance profile | `string` | `"asg-instance-profile"` | no |
| <a name="input_launch_template"></a> [launch\_template](#input\_launch\_template) | Configuration for the EC2 Launch Template | <pre>object({<br>    name          = string<br>    description   = optional(string)<br>    image_id      = string<br>    instance_type = string<br>    user_data     = optional(string)<br><br>    disable_api_stop        = optional(bool)<br>    default_version         = optional(string)<br>    update_default_version  = optional(bool)<br>    disable_api_termination = optional(bool)<br>    ebs_optimized           = optional(bool)<br><br>    block_device_mappings = optional(list(object({<br>      device_name  = string<br>      no_device    = optional(string)<br>      virtual_name = optional(string)<br>      ebs = optional(object({<br>        volume_size           = optional(number)<br>        delete_on_termination = optional(bool)<br>        encrypted             = optional(bool)<br>        iops                  = optional(number)<br>        kms_key_id            = optional(string)<br>        snapshot_id           = optional(string)<br>        throughput            = optional(number)<br>        volume_type           = optional(string)<br>      }))<br>    })))<br><br>    cpu_options = optional(object({<br>      core_count       = optional(number)<br>      amd_sev_snp      = optional(bool)<br>      threads_per_core = optional(number)<br>    }))<br><br>    capacity_reservation_specification = optional(object({<br>      capacity_reservation_preference = optional(string)<br>      capacity_reservation_target = optional(object({<br>        capacity_reservation_id                 = optional(string)<br>        capacity_reservation_resource_group_arn = optional(string)<br>      }))<br>    }))<br><br>    credit_specification = optional(object({<br>      cpu_credits = optional(string)<br>    }))<br><br>    elastic_inference_accelerator = optional(object({<br>      type = string<br>    }))<br><br>    enclave_options = optional(object({<br>      enabled = bool<br>    }))<br><br>    hibernation_options = optional(object({<br>      configured = bool<br>    }))<br><br>    elastic_gpu_specifications = optional(list(object({<br>      type = string<br>    })))<br><br>    iam_instance_profile = optional(object({<br>      arn  = optional(string)<br>      name = optional(string)<br>    }))<br><br>    instance_requirements = optional(object({<br>      accelerator_count                                       = optional(object({ min = number, max = number }))<br>      accelerator_manufacturers                               = optional(list(string))<br>      accelerator_names                                       = optional(list(string))<br>      accelerator_total_memory_mib                            = optional(object({ min = number, max = number }))<br>      accelerator_types                                       = optional(list(string))<br>      allowed_instance_types                                  = optional(list(string))<br>      bare_metal                                              = optional(string)<br>      baseline_ebs_bandwidth_mbps                             = optional(object({ min = number, max = number }))<br>      burstable_performance                                   = optional(string)<br>      cpu_manufacturers                                       = optional(list(string))<br>      excluded_instance_types                                 = optional(list(string))<br>      instance_generations                                    = optional(list(string))<br>      local_storage                                           = optional(string)<br>      local_storage_types                                     = optional(list(string))<br>      max_spot_price_as_percentage_of_optimal_on_demand_price = optional(number)<br>      memory_gib_per_vcpu                                     = optional(object({ min = number, max = number }))<br>      memory_mib                                              = optional(object({ min = number, max = number }))<br>      network_interface_count                                 = optional(object({ min = number, max = number }))<br>      on_demand_max_price_percentage_over_lowest_price        = optional(number)<br>      require_hibernate_support                               = optional(bool)<br>      spot_max_price_percentage_over_lowest_price             = optional(number)<br>      total_local_storage_gb                                  = optional(object({ min = number, max = number }))<br>      vcpu_count                                              = optional(object({ min = number, max = number }))<br>    }))<br><br>    kernel_id                            = optional(string)<br>    ram_disk_id                          = optional(string)<br>    instance_initiated_shutdown_behavior = optional(string)<br><br>    monitoring = optional(object({<br>      enabled = bool<br>    }))<br><br>    maintenance_options = optional(object({<br>      auto_recovery = string<br>    }))<br><br>    license_specification = optional(object({<br>      license_configuration_arn = optional(string)<br>    }))<br><br>    instance_market_options = optional(object({<br>      market_type = string<br>      spot_options = optional(object({<br>        block_duration_minutes         = optional(number)<br>        instance_interruption_behavior = optional(string)<br>        max_price                      = optional(string)<br>        spot_instance_type             = optional(string)<br>        valid_until                    = optional(string)<br>      }))<br>    }))<br><br>    network_interfaces = optional(list(object({<br>      associate_public_ip_address = optional(bool)<br>      description                 = optional(string)<br>      device_index                = optional(number)<br>      interface_type              = optional(string)<br>      ipv4_prefixes               = optional(list(string))<br>      ipv4_prefix_count           = optional(number)<br>      ipv4_address_count          = optional(number)<br>      ipv6_prefix_count           = optional(number)<br>      ipv6_prefixes               = optional(list(string))<br>      ipv4_addresses              = optional(list(string))<br>      ipv6_addresses              = optional(list(string))<br>      ipv6_address_count          = optional(number)<br>      network_interface_id        = optional(string)<br>      network_card_index          = optional(number)<br>      private_ip_address          = optional(string)<br>      primary_ipv6                = optional(bool)<br>      security_groups             = optional(list(string))<br>      subnet_id                   = optional(string)<br>      delete_on_termination       = optional(bool)<br>      connection_tracking_specification = optional(object({<br>        tcp_established_timeout = optional(number)<br>        udp_stream_timeout      = optional(number)<br>        udp_timeout             = optional(number)<br>      }))<br>    })))<br><br>    metadata_options = optional(object({<br>      http_endpoint               = optional(string)<br>      http_tokens                 = optional(string)<br>      http_put_response_hop_limit = optional(number)<br>      http_protocol_ipv6          = optional(string)<br>      instance_metadata_tags      = optional(string)<br>    }))<br><br>    placement = optional(object({<br>      availability_zone       = optional(string)<br>      affinity                = optional(string)<br>      group_name              = optional(string)<br>      host_id                 = optional(string)<br>      host_resource_group_arn = optional(string)<br>      partition_number        = optional(number)<br>      spread_domain           = optional(string)<br>      tenancy                 = optional(string)<br>    }))<br>    private_dns_name_options = optional(object({<br>      enable_resource_name_dns_a_record    = optional(bool)<br>      enable_resource_name_dns_aaaa_record = optional(bool)<br>      hostname_type                        = optional(string)<br>    }))<br>    tag_specifications = optional(object({<br>      resource_type = optional(string)<br>      tags          = optional(string)<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_predictive_scaling_configuration"></a> [predictive\_scaling\_configuration](#input\_predictive\_scaling\_configuration) | Predictive scaling configuration | <pre>object({<br>    mode                         = optional(string)<br>    scheduling_buffer_time       = optional(number)<br>    max_capacity_breach_behavior = optional(string)<br>    max_capacity_buffer          = optional(number)<br><br>    metric_specification = list(object({<br>      target_value = number<br><br>      predefined_metric_pair_specification = optional(object({<br>        predefined_metric_type = string<br>        resource_label         = optional(string)<br>      }))<br><br>      predefined_load_metric_specification = optional(object({<br>        predefined_metric_type = string<br>        resource_label         = optional(string)<br>      }))<br><br>      predefined_scaling_metric_specification = optional(object({<br>        predefined_metric_type = string<br>        resource_label         = optional(string)<br>      }))<br><br>      customized_scaling_metric_specification = optional(object({<br>        metric_data_queries = list(object({<br>          id          = string<br>          expression  = optional(string)<br>          label       = optional(string)<br>          return_data = optional(bool)<br><br>          metric_stat = optional(object({<br>            stat = string<br>            unit = optional(string)<br><br>            metric = object({<br>              metric_name = string<br>              namespace   = string<br>              dimensions = optional(list(object({<br>                name  = string<br>                value = string<br>              })))<br>            })<br>          }))<br>        }))<br>      }))<br><br>      customized_load_metric_specification = optional(object({<br>        metric_data_queries = list(object({<br>          id          = string<br>          expression  = optional(string)<br>          label       = optional(string)<br>          return_data = optional(bool)<br><br>          metric_stat = optional(object({<br>            stat = string<br>            unit = optional(string)<br><br>            metric = object({<br>              metric_name = string<br>              namespace   = string<br>              dimensions = optional(list(object({<br>                name  = string<br>                value = string<br>              })))<br>            })<br>          }))<br>        }))<br>      }))<br><br>      customized_capacity_metric_specification = optional(object({<br>        metric_data_queries = list(object({<br>          id          = string<br>          expression  = optional(string)<br>          label       = optional(string)<br>          return_data = optional(bool)<br><br>          metric_stat = optional(object({<br>            stat = string<br>            unit = optional(string)<br><br>            metric = object({<br>              metric_name = string<br>              namespace   = string<br>              dimensions = optional(list(object({<br>                name  = string<br>                value = string<br>              })))<br>            })<br>          }))<br>        }))<br>      }))<br>    }))<br>  })</pre> | `null` | no |
| <a name="input_schedules"></a> [schedules](#input\_schedules) | List of Auto Scaling schedules | <pre>list(object({<br>    scheduled_action_name = string<br>    desired_capacity      = optional(number)<br>    min_size              = optional(number)<br>    max_size              = optional(number)<br>    start_time            = optional(string)<br>    end_time              = optional(string)<br>    recurrence            = optional(string)<br>    time_zone             = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br>    security_group_ids_to_attach = optional(list(string), [])<br>    create                       = optional(bool, true)<br>    description                  = optional(string, null)<br>    ingress_rules = optional(list(object({<br>      description              = optional(string, null)<br>      cidr_block               = optional(string, null)<br>      source_security_group_id = optional(string, null)<br>      from_port                = number<br>      ip_protocol              = string<br>      to_port                  = string<br>      self                     = optional(bool, false)<br>    })), [])<br>    egress_rules = optional(list(object({<br>      description                   = optional(string, null)<br>      cidr_block                    = optional(string, null)<br>      destination_security_group_id = optional(string, null)<br>      from_port                     = number<br>      ip_protocol                   = string<br>      to_port                       = string<br>      prefix_list_id                = optional(string, null)<br>    })), [])<br>  })</pre> | <pre>{<br>  "create": false<br>}</pre> | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | alb security group name | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "Name": "arc"<br>}</pre> | no |
| <a name="input_traffic_sources"></a> [traffic\_sources](#input\_traffic\_sources) | List of traffic sources to attach to the Auto Scaling group | <pre>list(object({<br>    identifier = string<br>    type       = string<br>  }))</pre> | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID for the resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asg_arn"></a> [asg\_arn](#output\_asg\_arn) | ARN of the Auto Scaling Group |
| <a name="output_asg_id"></a> [asg\_id](#output\_asg\_id) | ID of the Auto Scaling Group |
| <a name="output_availability_zones"></a> [availability\_zones](#output\_availability\_zones) | Availability Zones used by the Auto Scaling Group |
| <a name="output_desired_capacity"></a> [desired\_capacity](#output\_desired\_capacity) | Desired capacity of the Auto Scaling Group |
| <a name="output_enabled_metrics"></a> [enabled\_metrics](#output\_enabled\_metrics) | List of enabled metrics for the ASG |
| <a name="output_iam_instance_profile_arn"></a> [iam\_instance\_profile\_arn](#output\_iam\_instance\_profile\_arn) | ARN of the IAM instance profile |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | The name of the IAM role attached to the instance profile |
| <a name="output_launch_template_arn"></a> [launch\_template\_arn](#output\_launch\_template\_arn) | The ARN of the launch template |
| <a name="output_launch_template_default_version"></a> [launch\_template\_default\_version](#output\_launch\_template\_default\_version) | The default version of the launch template |
| <a name="output_launch_template_id"></a> [launch\_template\_id](#output\_launch\_template\_id) | The ID of the launch template |
| <a name="output_launch_template_latest_version"></a> [launch\_template\_latest\_version](#output\_launch\_template\_latest\_version) | The latest version of the launch template |
| <a name="output_launch_template_name"></a> [launch\_template\_name](#output\_launch\_template\_name) | The name of the launch template |
| <a name="output_name"></a> [name](#output\_name) | Name of the Auto Scaling Group |
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
  go mod init github.com/sourcefuse/terraform-aws-refarch-ec2-autoscale-group
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test  
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:
- SourceFuse ARC Team
