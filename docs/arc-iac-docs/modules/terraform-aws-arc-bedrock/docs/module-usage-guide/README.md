# Terraform AWS ARC Bedrock Module Usage Guide

## Introduction

### Purpose of the Document

This document provides guidelines and instructions for users looking to implement Terraform module for Bedrock agents

### Module Overview

The [terraform-aws-arc-bedrock](https://github.com/sourcefuse/terraform-aws-arc-bedrock) module provides a reusable and scalable way to deploy AWS Bedrock Agents along with their associated components, including collaborators, action groups, and IAM roles. It allows users to define agents with configurable foundation models, instructions, and collaboration settings.

### Prerequisites

Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of AWS Bedrock Agent

## Getting Started

### Module Source

To use the module in your Terraform configuration, include the following source block:

```hcl
module "bedrock_agent" {
  source = "sourcefuse/arc-bedrock/aws"
  version = "0.0.1"
  # insert the required variables here
}
```

### Integration with Existing Terraform Configurations

Integrate the module with your existing Terraform mono repo configuration, follow the steps below:

1. Create a new folder in `terraform/` named `bedrock`.
2. Create the required files, see the [examples](https://github.com/sourcefuse/terraform-aws-arc-bedrock/tree/main/examples/bedrock_agent) to base off of.
3. Configure with your backend
  - Create the environment backend configuration file: `config.<environment>.hcl`
    - **region**: Where the backend resides
    - **key**: `<working_directory>/terraform.tfstate`
    - **bucket**: Bucket name where the terraform state will reside
    - **dynamodb_table**: Lock table so there are not duplicate tfplans in the mix
    - **encrypt**: Encrypt all traffic to and from the backend

### Required AWS Permissions

Ensure that the AWS credentials used to execute Terraform have the necessary permissions to create Bedrock Agent

## Module Configuration

### Input Variables

For a list of input variables, see the README [Inputs](https://github.com/sourcefuse/terraform-aws-arc-bedrock?tab=readme-ov-file#inputs) section.

### Output Values

For a list of outputs, see the README [Outputs](https://github.com/sourcefuse/terraform-aws-arc-bedrock?tab=readme-ov-file#outputs) section.

## Module Usage

### Bedrock Agents

For usage, see the [example](https://github.com/sourcefuse/terraform-aws-arc-bedrock/tree/main/examples/bedrock-agent) folder.

This example will create:

- **Bedrock Agent**: Creates and configures AWS Bedrock Agents with foundation models, collaboration settings, and execution policies.
- **Agent Collaborators**: Defines collaborators with specific roles and permissions to interact with the Bedrock Agent.
- **Action Groups**: Configures action groups with execution logic, enabling custom behaviors via AWS Lambda functions.
- **IAM Roles & Policies**: Creates IAM roles and policies required for agents, collaborators, and action groups to interact securely.
- **Agent Aliases**: Manages agent versions and aliases for controlled deployment and rollback strategies.

### Tips and Recommendations

- Currently, there is an issue when multiple collaborators are created simultaneously. To resolve this, use the `-parallelism=1` flag:
```hcl
terraform apply -parallelism=1
```

Other Option is to use individual module block for each colloborator agents

**Error** :
```
Prepare operation can't be performed on Agent when it is
│ in Preparing state. Retry the request when the agent is in a valid state.
```

## Troubleshooting

### Reporting Issues

If you encounter a bug or issue, please report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-bedrock/issues).

## Security Considerations

Understand the security considerations related to Bedrock Agents

## Contributing and Community Support

### Contributing Guidelines

Contribute to the module by following the guidelines outlined in the [CONTRIBUTING.md](https://github.com/sourcefuse/terraform-aws-arc-bedrock/blob/main/CONTRIBUTING.md) file.

### Reporting Bugs and Issues

If you find a bug or issue, report it on the [GitHub repository](https://github.com/sourcefuse/terraform-aws-arc-bedrock/issues).

## License

### License Information

This module is licensed under the Apache 2.0 license. Refer to the [LICENSE](https://github.com/sourcefuse/terraform-aws-arc-bedrock/blob/main/LICENSE) file for more details.

### Open Source Contribution

Contribute to open source by using and enhancing this module. Your contributions are welcome!
