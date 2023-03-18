# AWS Account Baseline
![](./assets/arc_landing_zone.png)

The AWS account baseline creates an AWS landing zone that provides

- Centralized identity and access management
- Standardized multi-account structure for the segregation of workload by environment designation
- Centralized audit logging and security controls
- A fully automated solution.

The example above utilizes our integration with the [Account Factory for Terraform](https://developer.hashicorp.com/terraform/tutorials/aws/aws-control-tower-aft). For less complex architectures, we typically deploy the AFT. For more complicated architectures or compliance heavy architectures, we typically deploy a customized version of the [Landing Zone Accelerator](https://github.com/awslabs/landing-zone-accelerator-on-aws). 
