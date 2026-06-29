# March 2026

### ARC IaC – Infrastructure Automation at Your Fingertips

1. **Route 53 Module – Scalable and Secure DNS Management**

The ARC Terraform module for Amazon Route 53 simplifies provisioning and managing DNS infrastructure, enabling secure, scalable, and production-grade domain and traffic management with advanced routing capabilities.

**Key Highlights**

- Production-grade DNS management on AWS
- Support for public and private hosted zones
- DNSSEC support with KMS for secure zone signing

**Capabilities**

- Fully declarative DNS record configuration
- Advanced routing policies (weighted, failover, latency, geolocation, etc.)
- Alias records for AWS services (ALB, NLB, CloudFront, S3, API Gateway)
- Integrated health checks via CloudWatch

[Explore the module](https://github.com/sourcefuse/terraform-aws-arc-route53)

2. **EKS Module – Simplifying GitOps with Argo CD**

We’ve introduced Argo CD capability within the [EKS module](https://github.com/sourcefuse/terraform-aws-arc-eks), enabling seamless GitOps-based continuous delivery.

**What’s New**

- Added support for EKS-native Argo CD integration for streamlined application delivery.
- Provides a fully managed, GitOps-based continuous deployment experience.
- Eliminates the need to install, manage, or scale Argo CD infrastructure manually.
- Enables declarative application management directly through Git repositories.

3. **VPC Module – Regional NAT for High Availability**

We’ve introduced a regional NAT architecture to enhance network availability, scalability, and efficiency across your VPC deployments.

**What’s New**

- Added support for regional NAT architecture across multiple Availability Zones.
- Eliminates single-AZ dependency to improve high availability.
- Enables optimized routing for outbound traffic across AZs.
- Provides better cost control and scalability for NAT traffic handling.
