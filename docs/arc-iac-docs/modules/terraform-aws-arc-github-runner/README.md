# [terraform-aws-arc-github-runner](https://github.com/sourcefuse/terraform-aws-arc-github-runner)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-github-runner)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-github-runner)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-refarch-github-runner/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-refarch-github-runner/actions/workflows/snyk.yaml)

## Overview

SourceFuse AWS Reference Architecture (ARC) Terraform module for managing GitHub Runner.

This module will create the following resources in a specified AWS Account:
* S3 bucket: used for storing the generated `docker-compose.yml`
* EC2 instance: Used for running the runner container on
* SSH Key Pair: Used for decrypting EC2 password
* SSM Documents: Used for installing dependencies and updating the SSM Agent
* IAM Policies: For accessing created resources
* SSM Parameter: For storing the runner token

This module utilizes different `local-exec` provisioners to execute scripts for obtaining the needed GitHub Runner token
and remove the runner from the organization when the resources are destroyed.
See [Pre-Requisites](#pre-requisites) for information on the needed permissions these scripts will require.

### Pre-Requisites
You will need to have a GitHub Personal Access Token (PAT) with `admin:org` permissions in order to manage GitHub runners for the Organization.
If you do not have sufficient permissions to GitHub, the runner will not register.

Once you've obtained a PAT, you will need to set it so Terraform can access it.
The recommended approach to this is to save it in _Systems Manager Parameter Store_ with the Parameter name of: `/<namespace>/<environment>/github/token`
You can reference this parameter via a data lookup:
```hcl
data "aws_ssm_parameter" "github_token" {
  name = "/${var.namespace}/${var.environment}/github/token"
}
```

## Usage
:warning: At this time, this module only supports **Debian** / **Ubuntu** AMIs.
When choosing an AMI, please be sure to select either **Ubuntu** or **Debian**.

To see a full example, check out the [main.tf](https://github.com/sourcefuse/terraform-aws-arc-github-runner/blob/main/example/main.tf) file in the example folder.

```hcl
module "runner" {
  source  = "sourcefuse/arc-github-runner/aws"
  version = "0.2.6"
  namespace     = var.namespace
  environment   = var.environment
  region        = var.region
  subnet_id     = local.private_subnet_ids[0]
  vpc_id        = data.aws_vpc.this.id
  instance_type = "t2.micro"
  github_token  = data.aws_ssm_parameter.github_token.value
  runner_labels = "example,${var.namespace},${var.environment}"

  tags = module.tags.tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.50.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_runner"></a> [runner](#module\_runner) | git::https://github.com/cloudposse/terraform-aws-ec2-instance | 0.45.2 |
| <a name="module_ssh_key_pair"></a> [ssh\_key\_pair](#module\_ssh\_key\_pair) | git::https://github.com/cloudposse/terraform-aws-key-pair | 0.18.3 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.runner_bucket_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy_attachment.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.runner_bucket_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_s3_bucket.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_logging.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |
| [aws_s3_bucket_public_access_block.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.runner](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_object.docker_compose](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_ssm_association.dependencies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_association) | resource |
| [aws_ssm_association.runner_compose](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_association) | resource |
| [aws_ssm_document.dependencies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_document) | resource |
| [aws_ssm_document.runner_compose](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_document) | resource |
| [null_resource.cleanup](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.prepare](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_string.runner](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_ssm_parameter.runner_token](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI information for the EC2 instance | <pre>object({<br>    id       = string<br>    owner_id = string<br>  })</pre> | <pre>{<br>  "id": "ami-04505e74c0741db8d",<br>  "owner_id": "099720109477"<br>}</pre> | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Associate a public IP address with the instance | `bool` | `false` | no |
| <a name="input_ec2_runner_iam_role_policy_arns"></a> [ec2\_runner\_iam\_role\_policy\_arns](#input\_ec2\_runner\_iam\_role\_policy\_arns) | IAM role policies to attach to the Runner instance | `list(string)` | <pre>[<br>  "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",<br>  "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"<br>]</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment, i.e. dev, stage, prod | `string` | n/a | yes |
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | GitHub Owner the runner belongs to. If you are adding a repo, the format will be `owner/repo` | `string` | `"sourcefuse"` | no |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | GitHub Personal Access Token with `admin:org` permission scope.<br>This is used to obtain a Runner Token used for registering the runner.<br>For more information, see [Create a registration token for an organization](https://docs.github.com/en/rest/actions/self-hosted-runners?apiVersion=2022-11-28#create-a-registration-token-for-an-organization). | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type for the EC2 instance. Default is t3a.medium. | `string` | `"t3a.medium"` | no |
| <a name="input_monitoring_enabled"></a> [monitoring\_enabled](#input\_monitoring\_enabled) | Launched EC2 instance will have detailed monitoring enabled | `bool` | `true` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the project, i.e. refarch | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | n/a | yes |
| <a name="input_repos_or_orgs"></a> [repos\_or\_orgs](#input\_repos\_or\_orgs) | Whether the API will register / deregister the runner in repos or orgs. Options are `orgs` and `repos` | `string` | `"orgs"` | no |
| <a name="input_root_block_device_encrypted"></a> [root\_block\_device\_encrypted](#input\_root\_block\_device\_encrypted) | Whether to encrypt the root block device | `bool` | `true` | no |
| <a name="input_root_block_device_kms_key_id"></a> [root\_block\_device\_kms\_key\_id](#input\_root\_block\_device\_kms\_key\_id) | KMS key ID used to encrypt EBS volume. When specifying root\_block\_device\_kms\_key\_id, root\_block\_device\_encrypted needs to be set to true | `string` | `null` | no |
| <a name="input_root_volume_size"></a> [root\_volume\_size](#input\_root\_volume\_size) | Size of the root volume in gigabytes | `string` | `"80"` | no |
| <a name="input_root_volume_type"></a> [root\_volume\_type](#input\_root\_volume\_type) | Type of root volume. Can be standard, gp2, gp3, io1 or io2 | `string` | `"gp2"` | no |
| <a name="input_runner_image"></a> [runner\_image](#input\_runner\_image) | Name of the image to use for the Actions Runner. | `string` | `"sourcefuse/github-runner:0.3.0"` | no |
| <a name="input_runner_labels"></a> [runner\_labels](#input\_runner\_labels) | Labels to assign the GitHub Runner. If no values are given, the default labels will be:<br>  - `self-hosted`<br>  - Base OS, i.e. `Linux`<br>  - Architecture, i.e. `X64`<br>These labels cannot be overridden.<br>Separate labels via comma, i.e. `dev,docker,another_label` | `string` | `""` | no |
| <a name="input_runner_name"></a> [runner\_name](#input\_runner\_name) | Name to assign the GitHub Runner. If no value is given, it will use the ec2 instance name. | `string` | `null` | no |
| <a name="input_runner_user"></a> [runner\_user](#input\_runner\_user) | Name of the user to run the container as. | `string` | `"runner"` | no |
| <a name="input_security_group_rules"></a> [security\_group\_rules](#input\_security\_group\_rules) | Security group rules for the EC2 instance running the GitHub Runner | <pre>list(object({<br>    type        = string<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | <pre>[<br>  {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": 0,<br>    "protocol": "-1",<br>    "to_port": 65535,<br>    "type": "egress"<br>  }<br>]</pre> | no |
| <a name="input_ssm_patch_manager_enabled"></a> [ssm\_patch\_manager\_enabled](#input\_ssm\_patch\_manager\_enabled) | Whether to enable SSM Patch manager | `bool` | `true` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for the EC2 instance to be assigned to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to apply to every resource | `map(string)` | `{}` | no |
| <a name="input_volume_tags_enabled"></a> [volume\_tags\_enabled](#input\_volume\_tags\_enabled) | Whether or not to copy instance tags to root and EBS volumes | `bool` | `true` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID for EC2 instance to reside in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_runner_instance_id"></a> [ec2\_runner\_instance\_id](#output\_ec2\_runner\_instance\_id) | Instance ID of the EC2 Runner |
| <a name="output_ec2_runner_instance_name"></a> [ec2\_runner\_instance\_name](#output\_ec2\_runner\_instance\_name) | Instance Name of the EC2 Runner |
| <a name="output_ec2_runner_role"></a> [ec2\_runner\_role](#output\_ec2\_runner\_role) | Instance role name |
| <a name="output_ec2_runner_role_arn"></a> [ec2\_runner\_role\_arn](#output\_ec2\_runner\_role\_arn) | Instance role ARN |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations

- Configure pre-commit hooks
  ```sh
  pre-commit install
  ```

### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests
- Tests are available in `test` directory
- Configure the dependencies
  ```sh
  cd test/
  go mod init github.com/sourcefuse/terraform-aws-refarch-github-runner
  go get github.com/gruntwork-io/terratest/modules/terraform
  ```
- Now execute the test
  ```sh
  go test -timeout  30m
  ```

## Authors

This project is authored by:
- SourceFuse ARC Team
