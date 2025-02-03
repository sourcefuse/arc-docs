# terraform-aws-module-template
![Module Structure](./static/banner.png)
# [terraform-aws-arc-load-balancer](https://github.com/sourcefuse/terraform-aws-arc-load-balancer)

<a href="https://github.com/sourcefuse/terraform-aws-arc-load-balancer/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-load-balancer.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-load-balancer/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-load-balancer.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-load-balancer&token=6306baee2d5d0acf189ee2eecd9a6d354522c0b5)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-load-balancer)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-load-balancer/actions/workflows/snyk.yaml)

## Overview

This Terraform module provisions and configures an AWS Load Balancer (ALB/NLB) along with related resources such as target groups, listeners, listener rules, security groups, and logging configurations. It is designed for high availability, security, and scalability while allowing flexibility for integration with existing AWS infrastructure.

### Features

- Load Balancer

- Supports Application Load Balancer (ALB) and Network Load Balancer (NLB)

- Option for internal or external load balancer

- Supports IPv4 and IPv6 addressing

- Cross-zone load balancing for improved traffic distribution

- Deletion protection to prevent accidental removal

### Security and Access Control

- Ability to attach security groups dynamically

- Trust store support for managing client authentication securely

### Target Groups & Attachments

- Dynamic target group creation for EC2 instances, Lambda functions, or IP addresses

- Supports stickiness policies for session persistence

- Configurable health checks to monitor target availability

- DNS failover & unhealthy state routing for improved reliability

- Target failover handling for high availability

### Logging and Monitoring

- Access logging to Amazon S3 for audit and compliance

- Connection logs to track network-level traffic

### Listener & Listener Rules

- Supports HTTP, HTTPS, TCP, and UDP listeners

- Configurable SSL/TLS certificates for secure traffic

- OIDC and Cognito authentication for secure access control

- Supports redirect, fixed response, and forward actions

### Custom Configurations

- Subnet mappings to control network placement

- Fine-grained control over timeouts, session stickiness, and routing policies

- Weighted target group routing for intelligent traffic distribution



## Usage

To see a full example, check out the [main.tf](./example/main.tf) file in the example folder.  

