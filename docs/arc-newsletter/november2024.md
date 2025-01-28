# November 2024

#### ARC IaC

1. **Enhanced Networking Module**: Our [networking module](https://github.com/sourcefuse/terraform-aws-arc-network) streamlines the creation and management of AWS VPCs, subnets, and key networking components to ensure secure and scalable cloud infrastructure. It supports custom configurations for public and private subnets, NAT gateways, routing tables, and network ACLs, offering flexible options for NAT gateway count and other essential settings.

2. **Secured DB Module**: Our robust database terraform module simplifies RDS instance, cluster, and proxy deployments with a focus on high availability, performance, and security. Supporting multiple database types, it enables seamless RDS Proxy integration for efficient connection management and enhanced scalability. Advanced security features include AWS KMS encryption, VPC security group configurations, and subnet groups for secure networking. Follow the [link](https://github.com/sourcefuse/terraform-aws-arc-db) to explore further.

3. **Optimised DMS**: The [DMS module](https://github.com/sourcefuse/terraform-aws-arc-dms) streamlines database migrations with AWS Database Migration Service (DMS), offering customizable replication tasks and secure data transfers between databases. It provisions and manages DMS replication instances, including multi-AZ deployments for high availability, and allows for tailored migration tasks such as full load, ongoing replication, and real-time change data capture (CDC) for comprehensive migration control.

#### ARC SaaS

1. **Keycloak Integration**: We now support tenant onboarding across multiple Identity Providers (IdPs), including Keycloak, Auth0, and Cognito, with recent enhancements to include Keycloak. Using Keycloak realms, we maintain isolation for different tenant tiers: silo tenants are assigned individual realms, while pooled tenants share a realm but each has a unique client for their management.
