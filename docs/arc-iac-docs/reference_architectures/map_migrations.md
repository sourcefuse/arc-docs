## Overview
**NOTE:**
This document has been sourced from [MAP 2.0 Customer Documentation](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/0-getting-started.html) and has been summed up as best as possible for internal SourceFuse ARC implementation / usage.

---

> The purpose of the Migration Acceleration Program (MAP) is to help AWS customers accelerate their migration to AWS. As a customer moves their existing on-premises workloads to AWS, the migrated workloads are identified through a mechanism called tagging, which enables them to display AWS Cost and Usage Report (CUR) based on the migrated resources, which can be utilized to report migrated workloads’ spend and generate appropriate credits.

Combining CUR and proper tagging, allows for the accurate tracking of migrated resources, and cost associated with planning, testing, and migrating under the MAP program. it takes a few steps to implement this.
1. Set up the Cost and Usage Report and generate the Server Id
2. If using AWS organizations, this should be done on the main/root payer account
3. Activate cost allocation tags
4. Tag the migrated resources in scope with the Server Id

<span style="color: red;">
<details open>
	<summary><b>!! WARNING !!</b></summary>
	Tagging your migrated resources is a requirement as part of the MAP 2.0 program. Not enabling CUR or not tagging the migrated resources will result in not applying MAP credits in your account.
</details>
</span> &nbsp;

## Background
The following videos are helpful and explain the Migration Acceleration Program and what achieves.
* https://www.youtube.com/watch?v=_MTDN2r5-oI -- At the `27:15` mark, this will be broken down explaining the different pillars of the program.
* https://youtu.be/lR27wRbmzoo?t=111&feature=shared

### What is CUR?
Cur or Current Usage Report, is the most comprehensive, and up to date cost and usage report available.
Once implemented, it will track the cost and usage reports of all resources with the appropriate tags, and publish billing reports in csv format to an s3 bucket, up to 3 times a day, ensuring you have the most up to date cost and usage information. This data can then be viewed using csv tools like Excel, or via the s3 API

### What is Tagging?
Tagging is simply a way to assign labels to an AWS resource. This is important during migration, as it’s the most accurate way to track migrated resources, and cost and usage associated with the migration.

* Migration inventory scope overtime, as resources are migrated from another environment to AWS.
* Identifying resources used during Pre-migration (testing), and during migration (production)
* Accurately collecting cost of usage, to be used to calculate TCO

### Importance or CUR and Tagging
Combining CUR and proper tagging, allows for the accurate tracking of migrated resources, and cost associated with planning, testing, and migrating under the MAP program. it takes a few steps to implement this.

1. Set up the Cost and Usage Report and generate the Server Id
2. If using AWS organizations, this should be done on the main/root payer account
3. Activate cost allocation tags
4. Tag the migrated resources in scope with the Server ID generated

## Setup
This section will cover the migration tracking process via Tagging.

### Requirements
1. AWS Migration Program Engagement number (MPE number). You can find this number in your Migration Plan.
2. Access to the AWS management account with proper privileges allowing you to make changes to Cost and Usage Report, to activate Cost Allocation Tags, and to create Amazon S3 buckets in the management account(s), etc.
3. Access to AWS Migration Hub service.

### Setting up CUR and Generating Server ID
This is a one-time process for retrieving the server ID for the map-migrated tag, and is run the payer management account (Client's account)
AWS recommends using the automated method of implementing this, for alternative instructions, please see the [official docs](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/1-setting_up_cur.html). &nbsp;

*Using the automated method provided by AWS is the fastest and recommended way to setup CUR and generate a server ID* &nbsp;

* All instructions for the automated setup can be found [here](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/1-setting_up_cur/cur_automated.html). Please be sure to follow the instructions step-by-step.

Once run, the CloudFormation templates will take about 2 minutes to complete.
When completed, switch to the Outputs tab and take a note of the Server ID generated.
It should take about 24 hours for the first cost and usage report to be published to the s3 bucket

### Activating the tags
<span style="color: red;">
<details open>
	<summary><b>!! WARNING !!</b></summary>
	You <b>MUST</b> wait 24 hours AFTER completing the steps above before Activating the tags!!
</details>
</span> &nbsp;

The CloudFormation scripts run to create the CUR and generate the server ID, will generate the necessary tags.
The cost allocation tags however, have to be manually activated.
Activation is done in the payer management account.

See [Activating Tags](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/2-activate_tags.html) from the AWS official docs for step-by-step instructions on how to correctly do this.

## Tagging Resources
Once CUR, Server ID, and tags are activated (link to #Setup), be sure to tag the resources with the `map-migrated` tag so they will start reporting:
* Easiest approach to mass tagging existing resources will be to use [AWS Tag Editor](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/3-tagging_resources/aws_tag_editor.html)
* All ARC resources are using the upstream tagging module in the Terraform configuration. Be sure to utilize [arc-tags](https://registry.terraform.io/modules/sourcefuse/arc-tags/aws/latest) with the `map-migrated` key and value added to the `extra_tags` block. You can then reference these tags in all the resources / modules that have a `tags` attribute defined.
```hcl
module "tags" {
  source  = "sourcefuse/arc-tags/aws"
  # version = "1.2.3"  ## be sure to select the latest version and pin it when implemented

  environment  = var.environment
  project      = var.namespace

  extra_tags = {
		map-migrated = var.map_server_id
    MonoRepo     = "True"
    MonoRepoPath = "terraform/workspaces"
  }
}
```
*Where map_server_id is the value of server ID generated when CUR creation templates were run.*
* A custom script to tag high-value resources if any of the above are not feasible.
  * This is a WORK IN PROGRESS to support new services.
  * This, in combination with [resource-identifiers](https://github.com/sourcefuse/arc-helpful-scripts/tree/main/python/resource-identifiers) (needs additional service support) will be able to tag the identified resources in the generated CSV from the script.

### Validation and MRR
You can validate tagged resources are being reported correctly by navigating to Cost Explorer and filtering for the `map-migrated` tag.

See [Cost Explorer Validation](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/troubleshooting/cost_explorer.html) for step-by-step instructions on how to check this.
This is how we will also pull the Monthly Recurring Revenue (MRR) for internal reporting.
