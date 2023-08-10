This purpose of this page is to explain the additional functionality of ARC Infrastructure as Code (IaC) post Landing Zone Accelerator (LZA) creation.  

## ARC Infrastructure as Code (IaC)
We are deeply committed to the OpenSource community and actively contribute to various projects. 
All the referenced resources, including our Terraform modules and configurations, can be found on our GitHub repository. 
Our mission is to leverage existing solutions, refine them to meet our specific requirements, and collaborate within the organization to drive innovation without reinventing the wheel.

These tools are not intended to serve as a singular solution, but rather to evolve continually. 
Our modules and resources play a pivotal role in expediting the critical cloud infrastructure, ensuring accelerated cloud adoption for our clients.

### ARC IaC Module Reference
**Referencing the Modules**:
* In your downstream Terraform configuration, add the `module` block to reference the ARC module(s) in your `main.tf` file.
* Set the `source` of the `module` block to point to https://github.com/sourcefuse/terraform-aws-ref* (select an available module in GitHub).
* Set the version of the upstream module to prevent upstream configuration drift between major and minor changes. 

**Example**:

```hcl
module "my_arc_module" {
  source = "git::https://github.com/sourcefuse/terraform-refarch-module-name?ref=0.1.0"

  # Set other module-specific variables here
}
```
* `source` attribute: This specifies the GitHub repository URL.
* `ref` parameter: This denotes the version of the module to be used. Replace `0.1.0` with your desired version tag from upstream.

