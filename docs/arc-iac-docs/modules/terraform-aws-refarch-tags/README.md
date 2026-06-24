![Module Banner](./static/banner.png)

# [terraform-aws-arc-tags](https://github.com/sourcefuse/terraform-aws-arc-tags)

> **Module:** `sourcefuse/arc-tags/aws`

> **Registry:** [https://registry.terraform.io/modules/sourcefuse/arc-tags/aws](https://registry.terraform.io/modules/sourcefuse/arc-tags/aws)

> **Category:** Utility / Tagging

> **Source:** [https://github.com/sourcefuse/terraform-aws-arc-tags](https://github.com/sourcefuse/terraform-aws-arc-tags)

[![Latest Release](https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-tags.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-tags/releases/latest)
[![Last Updated](https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-tags.svg?style=for-the-badge)](https://github.com/sourcefuse/terraform-aws-arc-tags/commits)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-tags)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-tags)

> [!TIP]
> 🤖 **New:** Use this module with AI assistants via the [ARC IaC MCP Server](https://github.com/sourcefuse/arc-iac-mcp) — search, scaffold, and security-scan ARC modules from natural language. [Quick setup ↓](#ai-assistant-integration-arc-iac-mcp)

## Overview

Generates a standardized map of AWS resource tags from environment, project, and extra tag inputs for consistent tagging across all ARC modules.

## What It Does

- Standardized tag map output
- Environment and project required tags
- Extra tags for custom key-value pairs
- Zero AWS resources created — output only
- Used as a dependency by all other ARC modules

## Quickstart

```hcl
module "terraform-aws-arc-tags" {
  source      = "sourcefuse/arc-tags/aws"
  # version     = "x.x.x"  # we recommend pinning to a specific version
  environment = "dev"
  project     = "Example"

  extra_tags = {
    RepoName = "terraform-aws-arc-ecs"
    Example  = "true"
  }
}
```

## Required Inputs

| Name | Type | Description |
|------|------|-------------|
| `environment` | `string` | Deployment environment tag value |
| `project` | `string` | Project name tag value |
## Key Outputs

| Name | Description |
|------|-------------|
| `tags` | Map of standardized tags to apply to resources |
## Full Variable & Output Reference

The complete inputs/outputs reference is auto-generated below.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The environment the resource will be created in. | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Additional tags to add to your resources. | `map(string)` | `{}` | no |
| <a name="input_project"></a> [project](#input\_project) | The name of the project being worked on. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_extra_tags"></a> [extra\_tags](#output\_extra\_tags) | n/a |
| <a name="output_tags"></a> [tags](#output\_tags) | n/a |
<!-- END_TF_DOCS -->

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```

By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly


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
- SourceFuse ARC Team
