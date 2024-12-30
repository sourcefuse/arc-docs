Explore our recent updates, designed to streamline your workflows, boost productivity, and deliver greater flexibility. Whether you're scaling operations or enhancing security, ARC's newest offerings will empower you to stay ahead in a dynamic business landscape.

No more waiting, let's get to the good stuff!

## December Release

#### ARC IaC

1. **Enhancements**: Our Terraform modules for [ECS](https://github.com/sourcefuse/terraform-aws-arc-ecs), [OpenSearch](https://github.com/sourcefuse/terraform-aws-arc-opensearch), and [Client VPN](https://github.com/sourcefuse/terraform-aws-arc-vpn) have been refactored to remove dependencies on external modules, creating more streamlined and independent setups. The updated ECS module will support both Fargate and EC2 launch types. OpenSearch will introduce a serverless deployment option for scalable, cost-effective management, and the Client VPN module will provide secure remote access with fully customizable configurations.

2. **AWS MQ Module**: MQ Module automates the configuration and management of AWS MQ brokers with RabbitMQ, enabling seamless messaging operations. It will ensure high availability and scalability, supporting the demands of enterprise-grade applications.

#### ARC SaaS

1. **Stripe Integration**: The billing module now provides Stripe as an additional payment processing option, complementing the existing Chargebee integration. This hybrid architecture will provide users the flexibility to select their preferred payment tool, while leveraging Stripe's advanced payment handling and fraud detection capabilities, along with Chargebee's proven subscription management functionality.

#### ARC API

1. **JWKS Implementation**: We recently introduced JSON Web Key Sets (JWKS) in our [authentication service](https://www.npmjs.com/package/@sourceloop/authentication-service) to streamline key management and enhance security. The system now supports generating new keys and rotating old ones seamlessly, ensuring minimal disruption. This eliminates the need for system-wide updates during key rotation, providing a more efficient and secure approach.

## November Release

#### ARC IaC

1. **Enhanced Networking Module**: Our [networking module](https://github.com/sourcefuse/terraform-aws-arc-network) streamlines the creation and management of AWS VPCs, subnets, and key networking components to ensure secure and scalable cloud infrastructure. It supports custom configurations for public and private subnets, NAT gateways, routing tables, and network ACLs, offering flexible options for NAT gateway count and other essential settings.

2. **Secured DB Module**: Our robust database terraform module simplifies RDS instance, cluster, and proxy deployments with a focus on high availability, performance, and security. Supporting multiple database types, it enables seamless RDS Proxy integration for efficient connection management and enhanced scalability. Advanced security features include AWS KMS encryption, VPC security group configurations, and subnet groups for secure networking. Follow the [link](https://github.com/sourcefuse/terraform-aws-arc-db) to explore further.

3. **Optimised DMS**: The [DMS module](https://github.com/sourcefuse/terraform-aws-arc-dms) streamlines database migrations with AWS Database Migration Service (DMS), offering customizable replication tasks and secure data transfers between databases. It provisions and manages DMS replication instances, including multi-AZ deployments for high availability, and allows for tailored migration tasks such as full load, ongoing replication, and real-time change data capture (CDC) for comprehensive migration control.

#### ARC SaaS

1. **Keycloak Integration**: We now support tenant onboarding across multiple Identity Providers (IdPs), including Keycloak, Auth0, and Cognito, with recent enhancements to include Keycloak. Using Keycloak realms, we maintain isolation for different tenant tiers: silo tenants are assigned individual realms, while pooled tenants share a realm but each has a unique client for their management.

## October Release

#### ARC SaaS

1. **Support for Multiple IDP**: We have integrated Auth0 as an identity provider for our SaaS application planes, alongside our existing Cognito support. We are using auth0 organizations to maintain isolation for different tiers. Silo tenants will have their separate organization where as pooled tenants will be a part of the same organization. The first user for each tenant will be saved to Auth0, and also update the authentication service database accordingly to ensure seamless integration and user management. While creating plans admin can choose the IdP associated with that particular plan.

<img width="1069" alt="image" src="https://github.com/user-attachments/assets/9db3216d-7d6c-466f-9d3d-93046e6e2dfa">

2. **MarketPlace Support**: Our ARC SaaS product is now live on AWS Marketplace, empowering a broad audience to efficiently manage multi-tenant applications with ease. Offering seamless scalability, streamlined user management, and flexible integrations, it's the perfect solution for businesses looking to simplify their cloud operations.

#### ARC IaC

1. **Site to Stite VPN**: We’ve expanded the capabilities of the terraform-aws-arc-vpn module to now support Site-to-Site VPN, alongside AWS Client VPN. This enhancement simplifies secure network management by enabling both remote client access and encrypted connections between on-premises networks and AWS VPCs, all within a unified Terraform module.

#### ARC API

1. **Auth0 Idp**: Our ARC module will soon include support for Auth0 authentication, allowing you to seamlessly integrate Auth0 as an identity provider for your web application. This ehnacement will simplify your authentication and authorization flow.

## September Release

#### ARC SaaS

1. **Billing Component**: We have developed a flexible billing module tailored for SaaS providers, enabling seamless integration with a wide range of third-party billing tools. This solution enhances efficiency in managing billing processes and ensures compatibility with industry-leading platforms like [Chargebee](https://apidocs.chargebee.com/docs/api/). This solution streamlines billing operations by offloading all billing-related tasks to these platforms, freeing up your resources and enhancing overall efficiency.

2. **Customizable licensing Plan and Feature Toggling**: We now empower SaaS providers to customize their subscription plans with flexible licensing options and configurable features for each plan. Additionally, they can easily manage and adjust the size of resources to suit their needs, ensuring optimal performance and scalability. This empowers providers to quickly toggle features for tenants based on selected plans, ensuring they can tailor offerings to meet diverse customer needs efficiently.

<img width="1074" alt="image" src="https://github.com/user-attachments/assets/70707787-9c42-486c-a1f9-727686b80e95">

<img width="980" alt="image" src="https://github.com/user-attachments/assets/5d13f3d1-78cb-4e45-b21c-4de33ac396b3">

#### ARC IaC

1. **Transit Gateway**: A reusable Terraform configuration designed to streamline the creation and management of AWS Transit Gateways, enabling seamless connectivity between multiple Virtual Private Clouds (VPCs) through a central hub. This module automates resource provisioning, including optional routing tables and VPC attachments, reducing the complexity of network management. It also offers extensive customization options, allowing users to tailor VPC attachments, route tables, propagation, and cross-account sharing to meet their specific needs.

#### ARC API

1. **File Utils**: Introducing a new extension that streamlines file uploads with enhanced multipart support, making it easier and faster to handle large files. This extension improves efficiency and simplifies the process, ensuring seamless integration with your existing system.

2. **Enhanced Caching**: Our enhanced caching extension allows you to apply caching to any method not restricting you to limited classes like repositories only. This provides greater flexibility, enabling you to optimize performance across your entire application by caching method results wherever needed.

## August Release

#### ARC SaaS

1. **Decoupled Provisioning**: To enhance customization and cater to diverse customer needs, we are decoupling the tenant application provisioning process from its build platform. This will allow users to choose their preferred build platform for executing the provisioning cycle. Users can seamlessly use platforms that comply with their organizational standards, ensuring a flexible and user-friendly provisioning experience.

![Ox91vdx - Imgur](https://github.com/user-attachments/assets/6cc6c42c-94d3-4a03-a64f-9f325c9c3da3)

#### ARC IaC

1. **EC2 Management Simplified**: The [EC2 module](https://registry.terraform.io/modules/sourcefuse/arc-ec2/aws/latest) streamlines the management of Amazon EC2 instances with Terraform, covering key aspects like instance creation, load balancing with ELBs, and security group configurations. It also supports instance metadata, user data scripts, EBS volume management, and Elastic IP association, ensuring best practices for security and performance.

2. **S3 Bucket Management**: The [S3 module](https://github.com/sourcefuse/terraform-aws-arc-s3) provides a comprehensive solution for managing Amazon S3 buckets with Terraform. It simplifies bucket creation, supports versioning and lifecycle policies, and offers detailed access control. Additionally, it includes cross-region replication and server-side encryption options to enhance data security and durability.

3. **Kinesis Stream Management**: This Terraform [module](https://registry.terraform.io/modules/sourcefuse/arc-kinesis-stream/aws/latest) by SourceFuse simplifies the management of Amazon Kinesis streams. It allows for easy creation and configuration of data streams, supports Kinesis Firehose delivery, and offers configurable shard counts, data retention periods, and stream encryption with AWS KMS.

#### ARC API

1. **Enhanced Feature Toggle Service**: Our feature toggle service now allows you to maintain default values for each feature, enabling more nuanced control beyond simple boolean toggles. This enhancement supports various configurations and use cases, providing greater flexibility in feature management and allowing for dynamic adjustments based on specific conditions or criteria.

## July Release

#### ARC SaaS

1. **Managing Control-Plane Applications with ArgoCD GitOps** : Optimizing Control-Plane Application Management with ArgoCD GitOps using Terraform. This helps in monitoring the health of micro-services of control-plane while making it easy to update control-plane features or roll back deployments. Helping to streamline and accelerate deployment cycles.

![image (2)](https://github.com/sourcefuse/loopback4-microservice-catalog/assets/83634146/3efdf1da-e15f-47ba-9bfb-fa82e9b34592)

#### ARC IaC

1. **Automating AWS CodePipeline with Terraform**: Our terraform [ci/cd](https://github.com/sourcefuse/terraform-aws-arc-cicd) module automates the creation of AWS CodePipeline and CodeBuild projects, enabling seamless build and deployment for both application code and Terraform modules. By establishing reusable CodeBuild projects, it ensures consistent, efficient build processes shared across multiple CodePipelines. This standardized approach reduces redundancy and enhances configuration simplicity in CI/CD pipelines.

2. **Simplified ElastiCache Management**: The [cache](https://github.com/sourcefuse/terraform-aws-arc-cache) module streamlines the deployment and management of AWS ElastiCache clusters, supporting both Redis and Memcached options. This Terraform module offers a unified solution for creating and configuring ElastiCache components, including parameter groups, subnet groups, and security groups, ensuring efficient cluster setup and configuration.

#### ARC API

1. **Enhanced Audit Log Archival**: Our updated [audit-log](https://www.npmjs.com/package/@sourceloop/audit-service) service now supports archiving logs based on lists of 'actedOn' and 'actionGroup' instead of a single string, enabling easier grouping and simultaneous archiving of related entities. This enhancement reduces the number of archives, improving performance when retrieving archived data.

## June Release

1. **ARC SaaS and AWS SBT**: We recently showcased the capabilities of collaboration between AWS SBT & ARC in managing a multi-tenant SaaS application as a control plane, integrated with a telemedicine application built on the ARC framework. This approach streamlines the creation of control plane and application plane essential for overseeing the entire SaaS ecosystem. Users benefit from rapid development, efficient deployment, and centralized management, ensuring scalable and secure SaaS solutions.. Checkout its details [here](https://www.sourcefuse.com/resources/blog/saas-builder-toolkit-for-aws-arc-by-sourcefuse/).

![Web-1920-–-8-1](https://github.com/sourcefuse/loopback4-microservice-catalog/assets/83634146/1e437c7e-2874-4e8e-b8e4-6c44e5e9dad6)

#### ARC IaC

1. **AWS Backup**: The Terraform module centralizes and automates data backups across AWS services, including Amazon RDS, EBS, DynamoDB, EFS, and more. It enables you to schedule automated backups, manage, and monitor backup activities from a single console, ensuring compliance and robust data protection. Additionally, AWS Backup supports cross-region and cross-account backups, enhancing data durability and disaster recovery capabilities.

2. **Synthetic Monitoring**: The Synthetic Monitoring module enables users to create and manage AWS Synthetics canaries using Terraform, which monitor application and API availability and performance. Supporting VPC configurations, custom IAM roles, and flexible setup options, the module seamlessly integrates with other AWS services for alerting and reporting. This enhances monitoring coverage and the resilience of applications.

#### ARC API

1. **Default Asymmetric Token**: To bolster security and scalability, we're implementing asymmetric JWT signing by default, leveraging unique pairs of public and private keys. While we recognize the transition may not be immediate for all, we're making it configurable to provide flexibility, empowering users to adopt this enhanced security measure at their own pace and convenience.

2. **Audit-logs Configurable Export** : The export feature of [@sourceloop/audit-log](https://www.npmjs.com/package/@sourceloop/audit-service) now offers full configurability, enabling users to choose their desired provider and dependency for seamless integration. This flexibility empowers users to tailor their export functionalities precisely to their preferences and infrastructure requirements.

Stay tuned for further updates and announcements. Remember, your feedback means the world to us. Whether you have questions, ideas, or just want to chat, don't hesitate to write to us on 'arc.support@sourcefuse.com'.
