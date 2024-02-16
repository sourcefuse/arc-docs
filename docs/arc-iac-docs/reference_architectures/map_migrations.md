## Overview
**NOTE:**
This document has been sourced from [MAP 2.0 Customer Documentation](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/0-getting-started.html) and has been summed up as best as possible for internal SourceFuse ARC implementation / usage.

---

> The purpose of the Migration Acceleration Program (MAP) is to help AWS customers accelerate their migration to AWS. As a customer moves their existing on-premises workloads to AWS, the migrated workloads are identified through a mechanism called tagging, which enables them to display AWS Cost and Usage Report (CUR) based on the migrated resources, which can be utilized to report migrated workloads’ spend and generate appropriate credits.

<details open>
	<summary><b>!! WARNING !!</b></summary>
	Tagging your migrated resources is a requirement as part of the MAP 2.0 program. Not enabling CUR or not tagging the migrated resources will result in not applying MAP credits in your account.
</details>

## Background
The following videos are helpful and explain the Migration Acceleration Program and what achieves.
* https://www.youtube.com/watch?v=_MTDN2r5-oI -- At the `27:15` mark, this will be broken down explaining the different pillars of the program.
* https://youtu.be/lR27wRbmzoo?t=111&feature=shared

## Setup
This section will cover the migration tracking process via Tagging.

### Requirements
1. AWS Migration Program Engagement number (MPE number). You can find this number in your Migration Plan.
2. Access to the AWS management account with proper privileges allowing you to make changes to Cost and Usage Report, to activate Cost Allocation Tags, and to create Amazon S3 buckets in the management account(s), etc.
3. Access to AWS Migration Hub service.

### Setting up CUR and Generating Server ID
This is a one-time process for retrieving the server ID for the map-migrated tag.
AWS recommends using the automated method of implementing this, for alternative instructions, please see the [official docs](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/1-setting_up_cur.html).
* All instructions for the automated setup can be found [here](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/1-setting_up_cur/cur_automated.html). Please be sure to follow the instructions step-by-step.

### Activating the tags
<details open>
	<summary><b>!! WARNING !!</b></summary>
	You <b>MUST</b> wait 24 hours AFTER completing the steps above before Activating the tags!!
</details>


See [Activating Tags](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/2-activate_tags.html) from the AWS official docs for step-by-step instructions on how to correctly do this.

## Tagging Resources
Once CUR, Server ID, and tags are activated (link to #Setup), be sure to tag the resources with the `map-migrated` tag so they will start reporting:
* Easiest approach to mass tagging existing resources will be to use [AWS Tag Editor](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/3-tagging_resources/aws_tag_editor.html)
* All ARC resources are using the upstream tagging module in the Terraform configuration. Be sure to utilize [arc-tags](https://registry.terraform.io/modules/sourcefuse/arc-tags/aws/latest) with the `map-migrated` key and value added to the `extra_tags` block. You can then reference these tags in all the resources / modules that have a `tags` attribute defined.
* A custom script to tag high-value resources if any of the above are not feasible.
  * This is a WORK IN PROGRESS to support new services.
  * This, in combination with [resource-identifiers](https://github.com/sourcefuse/arc-helpful-scripts/tree/main/python/resource-identifiers) (needs additional service support) will be able to tag the identified resources in the generated CSV from the script.

### Validation and MRR
You can validate tagged resources are being reported correctly by navigating to Cost Explorer and filtering for the `map-migrated` tag.

See [Cost Explorer Validation](https://s3-us-west-2.amazonaws.com/map-2.0-customer-documentation/html/latest/en/troubleshooting/cost_explorer.html) for step-by-step instructions on how to check this.
This is how we will also pull the Monthly Recurring Revenue (MRR) for internal reporting.
