# ARC Infrastructure as Code (IaC)
Originally, the primary purpose of ARC IaC was to streamline the process for deploying ARC API in AWS and Kubernetes based environments. Since ARC API is platform agnostic and runs in Docker and Node.js, it means that the IaC we produced supports most of the modern cloud ecosystem.

The reference architectures are abstractions of commonly used patterns that implement cloud best practices. For AWS, this means we aim to achieve compliance with [the AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html). ARC IaC is a collection of high level Terraform modules that we use to implement the reference architectures. The ARC Terraform modules offer streamlined and standardized interfaces to manage cross-cutting concerns such as networking, security, and observability. These modules follow opinionated patterns designed to reduce inter-module dependencies and improve composability. By developing and maintaining our own ARC-aligned modules, we retain full control over the infrastructure-as-code (IaC) lifecycle — enabling faster iterations, proactive updates, and uniform infrastructure standards across teams and deployments


The combination of our ARC reference architecture mono repos and ARC IaC modules provides a solid foundation for projects of all sizes. For smaller initiatives and POCs, this setup allows teams to quickly bootstrap a production-grade platform with minimal overhead.
All infrastructure code is scanned using [Snyk IaC](https://snyk.io/product/infrastructure-as-code-security/) and SonarCloud to ensure alignment with security best practices.


## Reference Architectures

* [AWS Account Baseline](reference_architectures/aws_account_baseline.md)
* [Control Tower and AFT](reference_architectures/control_tower_aft_setup.md)
* [Control Tower and LZA](reference_architectures/control_tower_lza_setup.md)
* [ARC IaC and LZA](reference_architectures/arc_iac_lza.md)
* [Network Baseline](reference_architectures/network_baseline.md)
* [ECS Platform Baseline](reference_architectures/ecs_platform_baseline.md)
* [EKS Platform Baseline](reference_architectures/eks_platform_baseline.md)
* [Lambda Platform Baseline](reference_architectures/lambda_platform_baseline.md)
* [Windows Basic Platform Baseline](reference_architectures/windows_basic_platform_baseline.md)
* [Windows Enterprise Platform Baseline](reference_architectures/windows_enterprise_platform_baseline.md)

## Terraform Modules

* AWS
  * [Control Tower AFT](modules/terraform-aws-refarch-control-tower-aft/README.md)
  * [Environment Bootstrap](modules/terraform-module-aws-bootstrap/README.md)
  * [Network](modules/terraform-aws-ref-arch-network/README.md)
  * [RDBMS](modules/terraform-aws-ref-arch-db/README.md)
  * [ECS](modules/terraform-aws-refarch-ecs/README.md)
  * [EKS](modules/terraform-aws-ref-arch-eks/README.md)
  * [Tags](modules/terraform-aws-refarch-tags/README.md)
  * [OpenSearch](modules/terraform-aws-refarch-opensearch/README.md)
  * [TypeScript Lambda Boilerplate](modules/typescript-lambda-boilerplate/README.md)
  * [Cloud Custodian](modules/terraform-aws-cloud-custodian/README.md)
  * [CloudFront](modules/terraform-aws-refarch-cloudfront/README.md)
  * [HealthCheck](modules/terraform-aws-arc-healthcheck/README.md)
  * [Workspaces](modules/terraform-aws-arc-workspace/README.md)
  * [KMS](modules/terraform-aws-arc-kms/README.md)
  * [WAF](modules/terraform-aws-refarch-waf/README.md)
  * [VPN](modules/terraform-aws-refarch-vpn/README.md)
  * [Postgres-Management](modules/terraform-postgresql-aws-arc-mgmt/README.md)
  * [Security](modules/terraform-aws-arc-security/README.md)
  * [Billing](modules/terraform-aws-arc-billing/README.md)
  * [EKS Addon](modules/terraform-aws-arc-eks-addon/README.md)
  * [GitHub Runner](modules/terraform-aws-arc-github-runner/README.md)
  * [DocumentDB](modules/terraform-aws-arc-document-db/README.md)
  * [GitHub IAM](modules/terraform-aws-arc-github-iam/README.md)
  * [S3](modules/terraform-aws-arc-s3/README.md)
  * [Cache](modules/terraform-aws-arc-cache/README.md)
  * [Synthetic Monitoring](modules/terraform-aws-arc-synthetic-monitoring/README.md)
  * [Backup](modules/terraform-aws-arc-backup/README.md)
  * [CICD](modules/terraform-aws-arc-cicd/README.md)
  * [EC2](modules/terraform-aws-arc-ec2/README.md)
  * [Security Group](modules/terraform-aws-arc-security-group/README.md)
  * [Rabbit MQ](modules/terraform-aws-arc-mq-broker/README.md)
  * [Load Balancer](modules/terraform-aws-arc-load-balancer/README.md)
  * [Observability Stack](modules/terraform-aws-ref-arch-observability-stack/README.md)
  * [EC2 Autoscale Group](modules/terraform-aws-arc-ec2-autoscale-group/README.md)
  * [Bedrock](modules/terraform-aws-arc-bedrock/README.md)
  * [DMS](modules/terraform-aws-arc-dms/README.md)
  * [Transit Gateway](modules/terraform-aws-arc-transit-gateway/README.md)
  * [Kinesis](modules/terraform-aws-arc-kinesis-stream/README.md) 
  * [Common Data](modules/terraform-aws-arc-common-data/README.md)
* Cloud Native
  * [Kubernetes App](modules/terraform-k8s-app/README.md)