```hcl
################################################################################
## application load balancer
################################################################################

module "alb" {
  source                         = "sourcefuse/arc-load-balancer/aws"
  version                        = "0.0.1"
  load_balancer_config           = local.load_balancer_config
  target_group_config            = local.target_group_config
  target_group_attachment_config = local.target_group_attachment_config
  alb_listener                   = local.alb_listener
  default_action                 = local.default_action
  listener_rules                 = local.listener_rules
  security_group_data            = local.security_group_data
  security_group_name            = local.security_group_name
  vpc_id                         = data.aws_vpc.default.id
  tags                           = module.tags.tags
}

################################################################################
## network load balancer
################################################################################
module "nlb" {
  source                         = "sourcefuse/arc-load-balancer/aws"
  version                        = "0.0.1"
  load_balancer_config           = local.load_balancer_config
  target_group_config            = local.target_group_config
  target_group_attachment_config = local.target_group_attachment_config
  alb_listener                   = local.alb_listener
  security_group_data            = local.security_group_data
  network_forward_action         = local.network_forward_action
  security_group_name            = local.security_group_name
  vpc_id                         = data.aws_vpc.default.id
  tags                           = module.tags.tags
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
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_arc_security_group"></a> [arc\_security\_group](#module\_arc\_security\_group) | sourcefuse/arc-security-group/aws | 0.0.1 |
| <a name="module_tags"></a> [tags](#module\_tags) | sourcefuse/arc-tags/aws | 1.2.6 |

## Resources

| Name | Type |
|------|------|
| [aws_lb.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_certificate) | resource |
| [aws_lb_listener_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |
| [aws_lb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment) | resource |
| [aws_lb_trust_store.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_trust_store) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_listener"></a> [alb\_listener](#input\_alb\_listener) | n/a | <pre>object({<br>    port                     = optional(number, 80)<br>    protocol                 = optional(string, "HTTP")<br>    alpn_policy              = optional(string, null)<br>    certificate_arn          = optional(string, "")<br>    ssl_policy               = optional(string, "")<br>    tcp_idle_timeout_seconds = optional(number, 350)<br>  })</pre> | n/a | yes |
| <a name="input_default_action"></a> [default\_action](#input\_default\_action) | Default actions for the ALB listener. | <pre>list(object({<br>    type = string<br><br>    authenticate_oidc = optional(object({<br>      authorization_endpoint              = string<br>      authentication_request_extra_params = optional(map(string), {})<br>      client_id                           = string<br>      client_secret                       = string<br>      issuer                              = string<br>      token_endpoint                      = string<br>      user_info_endpoint                  = string<br>      on_unauthenticated_request          = optional(string, "deny")<br>      scope                               = optional(string)<br>      session_cookie_name                 = optional(string)<br>      session_timeout                     = optional(number)<br>    }))<br><br>    authenticate_cognito = optional(object({<br>      user_pool_arn                       = string<br>      user_pool_client_id                 = string<br>      user_pool_domain                    = string<br>      authentication_request_extra_params = optional(map(string), {})<br>      on_unauthenticated_request          = optional(string, "deny")<br>      scope                               = optional(string)<br>      session_cookie_name                 = optional(string)<br>      session_timeout                     = optional(number)<br>    }))<br><br>    fixed_response = optional(object({<br>      status_code  = string<br>      content_type = optional(string, "text/plain")<br>      message_body = optional(string, "")<br>    }))<br>    forward = optional(object({<br>      target_groups = list(object({<br>        # arn    = string<br>        weight = optional(number, null)<br>      }))<br>      stickiness = optional(object({<br>        duration = number<br>        enabled  = optional(bool, false)<br>      }))<br>    }))<br><br>    redirect = optional(object({<br>      host        = optional(string)<br>      path        = optional(string)<br>      query       = optional(string)<br>      protocol    = optional(string)<br>      port        = optional(number)<br>      status_code = string<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_lb_trust_store_config"></a> [lb\_trust\_store\_config](#input\_lb\_trust\_store\_config) | The configuration for the Load Balancer Trust Stores | <pre>list(object({<br>    name                                     = string<br>    name_prefix                              = optional(string)<br>    ca_certificates_bundle_s3_bucket         = string<br>    ca_certificates_bundle_s3_key            = string<br>    ca_certificates_bundle_s3_object_version = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_listener_certificates"></a> [listener\_certificates](#input\_listener\_certificates) | A map of listener certificates with their ARN | <pre>map(object({<br>    certificate_arn = string<br>  }))</pre> | `{}` | no |
| <a name="input_listener_rules"></a> [listener\_rules](#input\_listener\_rules) | A map of listener rules | <pre>map(object({<br>    priority = number<br>    authenticate_oidc = optional(object({<br>      authorization_endpoint              = string<br>      client_id                           = string<br>      client_secret                       = string<br>      issuer                              = string<br>      token_endpoint                      = string<br>      user_info_endpoint                  = string<br>      authentication_request_extra_params = map(string)<br>      on_unauthenticated_request          = string<br>      scope                               = string<br>      session_cookie_name                 = string<br>      session_timeout                     = number<br>    }))<br>    actions = list(object({<br>      type  = string<br>      order = number<br>      redirect = optional(object({<br>        host        = string<br>        path        = string<br>        query       = string<br>        protocol    = string<br>        port        = number<br>        status_code = string<br>      }))<br>      fixed_response = optional(object({<br>        status_code  = string<br>        content_type = string<br>        message_body = string<br>      }))<br>      authenticate_cognito = optional(object({<br>        user_pool_arn              = string<br>        user_pool_client_id        = string<br>        user_pool_domain           = string<br>        on_unauthenticated_request = string<br>      }))<br>    }))<br>    conditions = list(object({<br>      host_header = optional(object({<br>        values = list(string)<br>      }))<br>      path_pattern = optional(object({<br>        values = list(string)<br>      }))<br>    }))<br>  }))</pre> | `{}` | no |
| <a name="input_load_balancer_config"></a> [load\_balancer\_config](#input\_load\_balancer\_config) | ######### alb security group config ########## | <pre>object({<br>    name                                                         = optional(string, null)<br>    name_prefix                                                  = optional(string, null)<br>    type                                                         = optional(string, "application")<br>    internal                                                     = optional(bool, false)<br>    ip_address_type                                              = optional(string, "ipv4")<br>    enable_deletion_protection                                   = optional(bool, true)<br>    enable_cross_zone_load_balancing                             = optional(bool, true)<br>    enable_http2                                                 = optional(bool, true)<br>    enable_waf_fail_open                                         = optional(bool, false)<br>    enable_xff_client_port                                       = optional(bool, true)<br>    enable_zonal_shift                                           = optional(bool, true)<br>    desync_mitigation_mode                                       = optional(string, "defensive")<br>    drop_invalid_header_fields                                   = optional(bool, false)<br>    enforce_security_group_inbound_rules_on_private_link_traffic = optional(string, "off")<br>    idle_timeout                                                 = optional(number, 60)<br>    preserve_host_header                                         = optional(bool, true)<br>    xff_header_processing_mode                                   = optional(string, "append")<br>    customer_owned_ipv4_pool                                     = optional(string, null)<br>    dns_record_client_routing_policy                             = optional(string, "any_availability_zone")<br>    client_keep_alive                                            = optional(number, 60)<br>    enable_tls_version_and_cipher_suite_headers                  = optional(bool, true)<br><br>    subnet_mapping = optional(list(object({<br>      subnet_id            = string<br>      allocation_id        = optional(string, null)<br>      ipv6_address         = optional(string, null)<br>      private_ipv4_address = optional(string, null)<br>    })))<br><br>    access_logs = optional(object({<br>      enabled = optional(bool, false)<br>      bucket  = string<br>      prefix  = optional(string, "access-logs")<br>    }))<br><br>    connection_logs = optional(object({<br>      enabled = optional(bool, false)<br>      bucket  = string<br>      prefix  = optional(string, "connection-logs")<br>    }), )<br>  })</pre> | n/a | yes |
| <a name="input_network_forward_action"></a> [network\_forward\_action](#input\_network\_forward\_action) | Default forward action for the ALB listener. | `bool` | `false` | no |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br>    security_group_ids_to_attach = optional(list(string), [])<br>    create                       = optional(bool, true)<br>    description                  = optional(string, null)<br>    ingress_rules = optional(list(object({<br>      description              = optional(string, null)<br>      cidr_block               = optional(string, null)<br>      source_security_group_id = optional(string, null)<br>      from_port                = number<br>      ip_protocol              = string<br>      to_port                  = string<br>      self                     = optional(bool, false)<br>    })), [])<br>    egress_rules = optional(list(object({<br>      description                   = optional(string, null)<br>      cidr_block                    = optional(string, null)<br>      destination_security_group_id = optional(string, null)<br>      from_port                     = number<br>      ip_protocol                   = string<br>      to_port                       = string<br>      prefix_list_id                = optional(string, null)<br>    })), [])<br>  })</pre> | <pre>{<br>  "create": false<br>}</pre> | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | alb security group name | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_target_group_attachment_config"></a> [target\_group\_attachment\_config](#input\_target\_group\_attachment\_config) | List of target group attachment configurations | <pre>list(object({<br>    target_id         = string<br>    target_type       = string # Values: "instance", "ip", or "lambda"<br>    port              = optional(number)<br>    availability_zone = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_target_group_config"></a> [target\_group\_config](#input\_target\_group\_config) | ######### alb target group config ########## | <pre>object({<br>    name                              = optional(string)<br>    name_prefix                       = optional(string)<br>    port                              = optional(number)<br>    protocol                          = optional(string)<br>    ip_address_type                   = optional(string)<br>    load_balancing_anomaly_mitigation = optional(bool)<br>    load_balancing_cross_zone_enabled = optional(bool)<br>    preserve_client_ip                = optional(bool)<br>    protocol_version                  = optional(string)<br>    load_balancing_algorithm_type     = optional(string)<br>    target_type                       = optional(string)<br>    proxy_protocol_v2                 = optional(bool)<br>    slow_start                        = optional(number)<br><br>    health_check = optional(object({<br>      enabled             = bool<br>      interval            = number<br>      path                = string<br>      port                = number<br>      protocol            = string<br>      timeout             = number<br>      unhealthy_threshold = number<br>      healthy_threshold   = number<br>      matcher             = string<br>    }))<br><br>    stickiness = optional(object({<br>      type            = string<br>      cookie_duration = number<br>      cookie_name     = optional(string)<br>      enabled         = bool<br>    }))<br><br>    target_group_health = optional(object({<br>      dns_failover = optional(object({<br>        minimum_healthy_targets_count      = number<br>        minimum_healthy_targets_percentage = number<br>      }))<br><br>      unhealthy_state_routing = optional(object({<br>        minimum_healthy_targets_count      = number<br>        minimum_healthy_targets_percentage = number<br>      }))<br>    }))<br><br>    target_failover = optional(object({<br>      on_deregistration = string<br>      on_unhealthy      = string<br>    }))<br><br>    target_health_state = optional(object({<br>      enable_unhealthy_connection_termination = bool<br>      unhealthy_draining_interval             = number<br>    }))<br>  })</pre> | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID for the resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the load balancer |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | DNS name of the load balancer |
| <a name="output_id"></a> [id](#output\_id) | ID of the load balancer |
| <a name="output_listener_arn"></a> [listener\_arn](#output\_listener\_arn) | ARN of the load balancer listener |
| <a name="output_security_group_ids"></a> [security\_group\_ids](#output\_security\_group\_ids) | Security group IDs created |
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | ARN of the target group |
| <a name="output_target_group_health_check"></a> [target\_group\_health\_check](#output\_target\_group\_health\_check) | Health check configuration of the target group |
| <a name="output_target_group_stickiness"></a> [target\_group\_stickiness](#output\_target\_group\_stickiness) | Stickiness configuration of the target group |
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