### Open-Source modules 
All Open-Source ARC Modules are available on our [GitHub Repository](https://github.com/sourcefuse). 
For our Terraform specific modules, see [arc-docs](https://sourcefuse.github.io/arc-docs/arc-iac-docs/).

### Client Virtual Private Network (VPN) for your VPC
Adding a Client VPN post creation of Landing Zone Accelerator (LZA) resources brings several key benefits:

1. **Enhanced Security**: With a Client VPN, end users can establish secure and encrypted connections to the Virtual Private Cloud (VPC). 
   This ensures that sensitive data transmitted between the user's device and the cloud infrastructure remains confidential and protected from potential threats.
2. **Remote Access to Resources**: A Client VPN allows end users to securely access resources within the VPC from anywhere, even outside the traditional office environment. 
   This remote access enhances productivity and enables seamless collaboration, especially for teams working remotely or on-the-go.
3. **Reduced Network Exposure**: By utilizing a Client VPN, end users connect directly to the VPC, minimizing exposure to external networks. 
   This reduces the risk of potential attacks that could target the user's device or connection while providing access to cloud resources.
4. **Compliance and Auditing**: Client VPN connections can be audited and monitored, facilitating compliance with industry regulations and security standards. 
   This helps organizations maintain control over who accesses the network and the resources within.
5. **Simplified Access Management**: Integrating Client VPN into ARC streamlines access management. 
   End users can access resources based on predefined permissions, ensuring that only authorized individuals can connect to specific parts of the infrastructure.

### Relational Database Service (RDS)
By integrating Amazon RDS into ARC, we ensure databases are seamlessly managed as part of our streamlined cloud infrastructure approach. 

1. **Consistency through IaC**: Incorporating Amazon RDS into ARC aligns perfectly with our IaC-driven strategy. 
   This integration enables users to consistently provision and manage relational databases using code, ensuring that database configurations are uniform across development, 
   testing, and production environments. 
2. **Efficient Deployment**: With RDS as a core component of ARC, users can efficiently deploy and manage database instances through code. 
   This not only accelerates the deployment process but also reduces human error and the time required for manual setups.
3. **Scalability with Ease**: Leveraging RDS within ARC allows users to seamlessly scale database resources up or down based on demand. 
   This IaC-driven flexibility ensures that databases can easily accommodate changing workloads, optimizing both performance and cost.
4. **Enhanced Collaboration**: By integrating RDS into ARC's IaC approach, teams can collaborate more effectively. 
   Database configurations are standardized and shared through code, facilitating knowledge sharing and fostering consistent practices across teams.
5. **Infrastructure Optimization**: RDS in ARC ensures that databases are treated as integral parts of the infrastructure. 
   This approach enables users to thoroughly manage their cloud resources, resulting in improved resource allocation, enhanced security, and streamlined operations.

### Containerized setup and deployment
Adding support for Elastic Kubernetes Service (EKS) and Elastic Container Service (ECS) to ARC offers several significant benefits:
1. **Efficiency and Portability**: By seamlessly integrating containerized setups via EKS and ECS into ARC IaC, applications become highly portable and efficient. 
   This approach ensures consistent performance across various environments while minimizing deployment complexities.
2. **Scalability and Agility**: The incorporation of Amazon EKS and ECS into ARC IaC allows applications to dynamically scale based on demand. 
   This elasticity enhances responsiveness to varying workloads, optimizing resource utilization with ease.
3. **Resource Optimization**: Through Terraform-managed containerization with EKS and ECS, resource allocation is streamlined for maximum efficiency.
   Applications utilize precisely the necessary resources and types, reducing excessive expenditure and overall costs.
4. **Simplified Management**: ARC's integration of EKS and ECS, orchestrated by Terraform, simplifies the management of containerized applications. 
   Users can effortlessly manage and deploy container clusters, automating processes such as scaling and load balancing all from one tool.
5. **Consistency and Reproducibility**: Containerization ensures uniform behavior across all environments. 
   * When combining EKS and ECS with ARC IaC, we are able to consistently deploy our containerized applications all from the same platform to manage the underlying infrastructure.

### OpenSearch
Utilizing ARC IaC for managing the underlying OpenSearch infrastructure as well as the application ensures consistent deployment, version control, 
and automated management for an optimized and reliable environment.

1. **Consistent Deployment**: With ARC IaC, OpenSearch is consistently deployed using code. 
   This ensures uniform configurations across environments, minimizing the risk of discrepancies and enhancing reliability.
2. **Efficient Scaling**: OpenSearch infrastructure can be seamlessly scaled up or down to meet varying demand. 
   This elasticity optimizes resource utilization, ensuring performance while controlling costs.
3. **Quick Recovery**: In case of failures, having all of our configuration in code is quickly recoverable, so long as appropriate backups are in place. 
   By automatically recreating the desired state of OpenSearch infrastructure, downtime is minimized, and service availability to be restored.

### Centralized Tagging
To use the Tagging module, you will need to reference is in your downstream project. 

1. **Consistent Resource Management**: Centralized tagging ensures resources across the account are consistently labeled and categorized.
2. **Cost Allocation and Tracking**: 
   * Centralized tagging allows users to associate costs with specific projects, teams, or departments. 
   * Facilitates accurate cost allocation and provides insights into resource spending for budget management and resource optimization.
3. **Automated Policy Enforcement** ([in progress](https://sourcefuse.atlassian.net/wiki/spaces/~364544436/pages/3720085565/Cloud+Custodian)):
   * ARC's support for centralized tagging enables users to define and enforce tagging policies, using a tool like Cloud Custodian. 
   * Resources created without proper tags can be flagged or terminated, ensuring compliance with tagging standards and best practices.
4. **Resource Visibility**: Centralized tagging provides users with a clear overview of resources associated with specific projects or teams.
5. **Collaboration and Documentation**: Centralized tagging promotes collaboration among teams by providing a standardized way to label and document resources. 
   This ensures that resource ownership and purpose are clear, even when multiple teams are involved.
6. **Compliance and Auditing**: ARC's centralized tagging support assists users in meeting compliance requirements.
   Tagging resources according to regulatory or organizational standards ensures that resources are appropriately categorized and tracked.

**Example**:   
```hcl
module "tags" {
  source = "git::https://github.com/sourcefuse/terraform-aws-refarch-tags?ref=1.1.0"

  environment = "dev"
  project     = "your-project-name"

  extra_tags = {
  	Owner 	     = "Arc IaC"
    MonoRepo     = "True"
    MonoRepoPath = "terraform/example"
  }
}
```
* Required attributes for this module are: 
  * `environment`: The environment your resources belong to and are deployed in. 
  * `project`: This is the project name
* When you want to reference the tags in your resource, add the following to your `tags` attribute, **example**: 
	```hcl
	resource "aws_s3_bucket" "example" {
	  bucket = "arc-dev-example-bucket"
	
	  tags = merge(module.tags.tags, tomap({
	    Name = "arc-dev-example-bucket"
	  }))
	}
    ```
  * The `Name` tag is added to the resource since it's uniquely named. The tag module output adds the remainder of the global tags.

## Helpful Information
Sometimes, it may be hard to get up and running in AWS with Terraform.  
This section will provide additional explanation and examples of how to use some of the more complex upstream module(s).   

### Bootstrap
* Creates the S3 and DynamoDB resources for managing the Terraform backend state. 
  This enables state preservation and safety locks.    
* This resource can either be deployed to a centralized account or in different account / environments.
* If you separate the environment states, you will need to create a backend configuration file. 
  We can do this by adding a file to the root named `config.<environment>.hcl`. 
  This backend configuration file will then be used when initializing Terraform. 

#### First time use:
* This resource needs to be run without a backend configured in the `terraform {}` block. You will need to comment this out prior to running terraform init.
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
* Run terraform init
* Run `terraform workspace new <environment>` if you are using workspaces. If you are not, move to next step.
* Run plan:
  * With tfvars: `terraform plan -var-file <environment>.tfvars`
  * Without tfvars: `terraform plan`
* Run apply:
  * With tfvars: `terraform apply -var-file <environment>.tfvars`
  * Without tfvars: `terraform apply`

### Post Creation 
* Now that the S3 bucket and DynamoDB Lock Table exists, you will need to add you local terraform state to the remote backend. Uncomment the backend.
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
* Create the backend state file, if it doesn’t already exist. Name this file `config.<environment>.hcl`. Be sure the values in this file match the backend configuration values.
	```hcl
	region         = "us-east-1"
    key            = "example-mono-infra-bootstrap/terraform.tfstate"
    bucket         = "example-mono-infra-terraform-state-ops"
    dynamodb_table = "example-mono-infra-lock-table-ops"
    encrypt        = true 
	```
	* **region:** Where the backend state bucket exists
    * **key:** the name / path of the tfstate file
    * **bucket:** The name of the bucket created with the bootstrap module
    * **dynamodb_table:** Name of the lock table
    * **encrypt:** Enable server side encryption of the state file
* Run `terraform init -backend-config config.<environment>.hcl`
  * You will be prompted to migrate your backend state to the new backend, type `yes`
* Commit your changes.

### RDS
* Supports different engines and types based off requirements 
