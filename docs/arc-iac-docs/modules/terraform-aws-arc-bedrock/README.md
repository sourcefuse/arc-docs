![Module Structure](./static/banner.png)
# [terraform-aws-arc-bedrock](https://github.com/sourcefuse/terraform-aws-arc-bedrock)

<a href="https://github.com/sourcefuse/terraform-aws-arc-bedrock/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-bedrock.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-bedrock/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-bedrock.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-bedrock&token=78b70860ffc10be72040ab50f0bdff0bd1626708)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-bedrock)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-bedrock/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-bedrock/actions/workflows/snyk.yaml)

## Overview  
This Terraform module provides an automated way to deploy and manage **AWS Bedrock Agents**, **Collaborators**, **Action Groups**, and associated **IAM Roles**. The module is designed to be flexible, reusable, and configurable to suit various use cases.  

## Features  
- **Bedrock Agent Creation**: Deploys an AWS Bedrock agent with configurable settings.  
- **Collaborator Management**: Supports multiple collaborators with required IAM permissions.  
- **Action Groups**: Enables defining multiple action groups for executing Lambda-based functions.  
- **IAM Role Management**: Automatically provisions IAM roles with necessary policies for Bedrock resources.  

## Module Components  

### 1. Bedrock Agent  
- Configurable name, foundation model, and instruction set.  
- Supports enabling/disabling agent collaboration.  
- Customizable session timeout settings.  

### 2. Collaborators  
- Allows defining multiple collaborators with their own permissions.  
- IAM roles and policies created dynamically.  

### 3. Action Groups  
- Enables defining multiple action groups.  
- Supports dynamic function schemas for action execution.  
- Integrates AWS Lambda functions.  

### 4. IAM Roles & Policies  
- Automatically provisions IAM roles for agents and collaborators.  
- Grants necessary permissions for Bedrock services.  

## Usage  

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Getting Started

1. **Define the Module**

Initially, it's essential to define a Terraform module, which is organized as a distinct directory encompassing Terraform configuration files. Within this module directory, input variables and output values must be defined in the variables.tf and outputs.tf files, respectively. The following illustrates an example directory structure:


```plaintext
bedrock-agent/
|-- main.tf
|-- variables.tf
|-- outputs.tf
|-- locals.tf
```


2. **Define Input Variables**

Inside the `variables.tf` or in `*.tfvars` file, you should define values for the variables that the module requires.

3. **Use the Module in Your Main Configuration**
In your main Terraform configuration file (e.g., main.tf), you can use the module. Specify the source of the module, and version, For Example

```hcl
module "bedrock_agents" {
  source = "sourcefuse/arc-bedrock/aws"
  version = "0.0.1"

  bedrock_agent_config = {
    create              = true
    name                = "arc-bedrock-agent"
    foundation_model    = "anthropic.claude-3-5-sonnet-20241022-v2:0"
    instruction         = "You are a customer support assistant. Answer user queries."
    agent_collaboration = "SUPERVISOR"
    prepare_agent       = false
    description         = "Supervisor agent"
  }
  agent_collaborator = {
    name                        = "collab-1"
    collaborator_name           = "Collaborator-One"
    foundation_model            = "anthropic.claude-3-5-sonnet-20241022-v2:0"
    instruction                 = "do what the supervisor is asking you to do"
    collaboration_instruction   = "tell the other agent on what to do"
    alias_name                  = "DocProcessor"
    description                 = "Collaborator 1"
    relay_conversation_history  = "TO_COLLABORATOR"
    prepare_agent               = true
    idle_session_ttl_in_seconds = 600
    action_groups               = local.action_groups
  }

  tags = module.tags.tags
}
```

4. **Output Values**

Inside the `outputs.tf` file of the module, you can define output values that can be referenced in the main configuration. For example:

```hcl
output "agent_arn" {
  value       = module.bedrock_agent.agent_arn
  description = "Agent arn"
}

output "agent_id" {
  value       = module.bedrock_agent.agent_id
  description = "Agent ID"
}

output "collaborator_agent_id" {
  description = "Agent ID created for collaborators."
  value       = module.bedrock_agent.collaborator_agent_id
}

output "agent_role_arn" {
  value       = module.bedrock_agent.agent_role_arn
  description = "Agent Role arn"
}

```

5. **.tfvars**

Inside the `.tfvars` file of the module, you can provide desired values that can be referenced in the main configuration. For example:

Edit the [locals.tf](./examples/bedrock_agent/locals.tf) file and provide desired values.  

`collaborators` -  List of Collaborator Agents

`action_groups` - Action groups for Collaborator Agents

