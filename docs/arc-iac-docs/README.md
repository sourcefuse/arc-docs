# ARC Infrastructure as Code (IaC)
Originally, the primary purpose of ARC IaC was to streamline the process for deploying ARC API in AWS and Kubernetes based environments. Since ARC API is platform agnostic and runs in Docker and Node.js, it means that the IaC we produced supports most of the modern cloud ecosystem.

The reference architectures are abstractions of commonly used patterns that implement cloud best practices. For AWS, this means we aim to achieve compliance with [the AWS Well-Arhitected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html). ARC IaC is a collection of high level Terraform modules that we use to implement the reference architectures. The modules provide streamlined interfaces for handling cross cutting concerns, and often come with opinionated patterns to reduce module coupling . Under the hood, we use a variety of third-party sources for modules, such as [Cloud Posse](https://github.com/cloudposse), [AWS Integration and Automation](https://github.com/aws-ia), and [HashiCorp](https://github.com/hashicorp). Our goal is not re-invent the wheel and recreate modules that are readily available, rather, to simplify the process for teams and enable acceleration. 

For POCs and smaller projects, the combination of our ARC reference architecture mono repos and ARC IaC modules should be sufficient to quickly bootstrap a production grade platform.

For enterprise grade projects, ARC IaC is an excellent foundation and accelerator, however, there will be additional effort required to enable or create configurations that support high security models, multi-regional deployments, etc. All IaC is scanned with [Snyk IaC](https://snyk.io/product/infrastructure-as-code-security/). 

## Reference Architectures

* [AWS Account Baseline](reference_architectures/aws_account_baseline.md)
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
* Cloud Native
  * [Kubernetes App](modules/terraform-k8s-app/README.md)

