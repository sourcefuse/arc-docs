![Module Structure](./static/banner.png)
# [terraform-aws-arc-ec2](https://github.com/sourcefuse/terraform-aws-arc-ec2)

<a href="https://github.com/sourcefuse/terraform-aws-arc-ec2/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-ec2.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-ec2/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-ec2.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)


[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-ec2&token=1a62ef6cfb038e1446e26868afd2b88a0dd91f85)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-ec2)  

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-ec2/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-ec2/actions/workflows/snyk.yaml)
## Overview

For more information about this repository and its usage, please see [Terraform AWS ARC GitHub EC2 Module Usage Guide](https://github.com/sourcefuse/terraform-aws-arc-ec2/blob/main/docs/module-usage-guide/README.md).

## Introduction

SourceFuse's AWS Reference Architecture (ARC) Terraform module simplifies the creation and management of essential AWS infrastructure components. It is designed to provision and configure the following resources:

1. EC2 Instances: Deploys and manages one or more EC2 instances, with customizable instance types, AMIs, key pairs, and network configurations.
2. Volumes: Attaches EBS volumes to the EC2 instances for persistent storage, with options to specify volume size, type, and IOPS.
3. Load Balancer: Creates an Elastic Load Balancer (ELB) to distribute incoming traffic across multiple EC2 instances, ensuring high availability and reliability. It supports both application (ALB) and network load balancers (NLB).
4. Security Groups: Defines and manages security groups to control inbound and outbound traffic to the EC2 instances and load balancers, enhancing network security.
5. EC2 Instance Profile: Creates and attaches an instance profile with IAM roles and policies to the EC2 instances, allowing them to interact with other AWS services securely.

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:



```plaintext
ec2/
|-- main.tf
|-- variables.tf
|-- outputs.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "ec2" {
  source = "sourcefuse/arc-ec2/aws"
  version = "0.0.1"

  name                  = "${var.namespace}-${var.environment}-test"
  instance_type         = "t3.small"
  ami_id                = data.aws_ami.amazon_linux.id
  vpc_id                = data.aws_vpc.this.id
  subnet_id             = "subnet-066d0c78479b72e77"
  private_ip            = "10.12.134.2"
  instance_profile_data = local.instance_profile_data
  security_group_data   = local.security_group_data

  root_block_device_data = {
    volume_size = 10
    volume_type = "gp3"
  }
  additional_ebs_volumes = local.additional_ebs_volumes

  load_balancer_data = local.load_balancer_data
  target_groups      = local.target_groups

  tags = module.tags.tags
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "instance_id" {
  description = "Instance ID"
  value       = module.ec2_instances.id
}

output "instance_arn" {
  description = "Instance ARN"
  value       = module.ec2_instances.arn
}

output "load_balancer_arn" {
  value = module.ec2_instances.load_balancer_arn
}

output "listener_arn" {
  description = "Listener ARN"
  value       = module.ec2_instances.listener_arn
}

output "target_group_arn" {
  description = "Target Group ARN"
  value       = module.ec2_instances.target_group_arn
}

```

5. **.tfvars**

Inside the `.tfvars` file of the module, you can provide desired values that can be referenced in the main configuration. For example:

Edit the [locals.tf](./examples/locals.tf) file and provide desired values.  

`security_group_data` -  Security Group details for EC2 instance

`instance_profile_data` - EC2 instance profile

`additional_ebs_volumes` - Additional EBS volume details

`target_groups` -  Target Group details for Load balancer

`load_balancer_data` - Details to create Load balancer


```hcl
locals {

  security_group_data = {
    create             = true
    name               = "${var.namespace}-${var.environment}-sg"
    security_group_ids = []
    ingress_rules = [{
      description = "Allow SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [data.aws_vpc.this.cidr_block]
    }]
    egress_rules = [{
      description = "Allow All outbound calls"
      from_port   = 0
      to_port     = 0
      protocol    = -1
      cidr_blocks = ["0.0.0.0/0"]
    }]
  }

  instance_profile_data = {
    name   = "${var.namespace}-${var.environment}-test-profile"
    create = true
    policy_documents = [
      {
        name   = "s3-read"
        policy = data.aws_iam_policy_document.s3_read_list.json
      }
    ]
  }

  additional_ebs_volumes = {
    "vol-1" = {
      name        = "vol-1"
      device_name = "/dev/sdb"
      encrypted   = true
      size = 20
      type = "gp3"
  } }

  target_groups = {
    "group-1" = {
      port     = 80
      protocol = "HTTP"

      health_check = {
        path     = "/"
        timeout  = 20
        interval = 30
      }
      listeners = [
        {
          port       = "80"
          protocol   = "HTTP"
          ssl_policy = null

          default_action = {
            type = "redirect"
            redirect = {
              port        = 443
              protocol    = "HTTPS"
              status_code = "HTTP_301"
            }
          }

        },
        {
          port            = "443"
          protocol        = "HTTPS"
          ssl_policy      = "ELBSecurityPolicy-TLS13-1-2-2021-06"
          certificate_arn = "arn:aws:acm:us-east-1:xxxx:certificate/xx-xx-xx-xx-xx"

          default_action = {
            type = "forward"
          }
        }
      ]
      target = {
        port = 80
      }
    }
  }

  load_balancer_data = {
    create  = true
    name    = "${var.namespace}-${var.environment}-alb"
    subnets = data.aws_subnets.public.ids
  }

}

```

## First Time Usage
***uncomment the backend block in [main.tf](./example/main.tf)***
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
terraform plan -var-file terraform.tfvars
```

Apply Terraform
```shell
terraform apply -var-file terraform.tfvars
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
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.57.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_load_balancer"></a> [load\_balancer](#module\_load\_balancer) | ./modules/alb | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_eip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_volume_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_ebs_volumes"></a> [additional\_ebs\_volumes](#input\_additional\_ebs\_volumes) | (optional) `ebs_block_device` block supports the following:<br>  name - (Optional) Name of the volume<br>  delete\_on\_termination - (Optional) Whether the volume should be destroyed on instance termination. Defaults to true.<br>  device\_name - (Required) Name of the device to mount.<br>  encrypted - (Optional) Enables EBS encryption on the volume. Defaults to false. Cannot be used with snapshot\_id. Must be configured to perform drift detection.<br>  iops - (Optional) Amount of provisioned IOPS. Only valid for volume\_type of io1, io2 or gp3.<br>  kms\_key\_id - (Optional) Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.<br>  snapshot\_id - (Optional) Snapshot ID to mount.<br>  tags - (Optional) Map of tags to assign to the device.<br>  throughput - (Optional) Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for volume\_type of gp3.<br>  volume\_size - (Optional) Size of the volume in gibibytes (GiB).<br>  volume\_type - (Optional) Type of volume. Valid values include standard, gp2, gp3, io1, io2, sc1, or st1. Defaults to gp2.<br><br>  Device name : https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html | <pre>map(object({<br>    name                  = optional(string, null)<br>    delete_on_termination = optional(bool, true)<br>    device_name           = string<br>    encrypted             = optional(bool, false)<br>    iops                  = optional(string, null)<br>    kms_key_id            = optional(string, null)<br>    throughput            = optional(string, null)<br>    size                  = number<br>    type                  = optional(string, "gp2")<br><br>  }))</pre> | `{}` | no |
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID for the EC2 instance. | `string` | n/a | yes |
| <a name="input_assign_eip"></a> [assign\_eip](#input\_assign\_eip) | (optional) Whether to assign Elastic IP address, note `associate_public_ip_address` has to be enabled | `bool` | `false` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Associate a public IP address with the instance. | `bool` | `false` | no |
| <a name="input_ebs_optimized"></a> [ebs\_optimized](#input\_ebs\_optimized) | (optional) If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. | `bool` | `false` | no |
| <a name="input_enable_detailed_monitoring"></a> [enable\_detailed\_monitoring](#input\_enable\_detailed\_monitoring) | (optional) Whether to enable detailed monitoring | `bool` | `false` | no |
| <a name="input_enable_stop_protection"></a> [enable\_stop\_protection](#input\_enable\_stop\_protection) | (optional)  If true, enables EC2 Instance Stop Protection. | `bool` | `false` | no |
| <a name="input_enable_termination_protection"></a> [enable\_termination\_protection](#input\_enable\_termination\_protection) | (optional) If true, enables EC2 Instance Termination Protection. | `bool` | `false` | no |
| <a name="input_instance_metadata_options"></a> [instance\_metadata\_options](#input\_instance\_metadata\_options) | The metadata\_options block supports the following:<br><br>http\_endpoint - (Optional) Whether the metadata service is available. Valid values include enabled or disabled. Defaults to enabled.<br>http\_protocol\_ipv6 - (Optional) Whether the IPv6 endpoint for the instance metadata service is enabled. Defaults to disabled.<br>http\_put\_response\_hop\_limit - (Optional) Desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Valid values are integer from 1 to 64. Defaults to 1.<br>http\_tokens - (Optional) Whether or not the metadata service requires session tokens, also referred to as Instance Metadata Service Version 2 (IMDSv2). Valid values include optional or required. Defaults to optional.<br>instance\_metadata\_tags - (Optional) Enables or disables access to instance tags from the instance metadata service. Valid values include enabled or disabled. Defaults to disabled. | <pre>object({<br>    http_endpoint               = optional(string, "enabled")<br>    http_protocol_ipv6          = optional(string, "disabled")<br>    http_put_response_hop_limit = optional(number, 1)<br>    http_tokens                 = optional(string, "required")<br>    instance_metadata_tags      = optional(string, "disabled")<br>  })</pre> | <pre>{<br>  "http_endpoint": "enabled",<br>  "http_protocol_ipv6": "disabled",<br>  "http_put_response_hop_limit": 1,<br>  "http_tokens": "required",<br>  "instance_metadata_tags": "disabled"<br>}</pre> | no |
| <a name="input_instance_profile_data"></a> [instance\_profile\_data](#input\_instance\_profile\_data) | (optional) IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. | <pre>object({<br>    name   = optional(string, null)<br>    create = optional(bool, false)<br>    policy_documents = optional(list(object({<br>      name   = string<br>      policy = string<br>    })), [])<br>    managed_policy_arns = optional(list(string), [])<br>  })</pre> | <pre>{<br>  "create": false,<br>  "managed_policy_arns": [],<br>  "name": null,<br>  "policy_documents": []<br>}</pre> | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type for EC2 instance | `string` | n/a | yes |
| <a name="input_load_balancer_create_timeout"></a> [load\_balancer\_create\_timeout](#input\_load\_balancer\_create\_timeout) | Timeout value when creating the ALB. | `string` | `"10m"` | no |
| <a name="input_load_balancer_data"></a> [load\_balancer\_data](#input\_load\_balancer\_data) | (optional) describe your variable | <pre>object({<br>    create                                      = bool<br>    name                                        = string<br>    internal                                    = optional(bool, false)<br>    load_balancer_type                          = optional(string, "application")<br>    subnets                                     = list(string)<br>    enable_deletion_protection                  = optional(bool, false)<br>    idle_timeout                                = optional(number, 60)<br>    enable_cross_zone_load_balancing            = optional(bool, false)<br>    enable_http2                                = optional(bool, true)<br>    enable_tls_version_and_cipher_suite_headers = optional(bool, false)<br>    enable_xff_client_port                      = optional(bool, false)<br>    preserve_host_header                        = optional(bool, true)<br>    enable_waf_fail_open                        = optional(bool, false)<br>    desync_mitigation_mode                      = optional(string, "defensive")<br>    xff_header_processing_mode                  = optional(string, "append")<br>    ip_address_type                             = optional(string, "ipv4")<br>    drop_invalid_header_fields                  = optional(bool, true)<br>  })</pre> | <pre>{<br>  "create": false,<br>  "name": null,<br>  "subnets": []<br>}</pre> | no |
| <a name="input_load_balancer_delete_timeout"></a> [load\_balancer\_delete\_timeout](#input\_load\_balancer\_delete\_timeout) | Timeout value when deleting the ALB. | `string` | `"10m"` | no |
| <a name="input_load_balancer_security_group_data"></a> [load\_balancer\_security\_group\_data](#input\_load\_balancer\_security\_group\_data) | (optional) Security Group data for Loadbalancer | <pre>object({<br>    create             = optional(bool, false)<br>    name               = optional(string, null)<br>    description        = optional(string, null)<br>    security_group_ids = optional(list(string))<br>    ingress_rules = optional(list(object({<br>      description      = optional(string, null)<br>      from_port        = string<br>      to_port          = string<br>      protocol         = string<br>      cidr_blocks      = list(string)<br>      security_groups  = optional(list(string), [])<br>      ipv6_cidr_blocks = optional(list(string), [])<br>    })))<br>    egress_rules = optional(list(object({<br>      description      = optional(string, null)<br>      from_port        = string<br>      to_port          = string<br>      protocol         = string<br>      cidr_blocks      = list(string)<br>      security_groups  = optional(list(string), [])<br>      ipv6_cidr_blocks = optional(list(string), [])<br>    })))<br>  })</pre> | <pre>{<br>  "create": true,<br>  "egress_rules": [<br>    {<br>      "cidr_blocks": [<br>        "0.0.0.0/0"<br>      ],<br>      "description": "Allow All outbound calls",<br>      "from_port": 0,<br>      "protocol": -1,<br>      "to_port": 0<br>    }<br>  ],<br>  "ingress_rules": [<br>    {<br>      "cidr_blocks": [<br>        "0.0.0.0/0"<br>      ],<br>      "description": "Allow http port",<br>      "from_port": 80,<br>      "protocol": "tcp",<br>      "to_port": 80<br>    },<br>    {<br>      "cidr_blocks": [<br>        "0.0.0.0/0"<br>      ],<br>      "description": "Allow https port",<br>      "from_port": 443,<br>      "protocol": "tcp",<br>      "to_port": 443<br>    }<br>  ]<br>}</pre> | no |
| <a name="input_load_balancer_update_timeout"></a> [load\_balancer\_update\_timeout](#input\_load\_balancer\_update\_timeout) | Timeout value when updating the ALB. | `string` | `"10m"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the instance | `string` | n/a | yes |
| <a name="input_private_ip"></a> [private\_ip](#input\_private\_ip) | (optional) Private IP for the instance | `string` | `null` | no |
| <a name="input_root_block_device_data"></a> [root\_block\_device\_data](#input\_root\_block\_device\_data) | The root\_block\_device block supports the following:<br><br>delete\_on\_termination - (Optional) Whether the volume should be destroyed on instance termination. Defaults to true.<br>encrypted - (Optional) Whether to enable volume encryption. Defaults to false. Must be configured to perform drift detection.<br>iops - (Optional) Amount of provisioned IOPS. Only valid for volume\_type of io1, io2 or gp3.<br>kms\_key\_id - (Optional) Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.<br>tags - (Optional) Map of tags to assign to the device.<br>throughput - (Optional) Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for volume\_type of gp3.<br>volume\_size - (Optional) Size of the volume in gibibytes (GiB).<br>volume\_type - (Optional) Type of volume. Valid values include standard, gp2, gp3, io1, io2, sc1, or st1. Defaults to the volume type that the AMI uses. | <pre>object({<br>    delete_on_termination = optional(bool, true)<br>    encrypted             = optional(bool, true)<br>    iops                  = optional(string, null)<br>    kms_key_id            = optional(string, null)<br>    throughput            = optional(number, null)<br>    volume_size           = string<br>    volume_type           = string<br>  })</pre> | n/a | yes |
| <a name="input_security_group_data"></a> [security\_group\_data](#input\_security\_group\_data) | (optional) Security Group data | <pre>object({<br>    create             = optional(bool, false)<br>    name               = optional(string, null)<br>    description        = optional(string, null)<br>    security_group_ids = optional(list(string))<br>    ingress_rules = optional(list(object({<br>      description      = optional(string, null)<br>      from_port        = string<br>      to_port          = string<br>      protocol         = string<br>      cidr_blocks      = list(string)<br>      security_groups  = optional(list(string), [])<br>      ipv6_cidr_blocks = optional(list(string), [])<br>    })))<br>    egress_rules = optional(list(object({<br>      description      = optional(string, null)<br>      from_port        = string<br>      to_port          = string<br>      protocol         = string<br>      cidr_blocks      = list(string)<br>      security_groups  = optional(list(string), [])<br>      ipv6_cidr_blocks = optional(list(string), [])<br>    })))<br>  })</pre> | n/a | yes |
| <a name="input_ssh_key_pair"></a> [ssh\_key\_pair](#input\_ssh\_key\_pair) | (optional) SSH Key Pair for EC2 instance | `string` | `null` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID on which EC2 instance has to be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) Tags for EC2 instance | `map(string)` | `{}` | no |
| <a name="input_target_groups"></a> [target\_groups](#input\_target\_groups) | Target Group details | <pre>map(object({<br>    port     = number<br>    protocol = string<br><br>    health_check = object({<br>      enabled             = optional(bool, true)<br>      healthy_threshold   = optional(number, 3)<br>      unhealthy_threshold = optional(number, 3)<br>      path                = optional(string, "/")<br>      timeout             = optional(number, 20)<br>      interval            = optional(number, 30)<br>      matcher             = optional(string, "200")<br>    })<br><br>    listeners = list(object({<br>      port            = string<br>      protocol        = string<br>      ssl_policy      = optional(string, "ELBSecurityPolicy-TLS13-1-2-2021-06")<br>      certificate_arn = optional(string, null)<br><br>      default_action = object({<br>        type = string // valid values : redirect,fixed-response,forward if forward , then target_group_arn = aws_lb_target_group.this.arn<br>        redirect = optional(object({<br>          port        = number<br>          protocol    = string<br>          status_code = string<br>        }), null)<br><br>        fixed_response = optional(object({<br>          content_type = string<br>          message_body = string<br>          status_code  = optional(string, "200")<br>        }), null)<br><br>    }) }))<br><br>    target = object({<br>      port = number<br>    })<br><br>  }))</pre> | `{}` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (optional) User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user\_data\_base64 instead. Updates to this field will trigger a stop/start of the EC2 instance by default. | `string` | `null` | no |
| <a name="input_user_data_base64"></a> [user\_data\_base64](#input\_user\_data\_base64) | (optional) Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption | `string` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID where resources will be deployed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Instance ID |
| <a name="output_id"></a> [id](#output\_id) | Instance ID |
| <a name="output_listener_arn"></a> [listener\_arn](#output\_listener\_arn) | Listener ARN |
| <a name="output_load_balancer_arn"></a> [load\_balancer\_arn](#output\_load\_balancer\_arn) | n/a |
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | Target Group ARN |
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
- SourceFuse
