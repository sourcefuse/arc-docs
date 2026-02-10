# January 2026

### ARC IaC – Infrastructure Automation at Your Fingertips

1. **VPC Peering Module – Simple, Flexible Network Connectivity**

The ARC VPC Peering module makes it effortless to establish and manage VPC peering connections across accounts and regions. With flexible configuration options and ready-to-use examples, teams can quickly connect networks while ensuring proper routing and DNS resolution—without operational complexity.

**Key Features**

- Optional auto-accept support for compatible peering scenarios.
- Cross-account and cross-region VPC peering.
- Automatic requester and accepter configuration using provider aliases.
- DNS resolution enablement between peered VPCs.
- Automatic route creation for both requester and accepter route tables.

**Includes ready-to-use examples for**

- Single-account peering
- Cross-account peering
- Cross-region peering
- Peering with routes and DNS enabled

[Learn More](https://github.com/sourcefuse/terraform-aws-arc-vpc-peering)

2. **EFS Module – Secure, Highly Available Shared File Storage**

The ARC EFS module delivers a production-ready, shared file system that is secure, highly available, and cost-optimized. It simplifies deploying Amazon EFS with built-in backup, performance tuning, and cross-region disaster recovery—making it ideal for modern, stateful workloads.

**Key Features**

**Cross-Region Replication & Disaster Recovery** - Automatic replication to any AWS region, including KMS-encrypted file systems.
**Secure Access Management** - Support for EFS access points with custom paths and permissions, encryption at rest, and controlled access via security groups.
**Cost Optimization** - Lifecycle policies and intelligent tiering to move data automatically to lower-cost storage classes.
**Performance Tuning** - Support for provisioned throughput and Max I/O modes for consistent performance and high-IOPS workloads.
**Multi-AZ High Availability** - Mount targets across multiple Availability Zones for resilience and fault tolerance.
**Backup & Recovery** - Native integration with AWS Backup for automated, policy-driven backups.

[Explore the EFS Module](https://github.com/sourcefuse/terraform-aws-arc-sqs)
