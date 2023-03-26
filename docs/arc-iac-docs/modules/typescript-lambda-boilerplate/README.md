# Typescript Lambda Boilerplate

![Known Vulnerabilities](https://snyk.io/test/github/sourcefuse/typescript-lambda-boilerplate/badge.svg?targetFile=aws-lambdas/iac/cdk/package.json)        [![Known Vulnerabilities](https://github.com/sourcefuse/typescript-lambda-boilerplate/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/typescript-lambda-boilerplate/actions/workflows/snyk.yaml)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_typescript-lambda-boilerplate&token=e3f829a84ea5000631ca5239aa6fa1c8853e539f)](https://sonarcloud.io/summary/new_code?id=sourcefuse_typescript-lambda-boilerplate)

| :exclamation: **Contributors:** See [Development](#dev) |
| ------------------------------------------------------- |

The boilerplate serves as the starting point for rolling out a new Lambda. The boilerplate includes 

* Terraform
* Terraform CDK in TypeScript 
* Example Lambda Handlers and common interfaces, utilities, etc.

The following patterns are shown in the boilerplate in Terraform, Terraform CDK in TypeScript, and TypeScript Lambda handlers.

* SNS consumer
* SQS consumer
* CRON job
* Utilizing ElastiCache in a Lambda
* API Gateway integration

## <a id="prereqs"></a> Pre-Requisites

- [node.js](https://nodejs.dev/download/)
- [npm](https://docs.npmjs.com/cli/v6/commands/npm-install)
- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)

## <a id="getting_started"></a> Getting Started: Build out Lambda

This assumes you have the [pre-requisites](#prereqs) already configured, an AWS Profile configured, and a KMS Key admin role.  
For more information on how to configure an AWS Profile on your workstation, please see [Adding a profile by editing the shared AWS credentials file
](https://docs.aws.amazon.com/toolkit-for-visual-studio/latest/user-guide/keys-profiles-credentials.html#adding-a-profile-to-the-aws-credentials-profile-file)

Compile and build the Typescript Lambda code. Navigate to the root of the repo to run the following commands.

1. Install Lambda packages:
   ```shell
   make bootstrap-lambda
   ```
2. Build the Lambda:
   ```shell
   make build
   ```

## Terraform to deploy your Lambda

Once you have completed the steps in [Getting Started](#getting_started), you will need to configure
the `terraform` dependencies.

:warning: This does not have a backend configured. See [Backend configuration](#backend_config) for more information.

1. Navigate to `aws-lambdas/terraform`:
   ```shell
   cd aws-lambdas/terraform
   ```
2. Set your AWS Profile environment variable:
   ```shell
   export AWS_PROFILE=<profile_name>
   ```
3. Configure your local `tfvars` file.
   <details open="true">
   <summary>example.tfvars</summary>

   ```shell
   profile = "<profile_name>"
   kms_key_admin_arns = [
     "arn:aws:iam::<account_id>:role/<kms_admin_role_name>"
   ]
   ```

   </details>

   This file should include:

   - The `profile` variable override
   - The `kms_key_admin_arns` variable override. This is for additional IAM roles to map to the KMS key policy for administering the KMS key used for SSE.

4. Initialize:
   ```shell
   terraform init -var-file=example.tfvars
   ```
5. Plan:
   ```shell
   terraform plan -var-file=example.tfvars
   ```
6. If the plan looks good, run apply:
   ```shell
   terraform apply -var-file=example.tfvars
   ```

### Creating additional Lambdas

In the Lambda module's README, there is a [usage](aws-lambdas/iac/terraform/lambda/README.md#usage) example you can reference to create additional resources in the
terraform root's configuration.

### <a id="backend_config"></a> Backend configuration

Since the code contained in this repo is only intended to serve as a boilerplate, the [local](https://www.terraform.io/language/settings/backends/local) backend is being used.

- The `local` backend keeps the state local. These files are ignored in the repo's [.gitignore](.gitignore). **DO NOT**
  remove the state files from the [.gitignore](.gitignore) since the state file may contain sensitive values.

For more information on backends, see the [Terraform docs](https://www.terraform.io/language/settings/backends/configuration) list of available backends.

## <a id="dev"></a> Development

[Quality Control](#qc) **MUST** be configured prior to making any commits.

Preferred workstation setup can be found in [Confluence](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3311075411/Dev+Machine+Setup).

### <a id="qc"></a> Quality Control

This repo leverages Pre-Commit to ensure code quality and standardization.

To get started, install pre-commit:

```shell
pip install pre-commit
```

Once pre-commit is installed, run `pre-commit install` from the root of this repo. This executes
prior to commits to the repo.
