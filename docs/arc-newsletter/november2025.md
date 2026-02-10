# November 2025

### ARC IaC – Infrastructure Automation at Your Fingertips

1. **Cognito pool - Standardize creation and management**

The ARC Cognito User Pool module provides a standardized Terraform module to create and manage Amazon Cognito User Pools and associated resources.

**Key Features**

- Create and configure user pools with all available settings and also role based access control.
- Built-in security configurations following AWS recommendations.
- Support for multiple app clients with different configurations.
- Support for SAML, OIDC, and social identity providers along with MFA and adaptive authentication and log streaming.
- Support for Lambda triggers and custom domains with SSL certificates.

[Explore ARC Cognito User Pool Module](https://github.com/sourcefuse/terraform-aws-arc-cognito-userpool)

2. **SNS Module - Manage Topics and Subscriptions**

A reusable SNS module to create and manage the Amazon Simple Notification Service topics and subscriptions.

**Key Features**

- Create standard or FIFO topics, with encryption (KMS), tags, delivery/tracing configs.
- Easily add subscriptions (Lambda, SQS, HTTP, etc.) with options like filter policies, raw delivery, and retry/delivery policies.
- Automatically grant SNS permission to invoke Lambdas.

[Explore ARC SNS Module](https://github.com/sourcefuse/terraform-aws-arc-sns)

3. **ARC ECR Module — Secure, Scalable, and Simplified**

The ARC ECR module automates and simplifies the creation and management of Amazon ECR repositories. With built-in configurations for encryption, image scanning, lifecycle policies, and replication, it ensures secure and consistent setup across environments.

**Key Features**

- Automated repository creation with encryption and scanning enabled.
- Centralized management of registry policies and lifecycle configurations.
- Support for replication and pull-through cache rules across multiple regions.
- Customizable repository policies and reusable creation templates.
- Prebuilt examples for rapid integration and deployment.

[Discover more](https://github.com/sourcefuse/terraform-aws-arc-ecr)

4. **ARC SQS Module — Reliable, Secure, and Flexible Queue Management**

The ARC SQS module streamlines the setup and management of Amazon SQS queues by offering built-in support for Standard and FIFO queues, Dead Letter Queues (DLQs), encryption options, and advanced message configurations. It helps developers easily build reliable, secure, and scalable messaging architectures.

**Key Features**

- Supports both Standard and FIFO queues with full configuration flexibility.
- Automatically provisions DLQs with retry policy options for improved fault tolerance.
- Choose between SQS-managed SSE or customer-managed KMS encryption with automatic key rotation.
- Fine-grained control over message retention, visibility timeouts, delivery delays, and long polling.

[Learn More](https://github.com/sourcefuse/terraform-aws-arc-sqs)

### ARC SaaS - SaaS Factory Model for Control Plane

1. **Decoupling EventBridge - Unified Event Handling for SaaS Microservices**: ARC SaaS microservices now uses [loopback4-message-bus-connector](https://www.npmjs.com/package/loopback4-message-bus-connector) enabling seamless way to publish and consume provisioning and deprovisioning events. It decouples event producers and consumers, enabling flexible, scalable, and extensible event-driven architectures. The module currently supports SQS, BullMQ, and EventBridge, with future integrations planned.

**Key Features**

- Simplifies interaction between microservices using standardized provisioning/deprovisioning events.
- Works with SQS, BullMQ, and EventBridge out of the box.
- Enables end users to choose their preferred message queue or broker.
- Built with extensibility in mind to support additional event brokers in upcoming releases.

[Discover ARC SaaS](https://sourcefuse.github.io/arc-docs/arc-saas-docs/)
