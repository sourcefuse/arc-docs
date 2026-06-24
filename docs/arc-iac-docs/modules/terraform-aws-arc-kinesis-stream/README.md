![Module Banner](./static/banner.png)

# [terraform-aws-arc-kinesis-stream](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream)

> **Module:** `sourcefuse/arc-kinesis-stream/aws`

> **Registry:** [https://registry.terraform.io/modules/sourcefuse/arc-kinesis-stream/aws](https://registry.terraform.io/modules/sourcefuse/arc-kinesis-stream/aws)

> **Category:** Streaming / Data Ingestion

> **Source:** [https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream)

[![Latest Release](https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-kinesis-stream.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/releases/latest)
[![Last Updated](https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-kinesis-stream.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-kinesis-stream/commits)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-kinesis-stream&token=b4da1709f70e10c956ed98d2510423b22dde8564)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-kinesis-stream)

> [!TIP]
> 🤖 **New:** Use this module with AI assistants via the [ARC IaC MCP Server](https://github.com/sourcefuse/arc-iac-mcp) — search, scaffold, and security-scan ARC modules from natural language. [Quick setup ↓](#ai-assistant-integration-arc-iac-mcp)

## Overview

Creates Kinesis Data Streams with configurable shard count, enhanced fan-out consumers, and KMS encryption.

## What It Does

- Kinesis Data Stream with configurable shard count
- Enhanced fan-out consumers for parallel processing
- On-demand or provisioned capacity mode
- KMS encryption for data at rest
- CloudWatch metrics and alarms
- Retention period configuration

## Quickstart

```hcl
module "kinesis" {
  source         = "sourcefuse/arc-kinesis-stream/aws"
  version        = "0.0.1"
  name           = "${var.namespace}-${var.environment}-kinesis"
  shard_count    = var.shard_count
  consumer_count = var.consumer_count

  tags = module.tags.tags
}
```

## Required Inputs

| Name | Type | Description |
|------|------|-------------|
| `name` | `string` | Kinesis stream name |
| `shard_count` | `number` | Number of shards |
## Key Outputs

| Name | Description |
|------|-------------|
| `name` | Stream name |
| `arn` | Stream ARN |
| `stream_id` | Stream ID |
## Full Variable & Output Reference

The complete inputs/outputs reference is auto-generated below.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kinesis_stream.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream) | resource |
| [aws_kinesis_stream_consumer.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream_consumer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_consumer_count"></a> [consumer\_count](#input\_consumer\_count) | Number of consumers to register with Kinesis stream | `number` | `0` | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | The encryption type to use. Acceptable values are `NONE` and `KMS`. | `string` | `"KMS"` | no |
| <a name="input_enforce_consumer_deletion"></a> [enforce\_consumer\_deletion](#input\_enforce\_consumer\_deletion) | A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. | `bool` | `true` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The GUID for the customer-managed KMS key to use for encryption. | `string` | `"alias/aws/kinesis"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of kinesis-stream | `string` | n/a | yes |
| <a name="input_retention_period"></a> [retention\_period](#input\_retention\_period) | Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24. | `number` | `24` | no |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | The number of shards that the stream will use | `number` | `1` | no |
| <a name="input_shard_level_metrics"></a> [shard\_level\_metrics](#input\_shard\_level\_metrics) | A list of shard-level CloudWatch metrics which can be enabled for the stream. | `list(string)` | <pre>[<br>  "IncomingBytes",<br>  "OutgoingBytes"<br>]</pre> | no |
| <a name="input_stream_mode"></a> [stream\_mode](#input\_stream\_mode) | Specifies the capacity mode of the stream. Must be either `PROVISIONED` or `ON_DEMAND`. If `ON_DEMAND` is used, then `shard_count` is ignored. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for AWS elasticache redis | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_consumers"></a> [consumers](#output\_consumers) | List of consumers registered with Kinesis stream. |
| <a name="output_name"></a> [name](#output\_name) | Name of the Kinesis stream. |
| <a name="output_shard_count"></a> [shard\_count](#output\_shard\_count) | Number of shards provisioned. |
| <a name="output_stream_arn"></a> [stream\_arn](#output\_stream\_arn) | ARN of the Kinesis stream. |
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

## AI Assistant Integration (ARC IaC MCP)

The **[ARC IaC MCP Server](https://github.com/sourcefuse/arc-iac-mcp)** is a hosted Model Context Protocol service that lets AI assistants browse, search, scaffold, compare, and security-scan any of the SourceFuse ARC Terraform modules — directly from natural language.

**What you can do with it:**

- **Discover** — search and filter modules by keyword or AWS resource type.
- **Understand** — get inputs, outputs, and resources for any module without leaving your editor.
- **Scaffold** — generate production-ready, multi-file Terraform with cross-module wiring already done.
- **Secure** — scan generated or existing HCL for misconfigurations before it hits a PR.
- **Compare** — diff modules side-by-side to make informed architectural decisions.

### Setup (one minute)

The MCP endpoint is `https://arc-iac-mcp.sourcef.us/mcp`. Pick your client:

**Claude Code CLI:**
```bash
claude mcp add arc-iac --transport http https://arc-iac-mcp.sourcef.us/mcp
```

**Claude Desktop** — edit `~/Library/Application Support/Claude/claude_desktop_config.json`:
```json
{
  "mcpServers": {
    "arc-iac": {
      "url": "https://arc-iac-mcp.sourcef.us/mcp"
    }
  }
}
```

**Cursor / Windsurf / Kiro** — add the same block to `.cursor/mcp.json` (or the equivalent for your client).

### Example prompts to try

- *"List all ARC modules sorted by downloads"*
- *"What inputs does `arc-ecs` require?"*
- *"Scaffold a production-ready `arc-db` Aurora setup with Secrets Manager"*
- *"Compare `arc-eks` and `arc-ecs` for running 10 microservices"*
- *"Scan this Terraform before I raise a PR: `<paste HCL>`"*

See the [ARC IaC MCP repo](https://github.com/sourcefuse/arc-iac-mcp) for the full tool reference, troubleshooting tips, and local-development instructions.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for commit conventions and development setup.

## Authors

This project is authored by:
- SourceFuse
