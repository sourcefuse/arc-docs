# August 2024

#### ARC SaaS

1. **Decoupled Provisioning**: To enhance customization and cater to diverse customer needs, we are decoupling the tenant application provisioning process from its build platform. This will allow users to choose their preferred build platform for executing the provisioning cycle. Users can seamlessly use platforms that comply with their organizational standards, ensuring a flexible and user-friendly provisioning experience.

![Ox91vdx - Imgur](https://github.com/user-attachments/assets/6cc6c42c-94d3-4a03-a64f-9f325c9c3da3)

#### ARC IaC

1. **EC2 Management Simplified**: The [EC2 module](https://registry.terraform.io/modules/sourcefuse/arc-ec2/aws/latest) streamlines the management of Amazon EC2 instances with Terraform, covering key aspects like instance creation, load balancing with ELBs, and security group configurations. It also supports instance metadata, user data scripts, EBS volume management, and Elastic IP association, ensuring best practices for security and performance.

2. **S3 Bucket Management**: The [S3 module](https://github.com/sourcefuse/terraform-aws-arc-s3) provides a comprehensive solution for managing Amazon S3 buckets with Terraform. It simplifies bucket creation, supports versioning and lifecycle policies, and offers detailed access control. Additionally, it includes cross-region replication and server-side encryption options to enhance data security and durability.

3. **Kinesis Stream Management**: This Terraform [module](https://registry.terraform.io/modules/sourcefuse/arc-kinesis-stream/aws/latest) by SourceFuse simplifies the management of Amazon Kinesis streams. It allows for easy creation and configuration of data streams, supports Kinesis Firehose delivery, and offers configurable shard counts, data retention periods, and stream encryption with AWS KMS.

#### ARC API

1. **Enhanced Feature Toggle Service**: Our feature toggle service now allows you to maintain default values for each feature, enabling more nuanced control beyond simple boolean toggles. This enhancement supports various configurations and use cases, providing greater flexibility in feature management and allowing for dynamic adjustments based on specific conditions or criteria.
