# [terraform-postgresql-aws-arc-mgmt](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt)

[![snyk](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-postgresql-aws-arc-mgmt/actions/workflows/snyk.yaml)

## Overview

It demonstrates how to create and manage a PostgreSQL database, roles, schemas, and associated resources on AWS.

In the example folder, you will see how this module should be called in downstream and how we can pass the values.

## Usage
  ```
required_providers {
    postgresql = {
      version = "~> 1.21"
      source  = "cyrilgdn/postgresql"
    }
    aws = {
      version = "~> 5.0"
      source  = "hashicorp/aws"
    }
  }
  ```
1. Initialize Terraform with the backend config
  ```shell
  terraform init -backend-config=config.dev.hcl
  ```
2. Plan Terraform
  ```shell
  terraform plan -var-file .\tfvars\dev.tfvars
  ```
3. Apply Terraform
  ```shell
  terraform apply -var-file .\tfvars\dev.tfvars
  ```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