```hcl
locals {

  collaborators = [
    {
      name                        = "collab-2"
      supervisor_agent_id         = module.bedrock_agent.agent_id
      collaborator_name           = "Collaborator-Two"
      foundation_model            = "anthropic.claude-3-5-sonnet-20241022-v2:0"
      instruction                 = "do what the supervisor is asking you to do"
      collaboration_instruction   = "tell the other agent on what to do"
      alias_name                  = "TechSupport"
      description                 = "Collaborator 2"
      relay_conversation_history  = "TO_COLLABORATOR"
      prepare_agent               = true
      idle_session_ttl_in_seconds = 600
      action_groups               = local.action_groups
    },
    {
      name                        = "collab-3"
      supervisor_agent_id         = module.bedrock_agent.agent_id
      collaborator_name           = "Collaborator-Three"
      foundation_model            = "anthropic.claude-3-5-sonnet-20241022-v2:0"
      instruction                 = "do what the supervisor is asking you to do"
      collaboration_instruction   = "tell the other agent on what to do"
      alias_name                  = "TechSupport"
      description                 = "Collaborator 3"
      relay_conversation_history  = "TO_COLLABORATOR"
      prepare_agent               = true
      idle_session_ttl_in_seconds = 600
      action_groups               = local.action_groups
    }
  ]

  action_groups = [{
    name                       = "singlerulegenerationagent-actiongroup"
    state                      = "ENABLED"
    agent_version              = "DRAFT"
    skip_resource_in_use_check = true
    action_group_executor      = { lambda = "arn:aws:lambda:us-east-1:884360309640:function:arc-debug-budgets-default" }

    function_schema = [
      {
        functions = [
          {
            name        = "extract_general_props"
            description = "Extracts general info properties based on the user prompt."
            parameters = [
              {
                map_block_key = "prompt"
                type          = "string"
                description   = "The user instruction/prompt to create or edit the rule."
                required      = true
              },
              {
                map_block_key = "rule_context"
                type          = "string"
                description   = "The existing rule to be updated, if provided."
                required      = false
              }
            ]
          },
          {
            name        = "extract_static_props"
            description = "Extracts static properties based on the user prompt."
            parameters = [
              {
                map_block_key = "prompt"
                type          = "string"
                description   = "The user instruction/prompt to create or edit the rule."
                required      = true
              },
              {
                map_block_key = "rule_context"
                type          = "string"
                description   = "The existing rule to be updated, if provided."
                required      = false
              }
            ]
          }
        ]
      }
    ]
  }]

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
terraform apply -var-file prod.tfvars  -parallelism=1
```

## Cleanup  
Destroy Terraform
```shell
terraform destroy -var-file dev.tfvars -parallelism=1
```

