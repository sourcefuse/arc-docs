# December 2024

#### ARC IaC

1. **Enhancements**: Our Terraform modules for [ECS](https://github.com/sourcefuse/terraform-aws-arc-ecs), [OpenSearch](https://github.com/sourcefuse/terraform-aws-arc-opensearch), and [Client VPN](https://github.com/sourcefuse/terraform-aws-arc-vpn) have been refactored to remove dependencies on external modules, creating more streamlined and independent setups. The updated ECS module will support both Fargate and EC2 launch types. OpenSearch will introduce a serverless deployment option for scalable, cost-effective management, and the Client VPN module will provide secure remote access with fully customizable configurations.

2. **AWS MQ Module**: MQ Module automates the configuration and management of AWS MQ brokers with RabbitMQ, enabling seamless messaging operations. It will ensure high availability and scalability, supporting the demands of enterprise-grade applications.

#### ARC SaaS

1. **Stripe Integration**: The billing module now provides Stripe as an additional payment processing option, complementing the existing Chargebee integration. This hybrid architecture will provide users the flexibility to select their preferred payment tool, while leveraging Stripe's advanced payment handling and fraud detection capabilities, along with Chargebee's proven subscription management functionality.

#### ARC API

1. **JWKS Implementation**: We recently introduced JSON Web Key Sets (JWKS) in our [authentication service](https://www.npmjs.com/package/@sourceloop/authentication-service) to streamline key management and enhance security. The system now supports generating new keys and rotating old ones seamlessly, ensuring minimal disruption. This eliminates the need for system-wide updates during key rotation, providing a more efficient and secure approach.
