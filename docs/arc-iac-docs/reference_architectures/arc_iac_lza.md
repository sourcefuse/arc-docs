# ARC IaC and the Landing Zone Accelerator on AWS
This purpose of this article is to explain the additional functionality of ARC Infrastructure as Code (IaC) post [Landing Zone Accelerator (LZA) on AWS](https://github.com/awslabs/landing-zone-accelerator-on-aws) rollout.

## ARC Infrastructure as Code (IaC)
We are deeply committed to the Open Source community and actively contribute to various projects.
All the referenced resources, including our Terraform modules and configurations, can be found on our GitHub repository.
Our mission is to leverage existing solutions, refine them to meet our specific requirements, and collaborate within the organization to drive innovation without reinventing the wheel.

These tools are not intended to serve as a singular solution, but rather to evolve continually.
Our modules and resources play a pivotal role in expediting the critical cloud infrastructure and ensuring accelerated cloud adoption for our clients. The guidance below is also not a one-size fits all solution, rather it is a model for that most enterprises can follow.

## ARC IaC Module Reference
**Referencing the Modules**:

- In your downstream Terraform configuration, add the `module` block to reference the ARC module(s) in your `main.tf` file.
- Set the `source` of the `module` block to point to `https://github.com/sourcefuse/terraform-aws-ref*` (select an available module in GitHub).
- Set the version of the upstream module to prevent upstream configuration drift between major and minor changes.

**Example**:

```hcl
module "my_arc_module" {
  source = "git::https://github.com/sourcefuse/terraform-aws-refarch-module-name?ref=0.1.0"

  # Set other module-specific variables here
}
```
* `source` attribute: This specifies the GitHub repository URL.
* `ref` parameter: This denotes the version of the module to be used. Replace `0.1.0` with your desired version tag from upstream.

## Open Source modules
All Open Source ARC Modules are available on our [GitHub Repository](https://github.com/sourcefuse).
For our Terraform specific modules, see [arc-docs](https://sourcefuse.github.io/arc-docs/arc-iac-docs/).

## Client Virtual Private Network (VPN) for your VPC
Adding a Client VPN post creation of Landing Zone Accelerator (LZA) resources brings several key benefits:

- **Enhanced Security**: With a Client VPN, end users can establish secure and encrypted connections to the Virtual Private Cloud (VPC).
   This ensures that sensitive data transmitted between the user's device and the cloud infrastructure remains confidential and protected from potential threats.
- **Remote Access to Resources**: A Client VPN allows end users to securely access resources within the VPC from anywhere, even outside the traditional office environment.
   This remote access enhances productivity and enables seamless collaboration, especially for teams working remotely or on-the-go.
- **Reduced Network Exposure**: By utilizing a Client VPN, end users connect directly to the VPC, minimizing exposure to external networks.
   This reduces the risk of potential attacks that could target the user's device or connection while providing access to cloud resources.
- **Compliance and Auditing**: Client VPN connections can be audited and monitored, facilitating compliance with industry regulations and security standards.
   This helps organizations maintain control over who accesses the network and the resources within.
- **Simplified Access Management**: Integrating Client VPN into ARC streamlines access management.
   End users can access resources based on predefined permissions, ensuring that only authorized individuals can connect to specific parts of the infrastructure.
- **ARC VPN**: We recommend that you utilize an existing module that is already proven to integrate with the LZA hub and spoke network architecture. Examples are
  - [ARC VPN](https://github.com/sourcefuse/terraform-aws-refarch-vpn)
  - [CloudPosse VPN](https://github.com/cloudposse/terraform-aws-ec2-client-vpn)

## Bootstrap
The [ARC boostrap module](https://github.com/sourcefuse/terraform-module-aws-bootstrap)

- Creates the S3 and DynamoDB resources for managing the Terraform backend state.
  This enables state preservation and safety locks.
- This resource can either be deployed to a centralized account or in different account / environments.
- If you separate the environment states, you will need to create a backend configuration file.
  We can do this by adding a file to the root named `config.<environment>.hcl`.
  This backend configuration file will then be used when initializing Terraform.
- We support two models for state management.
  - Centralized state in the `SharedServicesAccount` with separate buckets for each environment and corresponding IAM roles for downstream role assumption.
  - Decentralized state where the state for the workload account lives within the same account. This is ideal when the `SharedServices` model is not applicable or the adoption is too cumbersome or out of scope.

### First Time Use

- This resource needs to be run without a backend configured in the `terraform {}` block. You will need to comment this out prior to running terraform init.
	```hcl
	terraform {
	  required_version = ">= 1.4"

	  required_providers {
	    aws = {
	      version = ">= 3.0"
	      source  = "hashicorp/aws"
	    }
	  }

	  #  backend "s3" {}
	}
	```
- Run terraform init
- Run `terraform workspace new <environment>` if you are using workspaces. If you are not, move to next step.
- Run plan:
  - With tfvars: `terraform plan -var-file <environment>.tfvars`
  - Without tfvars: `terraform plan`
- Run apply:
  - With tfvars: `terraform apply -var-file <environment>.tfvars`
  - Without tfvars: `terraform apply`

### Post Creation

- Now that the S3 bucket and DynamoDB Lock Table exists, you will need to add you local terraform state to the remote backend. Uncomment the backend.
	```hcl
	terraform {
	  required_version = ">= 1.4"

	  required_providers {
	    aws = {
	      version = ">= 3.0"
	      source  = "hashicorp/aws"
	    }
	  }

	  backend "s3" {}
	}
	```
- Create the backend state file, if it doesn’t already exist. Name this file `config.<environment>.hcl`. Be sure the values in this file match the backend configuration values.
	```hcl
	region         = "us-east-1"
    key            = "example-mono-infra-bootstrap/terraform.tfstate"
    bucket         = "example-mono-infra-terraform-state-ops"
    dynamodb_table = "example-mono-infra-lock-table-ops"
    encrypt        = true
	```
	- **region:** Where the backend state bucket exists
    - **key:** the name / path of the tfstate file
    - **bucket:** The name of the bucket created with the bootstrap module
    - **dynamodb_table:** Name of the lock table
    - **encrypt:** Enable server side encryption of the state file
- Run `terraform init -backend-config config.<environment>.hcl`
  - You will be prompted to migrate your backend state to the new backend, type `yes`
- Commit your changes.


## Network
We support two main variations of deploying networks with the LZA

- **LZA Native Networking**: We use this model for the higher compliance variations of the LZA - HealthCare, GovCloud, Finance, etc. The advantages to this approach are
  - The networking stack is handled end to end with the Landing Zone Accelerator.
  - The LZA creates the network hub and spokes and is the only place where core networking is handled.
  - North/South ingress/egress patterns are more straightforward.
- **Hybrid Networking**: We use this model when we want the LZA to create the hub and not the spokes. We use this model when
  - There is existing networking IaC we need to re-use. For example, we often use [our own networking module](https://github.com/sourcefuse/terraform-aws-ref-arch-network) in conjunction with the LZA.
  - We want more end to end control in Terraform.
  - We want North/South ingres/egress to the backend, but we need to support East/West in a workload account.


## Relational Database Service (RDS)
By integrating [Amazon RDS into ARC](https://github.com/sourcefuse/terraform-aws-ref-arch-db), we ensure databases are seamlessly managed as part of our streamlined cloud infrastructure approach.

- **Consistency through IaC**: Incorporating Amazon RDS into ARC aligns perfectly with our IaC-driven strategy.
   This integration enables users to consistently provision and manage relational databases using code, ensuring that database configurations are uniform across development,
   testing, and production environments.
- **Efficient Deployment**: With RDS as a core component of ARC, users can efficiently deploy and manage database instances through code.
   This not only accelerates the deployment process but also reduces human error and the time required for manual setups.
- **Scalability with Ease**: Leveraging RDS within ARC allows users to seamlessly scale database resources up or down based on demand.
   This IaC-driven flexibility ensures that databases can easily accommodate changing workloads, optimizing both performance and cost.
- **Enhanced Collaboration**: By integrating RDS into ARC's IaC approach, teams can collaborate more effectively.
   Database configurations are standardized and shared through code, facilitating knowledge sharing and fostering consistent practices across teams.
- **Infrastructure Optimization**: RDS in ARC ensures that databases are treated as integral parts of the infrastructure.
   This approach enables users to thoroughly manage their cloud resources, resulting in improved resource allocation, enhanced security, and streamlined operations.
- **Proven in Production**: The ARC DB module has been used to deploy Aurora Serverless, MySQL/MariaDB, SQL Server, and Oracle in production.

## Containerized setup and deployment
Adding support for Elastic Kubernetes Service (EKS) and Elastic Container Service (ECS) to ARC offers several significant benefits:

- **Efficiency and Portability**: By seamlessly integrating containerized setups via EKS and ECS into ARC IaC, applications become highly portable and efficient.
   This approach ensures consistent performance across various environments while minimizing deployment complexities.
- **Scalability and Agility**: The incorporation of Amazon EKS and ECS into ARC IaC allows applications to dynamically scale based on demand.
   This elasticity enhances responsiveness to varying workloads, optimizing resource utilization with ease.
- **Resource Optimization**: Through Terraform-managed containerization with EKS and ECS, resource allocation is streamlined for maximum efficiency.
   Applications utilize precisely the necessary resources and types, reducing excessive expenditure and overall costs.
- **Simplified Management**: ARC's integration of EKS and ECS, orchestrated by Terraform, simplifies the management of containerized applications.
   Users can effortlessly manage and deploy container clusters, automating processes such as scaling and load balancing all from one tool.
- **Consistency and Reproducibility**: Containerization ensures uniform behavior across all environments.
  - When combining EKS and ECS with ARC IaC, we are able to consistently deploy our containerized applications all from the same platform to manage the underlying infrastructure.
- **Multiple Options**: We have our own opinionated modules or utilize upstream modules from sources such as (AWS Infrastructure and Automation):
  - ARC [terraform-aws-ref-arch-eks](https://github.com/sourcefuse/terraform-aws-ref-arch-eks)
  - ARC [terraform-aws-ref-arch-eks-addon](https://github.com/sourcefuse/terraform-aws-ref-arch-eks-addon)
  - ARC [terraform-aws-refarch-ecs](https://github.com/sourcefuse/terraform-aws-refarch-ecs)
    - Example Implementation of Backstage in ECS downstream of our ECS module - [arc-backstage-ecs-app](https://github.com/sourcefuse/arc-backstage-ecs-app)
  - Our modules are compositions of many of several of the modules below, and we often still leverage these modules individually based on requirements.
    - aws-ia [terraform-aws-eks-blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints)
    - aws-ia [terraform-aws-eks-blueprints-addons](https://github.com/aws-ia/terraform-aws-eks-blueprints-addons)
    - aws-ia [terraform-aws-eks-data-addons](https://github.com/aws-ia/terraform-aws-eks-data-addons)
    - aws-ia [terraform-aws-eks-blueprints-teams](https://github.com/aws-ia/terraform-aws-eks-blueprints-teams)
    - aws-ia [ecs-blueprints](https://github.com/aws-ia/ecs-blueprints)
    - CloudPosse [terraform-aws-eks-cluster](https://github.com/cloudposse/terraform-aws-eks-cluster)
    - CloudPosse [terraform-aws-eks-node-group](https://github.com/cloudposse/terraform-aws-eks-node-group)
    - CloudPosse [terraform-aws-eks-workers](https://github.com/cloudposse/terraform-aws-eks-workers)
    - CloudPosse [terraform-aws-eks-fargate-profile](https://github.com/cloudposse/terraform-aws-eks-fargate-profile)

## Seamless Lambda and Terraform CDK for TypeScript Support
We believe in empowering developers to own their own infrastructure. To open the door for more ARC IaC usage, we created a Lambda stack focused on TypeScript developers.

- **ARC IaC Integration**: [arc-cdk](https://github.com/sourcefuse/arc-cdk) provides binding for our core Terraform modules in TypeScript CDK for TypeScript. Leverage the same ecosystem that your TypeScript developers are accustomed to orchestrate AWS.
- **ARC API Integration**: Deploy [arc-api](https://github.com/sourcefuse/loopback4-microservice-catalog/) in Lambda in minutes. Immediately start feature development after deploying your core infra.
- **Serverless SPA Hosting**: Whether its with your own SPA or one our boilerplates, you can quickly deploy use our [spa-host](https://github.com/sourcefuse/react-boilerplate-ts-ui/tree/main/cdk) to deploy to CloudFront and serve your application at a global scale.

The list of modules here is by no means comprehensive, but with our approach, you can stand up an enterprise-grade multi-account AWS infrastructure with the core components of an application stack in a matter of hours. Why re-invent the wheel, when you can immediately focus on feature development and customer value?