## Module Usage

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-bedrock/blob/main/example/main.tf) file in the example folder.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 6.0 |
| <a name="requirement_opensearch"></a> [opensearch](#requirement\_opensearch) | 2.3.1 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.89.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_collaborators"></a> [collaborators](#module\_collaborators) | ./modules/collaborator | n/a |
| <a name="module_knowledge_base"></a> [knowledge\_base](#module\_knowledge\_base) | ./modules/knowledge-base | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_bedrockagent_agent.collaborator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/bedrockagent_agent) | resource |
| [aws_bedrockagent_agent.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/bedrockagent_agent) | resource |
| [aws_bedrockagent_agent_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/bedrockagent_agent_alias) | resource |
| [aws_iam_role.collaborator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.collaborator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.agent_permissions](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.agent_trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.collaborator_agent_permissions](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_collaborator"></a> [agent\_collaborator](#input\_agent\_collaborator) | Configuration object for a collaborator, including name, instructions, and settings. | <pre>object({<br>    name                        = string<br>    supervisor_agent_id         = optional(string, null)<br>    collaborator_name           = optional(string, null)<br>    instruction                 = string<br>    collaboration_instruction   = string<br>    alias_name                  = string<br>    foundation_model            = string<br>    description                 = optional(string, "")<br>    relay_conversation_history  = optional(string, "TO_COLLABORATOR")<br>    prepare_agent               = optional(bool, true)<br>    idle_session_ttl_in_seconds = optional(number, 500)<br><br>    action_groups = optional(list(object({<br>      name                       = string<br>      state                      = string<br>      agent_version              = string<br>      skip_resource_in_use_check = optional(bool, true)<br>      action_group_executor = object(<br>        {<br>          lambda = optional(object({<br>            name           = string<br>            add_permission = optional(bool, true)<br>          }))<br>          custom_control = optional(string, null)<br>      })<br>      function_schema = list(object({<br>        functions = list(object({<br>          name        = string<br>          description = string<br>          parameters = list(object({<br>            map_block_key = string<br>            type          = string<br>            description   = string<br>            required      = bool<br>          }))<br>        }))<br>      }))<br><br>    })), [])<br>  })</pre> | `null` | no |
| <a name="input_bedrock_agent_config"></a> [bedrock\_agent\_config](#input\_bedrock\_agent\_config) | Configuration for the Amazon Bedrock Agent, including name, session TTL, foundation model, tags, instructions, collaboration settings, and preparation options. | <pre>object({<br>    create                      = optional(bool, false)<br>    name                        = optional(string, null)<br>    alias_name                  = optional(string, null)<br>    alias_description           = optional(string, null)<br>    idle_session_ttl_in_seconds = optional(number, 500)<br>    foundation_model            = optional(string, null)<br>    instruction                 = optional(string, null)<br>    agent_collaboration         = optional(string, "DISABLED")<br>    description                 = optional(string, null)<br>    prepare_agent               = optional(bool, true)<br>    role_arn                    = optional(string, null)<br>  })</pre> | <pre>{<br>  "create": false<br>}</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment, i.e. dev, stage, prod | `string` | n/a | yes |
| <a name="input_knowledge_base_config"></a> [knowledge\_base\_config](#input\_knowledge\_base\_config) | Configuration for AWS Bedrock Agent Knowledge Base, including vector storage, embedding model, and OpenSearch integration. | <pre>object({<br>    create               = optional(bool, false)<br>    name                 = string<br>    role_arn             = optional(string, null)<br>    agent_role_name      = optional(string, null)<br>    foundation_model_arn = string<br>    description          = optional(string, null)<br>    agent_id             = optional(string, null)<br>    instruction          = string<br>    data_source_list = list(object({<br>      type = optional(string, "S3")<br>      s3_config = optional(object({<br>        create             = optional(bool, false)<br>        name               = string<br>        inclusion_prefixes = optional(list(string), [])<br>      }))<br>    }))<br>    data_storage_list = optional(list(object({<br>      type = optional(string, "S3")<br>      s3_config = optional(object({<br>        create = optional(bool, false)<br>        prefix = optional(string, "")<br>        name   = string<br>      }))<br>    })), [])<br>    embedding_model_configuration = object({<br>      dimensions          = optional(number, 1024)<br>      embedding_data_type = string<br>    })<br>    storage_configuration = object({<br>      type = optional(string, "OPENSEARCH_SERVERLESS")<br>      opensearch_serverless_configuration = object({<br>        create                      = optional(bool, false)<br>        name                        = optional(string, null)<br>        collection_arn              = optional(string, null)<br>        access_policy_rules         = optional(list(any), [])<br>        data_lifecycle_policy_rules = optional(list(any), [])<br>        index_config = object({<br>          number_of_shards               = optional(string, "2")<br>          number_of_replicas             = optional(string, "0")<br>          index_knn                      = optional(bool, true)<br>          index_knn_algo_param_ef_search = optional(string, "512")<br>          mappings                       = optional(string, null)<br>        })<br>        vector_index_name = string<br>        field_mapping = object({<br>          vector_field   = string<br>          text_field     = string<br>          metadata_field = string<br>        })<br>      })<br>    })<br>  })</pre> | <pre>{<br>  "create": false,<br>  "data_source_list": [],<br>  "data_storage_list": [],<br>  "embedding_model_configuration": null,<br>  "foundation_model_arn": null,<br>  "instruction": null,<br>  "name": null,<br>  "storage_configuration": null<br>}</pre> | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the project, i.e. arc | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for Bedrock resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_agent_arn"></a> [agent\_arn](#output\_agent\_arn) | Agent arn |
| <a name="output_agent_id"></a> [agent\_id](#output\_agent\_id) | Agent ID |
| <a name="output_agent_role_arn"></a> [agent\_role\_arn](#output\_agent\_role\_arn) | Agent Role arn |
| <a name="output_alias_arn"></a> [alias\_arn](#output\_alias\_arn) | ARN of the alias |
| <a name="output_alias_id"></a> [alias\_id](#output\_alias\_id) | Unique identifier of the alias. |
| <a name="output_collaborator_agent_id"></a> [collaborator\_agent\_id](#output\_collaborator\_agent\_id) | Agent ID created for collaborators. |
| <a name="output_collaborator_role_arns"></a> [collaborator\_role\_arns](#output\_collaborator\_role\_arns) | ARNs of the IAM roles created for collaborators. |
| <a name="output_opensearch_collection_endpoint"></a> [opensearch\_collection\_endpoint](#output\_opensearch\_collection\_endpoint) | Opensearch Collection endpoint |
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
### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests

- Tests are available in `test` directory
- Configure the dependencies

```sh
cd test
go mod init github.com/sourcefuse/terraform-aws-arc-bedrock
go get github.com/gruntwork-io/terratest/modules/terraform
```

- Now execute the test

```sh
cd test/
go test
```

## Authors

This project is authored by:

- SourceFuse ARC Team
