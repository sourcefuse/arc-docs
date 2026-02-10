# December 2025

### ARC API – Plug and Play to speed Development

1. **Improved Visualization Logic and Streamlined Chat Initialization**
   Pleased to introduce new refinements to both the visualization framework and chat session initialization process of our [loopback4-llm-chat-extension](https://www.npmjs.com/package/lb4-llm-chat-component)

**Key Improvements**

- **Visualization Context Improvements**
  - The description in GetVisualizationContextTool has been updated to clearly state that all generated queries must strictly adhere to the structure returned by the tool.
  - The LineVisualizer now requires exactly three columns—an X-axis column, a Y-axis column, and a Type column.

- **Enhanced Chat Session Initialization**
  - A new option allows developers to provide additional system-level context when a chat session begins, helping create more tailored and informed conversations.

  ## ARC IaC – Infrastructure Automation at Your Fingertips

1. **DynamoDB - Fully Managed, Scalable**

This module designed to simplify the provisioning and management of DynamoDB tables. The module now offers even greater flexibility and automation, allowing teams to deploy highly scalable, resilient, and fully managed data layers with minimal effort.

**Key Features**

- Flexible capacity options (provisioned or pay-per-request) with automatic scaling for tables and indexes.
- Create and manage Global Secondary Indexes (GSI) and Local Secondary Indexes (LSI) with ease.
- Enabling multi-region replication and capture real-time replication for better performance also configuring TTL to optimise storage.
- CloudWatch metrics and contributor insights are enabled for deep operational visibility.

[Explore DynamoDB](https://github.com/sourcefuse/terraform-aws-arc-dynamodb)

2.  **Network Firewall Module**

A robust ARC module designed to deploy highly available AWS Network Firewalls with integrated security, flexible deployment options, and simplified management for modern cloud environments.

**Key Features**

- Flexible deployment using VPC or Transit Gateway, with built-in multi-AZ support for high availability.
- Comprehensive rule management including stateful/stateless rules, policy handling, and support for both custom and AWS-managed rule groups.
- Enhanced security and visibility through encryption, best-practice configurations, and centralized logging to CloudWatch and S3.
- Includes ready-to-use examples to support a variety of common network security use cases.

[Learn More](https://github.com/sourcefuse/terraform-aws-arc-network-firewall)
