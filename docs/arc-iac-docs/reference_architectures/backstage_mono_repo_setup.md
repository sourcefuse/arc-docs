# Setting up Backstage Monorepo with Terraform

This guide will walk you through the process of setting up a monorepo using Backstage. The monorepo will include various Terraform modules such as Bootstrap, VPC, DynamoDB, ECS, etc.

The Backstage Mono-repo streamlines the creation of a Mono-repository by incorporating pre-defined ARC IAC modules within it. These modules, such as Bootstrap, VPC, DynamoDB, ECS, and more, serve as foundational components for infrastructure as code (IAC). This solution is designed to facilitate the rapid setup of a repository tailored for any new project. By leveraging these standardized modules, teams can quickly establish a project-specific repository with essential infrastructure components, accelerating the initiation phase of new projects and ensuring consistency and best practices across the infrastructure landscape. The Backstage Mono-repo simplifies the onboarding process, providing a robust foundation for project development and infrastructure management.

## Step 1: Access Backstage

1. Access the Backstage portal by visiting [https://dx.arc-prod.link/](https://dx.arc-prod.link/).
2. Click on "Create."
3. Choose "ARC IAC."

## Step 2: Fill in Details

Fill in the following details for your monorepo:

- **Name:** `<enter the name here>` (e.g., arc-demo)
- **Description:** `<Help others understand what this service is for.>` (e.g., mono repo for arc-demo)
- **Backstage Namespace:** `<Backstage namespace for the output component>` (e.g., project name)
- **AWS Region:** `<enter the default region>` (e.g., us-east-1)
- **AWS Profile:** `<enter the name of profile>` (e.g., default)
- **Bucket Name:** `<enter the name of the bucket name to store the backend state file>` (e.g., my-project-backend-state)
- **Dynamo Lock Table:** `<enter the name of the DynamoDB table to manage tf state lock>` (e.g., my-project-state-lock)
- **IaC Name Suffix:** `<enter the value that is interpolated with namespace and environment to create uniquely named resources in IaC>` (e.g., ts)
- **IaC Environment Name:** `<enter the Environment name>` (e.g., dev)
- **IaC Namespace:** `<Usually an abbreviation of your organization name, i.e., "sf" or "arc", to help ensure generated IDs are globally unique>` (e.g., my-project-name)
- **Default Route53 Zone:** `<Default Route53 zone>` (e.g., test.com)
- **VPC CIDR Block:** `<enter the VPC CIDR block for the network module>` (e.g., 10.0.0.0/16)
- **GH Runner Tag:** `<enter the GH Runner Tag>` (e.g., sourcefuse)
- **DB Type:** `<Type of DB, i.e., aurora / sqlserver-ex>` (e.g., aurora)

Click "Next" to proceed.

## Step 3: Owner and Repository

1. Set the following details:
   - **Owner:** `<enter The organization, user or project that this repo will belong to>` (e.g., Sourcefuse)
   - **Repository:** `<enter the name of the repo you want to create>` (e.g., mono-repo-arc-demo)
2. Click "Next."

## Step 4: Review and Create

Review the changes and click "CREATE."

A new monorepo will be created with various Terraform modules.

## Bootstrap Module Setup (Recommended)

After setting up Backstage and the monorepo, it is recommended to set up the [Bootstrap Module](https://github.com/sourcefuse/terraform-aws-arc-bootstrap/tree/main).

This module helps in creating the Terraform S3 backend state bucket and DynamoDB State Lock table.

### Bootstrap Module Setup Steps:

1. Navigate to the Bootstrap module.
2. Follow the instructions in the Bootstrap module's [readme.md](https://github.com/sourcefuse/terraform-aws-arc-bootstrap/blob/main/README.md). to set up the backend state bucket and DynamoDB State Lock table.
