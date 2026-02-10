# February 2026

### ARC API – Plug and Play to speed Development

1. **MCP Tool - Register methods to an MCP**

A new LoopBack extension that enables developers to expose their APIs and services as MCP Tools, allowing MCP clients to seamlessly discover and execute server-defined operations. It offers a true plug-and-play integration between LoopBack 4 applications and the Model Context Protocol (MCP).

**Key Features**

**Automatic MCP Tool Discovery**- Automatically scans the application at boot time and registers all methods decorated with @mcpTool(), eliminating manual metadata wiring.

**Lifecycle-Managed Tool Registry**- A dedicated McpToolRegistry service manages discovered tools, their handlers, and execution context in a clean, structured way.

[Explore the package](https://www.npmjs.com/package/loopback4-mcp)

### ARC IaC – Infrastructure Automation at Your Fingertips

1. **FSx Module – File Storage Made Easy**

The ARC Terraform FSx module simplifies provisioning and managing Amazon FSx across all supported file system types. It comes with built-in Active Directory integration, enterprise-grade storage capabilities, and ready-to-use examples for both Windows and Linux workloads.

**Key Features**

**Supports all FSx types**

- Windows File Server
- Lustre (Scratch & Persistent, S3-linked)
- ONTAP
- OpenZFS
- FSx File Cache

**Active Directory Integration**

- AWS Managed Microsoft AD
- Self-managed Active Directory

**Enterprise Storage Capabilities**

- ONTAP SVMs and volumes
- OpenZFS volumes, quotas, and snapshots
- Lustre Data Repository Associations

[Follow to Learn More](https://github.com/sourcefuse/terraform-aws-arc-ecr)

2. **IAM Identity Center Module – Centralized Access at Scale**

The ARC IAM Identity Center module simplifies centralized management of AWS IAM Identity Center, enabling scalable permission set management, secure account assignments, identity store automation, and advanced access controls—with production-ready examples.

**Key Features**

**Permission Set Management** - Supports AWS-managed, customer-managed, and inline policies.

**Permission Boundaries** - Attach AWS-managed or customer-managed permission boundaries for enhanced security.

**Account Assignments**- Flexible user and group assignments across AWS accounts or Organizational Units (OUs).

[Checkout the Repository](https://github.com/sourcefuse/terraform-aws-arc-sqs)
