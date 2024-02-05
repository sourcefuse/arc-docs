# Control Tower LZA Setup
The article below contains a step-by-step guide for setting up a Landing Zone via Control Tower and the necessary steps to deploy the Landing Zone Accelerator on AWS.

At the end of this guide you’ll have the following implemented based on the config settings you selected:

- Best Practices
  - **Organizational Units (OUs)**
    - Root (contains all OUs and accounts below)
      - Root account (Management account)
    - Infrastructure
      - Contains accounts named: SharedServices, Network
    - Security
      - Contains accounts named: Audit, LogArchive
    - Testing
      - Contains accounts named: Testing-Workload
  - SecurityHub
    - AWS Foundational Security Best Practices v1.0.0
      - [Security Hub controls reference - AWS Security Hub](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-controls-reference.html)
    - PCI DSS v3.2.1
    - CIS AWS Foundations Benchmark v1.4.0
    - NIST Special Publication 800-53 Revision 5
  - AWS Identity Center (used to be AWS SSO)
  - Transit Gateway
  - Service Control Policies (SCPs)
    - Enforce S3 Encryption
    - Blocks creating Internet Gateways with EC2 instances
    - Enforce EBS Encryption
    - Prevents modification of settings/logs/policies related to LZA
    - Prevents termination of Guard Duty or its resources
    - Prevents modification of Macie or its resources
    - Creates quarantine policy denying all actions on all services as a BreakGlass role
  - AWS Macie
  - AWS Guard Duty
  - AWS Audit Manager
  - Cost Usage Reports and Budget Notifications
  - AWS Backup Vault in Root OU
  - Cloudwatch alarms for any policy changes regarding encryption, logging, vpcs, etc
  - [Best practices configuration - Landing Zone Accelerator on AWS](https://docs.aws.amazon.com/solutions/latest/landing-zone-accelerator-on-aws/best-practices-configuration.html)
- HIPAA
  - **Organizational Units (OUs)**
    - Root (contains all OUs and accounts below)
      - Root account (Management account)
    - HIS
      - HIS-Non-Prod
        - Contains accounts named: Pacs-Non_Prod
      - HIS-Prod
        - Contains accounts named: Pms-Prod
    - EIS
    - Infrastructure
      - Infra-Dev
        - Contains accounts named: Network-DEV
      - Infra-Prod
        - Contains accounts named: Network-Prod
    - Security
      - Contains accounts named: Audit, LogArchive
  - SecurityHub
    - AWS Foundational Security Best Practices v1.0.0
      - [Security Hub controls reference - AWS Security Hub](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-controls-reference.html)
    - PCI DSS v3.2.1
    - CIS AWS Foundations Benchmark v1.4.0
    - NIST Special Publication 800-53 Revision 5
    - Blocks Non-HIPAA Eligible services
  - AWS Identity Center (used to be AWS SSO)
  - Transit Gateway
  - Service Control Policies (SCPs)
    - Enforce S3 Encryption
    - Blocks creating Internet Gateways with EC2 instances
    - Enforce EBS Encryption
    - Prevents modification of settings/logs/policies related to LZA
    - Prevents termination of Guard Duty or it’s resources
    - Prevents modification of Macie or it’s resources
    - Creates quarantine policy denying all actions on all services as a BreakGlass role
    - Blocks use of all AWS services that are not HIPAA compliant
  - AWS Macie
  - AWS Guard Duty
  - AWS Audit Manager
  - Cost Usage Reports and Budget Notifications
  - AWS Backup Vault in Root OU
  - CloudWatch alarms for any policy changes regarding encryption, logging, vpcs, etc
  - https://aws.amazon.com/blogs/industries/introducing-landing-zone-accelerator-for-healthcare/

## Special Notes

- Cannot have CloudTrail already configured in the management account.
- All configuration should be done in the management account for the Organization.
- Control Tower will create a new OU with additional accounts in it for security purposes.
- You will need to be an Organization Administrator to complete this
- You will need the ability to create, at a minimum, of **Six** unique email distribution lists (or individual email addresses) for the additional accounts the instructions will walk through setting up.

### Pre-Requisites

- AWS CLI Version >= 2.7
- Root access to the account where you want to spin up Control Tower
- Multiple **UNIQUE** emails will be required in this process.  You have 2 options:
  - Test if the customer’s email provider allows for + annotation in their email addresses
    - Send an email to the Root account’s email address adding a `+test` right before the @ (root+test@domain.com)
    - If they get the email at root@domain.com, then no additional steps are required
  - If + annotation does not work, you must have the customer provision all of the required accounts ahead of time, scroll through the docs and figure out how many/which ones you need. It can be as few as 2 if you’re not running a best practices file, up to 6 if you’re running all of HIPAA.

## Landing Zone Setup

For additional information on how to configure Landing Zone, see the official AWS Docs on [Getting started with AWS Control Tower](https://docs.aws.amazon.com/controltower/latest/userguide/getting-started-with-control-tower.html).

1. Log into the Management Account console with an administrator account.

2. Create an IAM role named Admin

   1. Navigate to **IAM** in your **Root** account
   2. Select **Roles** on the left hand side of the screen
   3. Select **Create Role**
   4. Select **AWS Account**
   5. Click **Next**
   6. Type `AdministratorAccess` in the search bar and hit **enter**
   7. Select the (hopefully first) permission policy named **AdministratorAccess**
   8. Click **Next**
   9. Name the role `Admin`
   10. Scroll down and click **Create role**

3. Create an AWS KMS key for AWS Control Tower

   1. Navigate to the **AWS Key Management Service** (KMS) console and ensure you've selected the region in which AWS Control Tower will be deployed

   2. Click **Create a key**

   3. In the **Configure key** step confirm the default settings

      - **Key type:** Symmetric
      - **Key usage** Encrypt and decrypt

   4. Under **Advanced options**

      - **Key Material Origin:** KMS
      - **Regionality:** Single-Region Key

   5. Click **Next**

   6. In the **Alias** text box enter *control-tower/cmk*. Add a Description if desired.

   7. Click **Next**

   8. On the **Define the key administrative permissions** step select the IAM Role/User that will perform the AWS Control Tower launch.

      1. If your user does not show up, skip this step and click **Next**

   9. Click **Next**

   10. On the **Define key usage permissions** step click **Next**

   11. On the **Review** step modify the **Key policy** JSON and make sure the code generated all 3 of statement blocks below, if not, overwrite it with what’s below and add in your account number where required.. This will allow AWS Config and CloudTrail to use the key.

       1.
            ```
                {
                  "Id": "key-consolepolicy-3",
                  "Version": "2012-10-17",
                  "Statement": [
                {
                  "Sid": "Enable IAM User Permissions",
                  "Effect": "Allow",
                  "Principal": {
                    "AWS": "arn:aws:iam::<youraccountnumber>:root"
                  },
                  "Action": "kms:*",
                  "Resource": "*"
                },
                {
                  "Sid": "Allow access for Key Administrators",
                  "Effect": "Allow",
                  "Principal": {
                    "AWS": "arn:aws:iam::<youraccountnumber>:role/Admin"
                  },
                  "Action": [
                    "kms:Create*",
                    "kms:Describe*",
                    "kms:Enable*",
                    "kms:List*",
                    "kms:Put*",
                    "kms:Update*",
                    "kms:Revoke*",
                    "kms:Disable*",
                    "kms:Get*",
                    "kms:Delete*",
                    "kms:TagResource",
                    "kms:UntagResource",
                    "kms:ScheduleKeyDeletion",
                    "kms:CancelKeyDeletion"
                  ],
                  "Resource": "*"
                }
                ,{
                  "Sid": "Allow CloudTrail and AWS Config to encrypt/decrypt logs",
                  "Effect": "Allow",
                  "Principal": {
                    "Service": ["config.amazonaws.com", "cloudtrail.amazonaws.com"]
                  },
                  "Action": ["kms:GenerateDataKey", "kms:Decrypt"],
                  "Resource": "*"
                }
                  ]
                }
            ```

   12. Click **Finish**

4. In the search bar, type *Control Tower* then select the result.
![1.png](assets%2Fcontrol_tower%2F1.png)

5. Select *Set up landing zone*
![2.png](assets%2Fcontrol_tower%2F2.png)

6. **Home Region**: us-east-1

7. **Region deny setting**: Enable. This is helpful to avoid creating resources in regions that are not supported by your organization.

8. **Additional AWS Regions for governance**: Add additional supported regions for your organization.

9. **Foundational OU**: Leave it named **Security**

10. **Additional OU**: Name it **Infrastructure** (Not Sandbox, this is required for LZA later.  If you miss this step, it’s fixable, just annoying and more steps.)

11. **Log archive account**: Create a new account or use an existing one. You will need a unique email that has not been used for this account.

12. **Audit account**: Create a new account or use an existing one. You will need a unique email that has not been used for this account.

13. **AWS CloudTrail configuration**: Enabled (unless you want to manage CloudTrail logs manually)

14. **Log configuration for Amazon S3**: I left these as the default values. They can be overridden.

15. **KMS Encryption**: **Enable** or disable.  Go ahead and enable it now, as the LZA requires it to be enabled.  Follow the below steps:

    1. Check the Enable box
    2. Choose the key made during **Step 1**

16. Click **Next**

17. Review the final setup page for AWS Control Tower to ensure all settings are correct

18. Accept the Service permissions

19. Click **Set up landing zone**

20. Configure your Github creds and patiently wait while Control Tower is created.  The landing zone will take over an hour to configure.

### Configure Github Credentials to access LZA repository

1. Follow these instructions [Managing your personal access tokens - GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token#creating-a-personal-access-token-classic)
2. When creating the token:
   1. Deselect the checkbox for **repo** that selects everything under it
   2. Select the **public_repo** option
3. Copy the token created
4. Store the token in Secrets Manager in your Management (Root) Account in AWS
   1. In the AWS Management Console, navigate to **Secrets Manager**
   2. Click **Store a new secret**
   3. On the **Choose secret type** step select **Other type of secret**
   4. Select the **Plaintext** tab
   5. Completely remove the example text and paste your secret with no formatting no leading or trailing spaces
   6. Select the **aws/secretsmanager** encryption key
   7. Click **Next**
   8. On the **Configure secret** step set the **Secret name** to `accelerator/github-token`
   9. On the **Configure rotation** step click **Next**
   10. On the **Review** step click **Store**

## Deploying LZA

### Setting up the LZA CloudFormation Pipeline

1. Go to the following URL https://docs.aws.amazon.com/solutions/latest/landing-zone-accelerator-on-aws/step-1.-launch-the-stack.html
2. Click the blue button named **Launch Solution**
   1. This will automatically take you in to your AWS account, if not you may have to log in, but it will eventually get you to a CloudFormation **Create Stack** page
3. Click **Next**
4. Name the stack `AWSAccelerator-InstallerStack`
5. Scroll down to the **Mandatory Accounts Configuration** section
6. Add in your root account, log archive account, and audit account emails to their respective boxes
7. Click **Next**
8. On the **Configure stack options** page, click **Next**
9. On the **Review** page, review and confirm the settings. Check the box acknowledging that the template will create AWS Identity and Access Management (IAM) resources
10. Click **Submit** to deploy the stack

### Create personal AWS SSO Account

1. Navigate to IAM Identity Center in your Root/management account
2. Select **Users** on the left hand side of your screen
3. Click the orange **Add user** button
4. Enter your required user info
   1. Username
   2. Email address 2x
   3. First name
   4. Last name
5. Display name automatically populates, everything else can be left blank
6. Click **Next**
7. Check the box next to every group that has “Admin” in the name, should be 4 in total
8. Click **Next**
9. Double-check the email, scroll to the bottom and click **Add user**
10. Go to your email, find the invitation, and set up your account/password

### Configuring AWS Profile

Once you have SSO configured, you can set up the AWS CLI for SSO authentication. You will need to do this in order to run the Terraform configuration and provision the AFT and Logging Accounts.

For more information on how to configure SSO with the AWS CLI, see the official docs for [Configure the AWS CLI to use AWS IAM Identity Center (successor to AWS Single Sign-On) - AWS Command Line Interface](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).

**Steps:**



```
user@computer:~/dev/sourcefuse/aws-accelerator-config$ aws configure sso
SSO session name (Recommended):  <---- Leave blank, just press enter, VERY IMPORTANT
WARNING: Configuring using legacy format (e.g. without an SSO session).
Consider re-running "configure sso" command and providing a session name.
SSO start URL []: https://<unique>.awsapps.com/start  <---- This value is shown on the right hand side of the IdentityCenter window in AWS
SSO region []: us-east-1  <---- The home region for your Control Tower install
Attempting to automatically open the SSO authorization page in your default browser.
If the browser does not open or you wish to use a different device to authorize this request, open the following URL:

https://device.sso.us-east-1.amazonaws.com/

Then enter the code: <code>

****-****
There are 3 AWS accounts available to you.
  Log Archive, user+log@email.com (<log account id>)
  Audit, user+audit@emal.com (<audit account id>)
> Sourcefuse, user@email.com (<root account id>)  <---- Pick your root account

Using the account ID <root account id>
There are 2 roles available to you.
> AWSAdministratorAccess  <---- Pick your Admin role
  AWSServiceCatalogAdminFullAccess
Using the role name "AWSAdministratorAccess"
CLI default client Region [us-east-1]:  <---- Leave blank, just press enter
CLI default output format [json]:  <---- Leave blank, just press enter

To use this profile, specify the profile name using --profile, as shown:

aws s3 ls --profile AWSAdministratorAccess-<root account id>
```

## Choose which section below relates to your use case; Basic, HIPAA, Financial

### Apply basic Best Practices & deploy with LZA

1. Clone the repo created in CodeCommit
   1. If you do not have `python` installed, install `python` [Download Python](https://www.python.org/downloads/)
   2. Make sure `python` is added to your path and can be run in your terminal of choice
   3. Check if `pip` was automatically installed, if not install `pip` [Installation - pip documentation v23.1.2](https://pip.pypa.io/en/stable/installation/)
   4. Run the command `pip install git-remote-codecommit`
   5. Navigate to where you want the repository to live on your local machine
   6. Run the command `git clone codecommit://AWSAdministratorAccess-<your root account id>@aws-accelerator-config`
2. Navigate to where you want the sourcefuse best practices repo to live and clone it [sourcefuse/arc-lza-config](https://github.com/sourcefuse/arc-lza-config)
3. Copy all the files from sourcefuse/arc-lza-config over the files cloned from CodeCommit in aws-accelerator-config (replace everything that came from AWS)
4. Navigate back to aws-accelerator-config and modify the `accounts-config.yml` file:
   1. Replace the line asking for the Root account email
   2. Replace the line asking for the Logging account email
   3. Replace the line asking for the Audit account email
   4. Replace the line asking for the Shared Services account email (this will be a new unique email, IE. user+sharedservices@email.com)
   5. Replace the line asking for the Network account email (this will be a new unique email, IE. user+network@email.com)
   6. Replace the line asking for the Testing Workload account email (this will be a new unique email, IE. user+testingworkload@email.com)
   7. Save the file
5. Modify the `global-config.yaml` file:
   1. Replace the line asking for the Security account email (this will be a new unique email, IE. lzdemo1+security@test.com)
   2. Replace all 5 of the lines asking for a `UNIQUE EMAIL FOR BUDGET` with the same email (this will be a new unique email, IE. lzdemo1+budget@test.com)
6. Git add all the new files/changes, git commit, git push origin main
   1. This will update everything in CodeCommit with our current best practices
7. Create the `Testing` OU
   1. Navigate to ControlTower in your Root/Management account
   2. Click the orange **Create resources**  button
   3. Select **Create organizational unit**
   4. Name it `Testing`
   5. Set the Parent OU to **Root**
8. Navigate to CodeCommit in your Root/Management account to validate your changes are present
9. Navigate to CodePipeline in your Root/Management account, select `AWSAccelerator-Pipeline`
10. Click the orange **Release Change** button
11. Click **Release**
12. Wait very patiently, as this will take upwards of 2 hours

### Apply HIPAA Best Practices & deploy with LZA

1. Clone the repo created in CodeCommit
   1. If you do not have `python` installed, install `python` [Download Python](https://www.python.org/downloads/)
   2. Make sure `python` is added to your path and can be run in your terminal of choice
   3. Check if `pip` was automatically installed, if not install `pip` [Installation - pip documentation v23.1.2](https://pip.pypa.io/en/stable/installation/)
   4. Run the command `pip install git-remote-codecommit`
   5. Navigate to where you want the repository to live on your local machine
   6. Run the command `git clone codecommit://AWSAdministratorAccess-<your root account id>@aws-accelerator-config`
2. Navigate to where you want the sourcefuse best practices repo to live and clone it [sourcefuse/arc-lza-config](https://github.com/sourcefuse/arc-lza-config)
3. Copy all the files from sourcefuse/arc-lza-config/best-practices over the files cloned from CodeCommit in aws-accelerator-config (replace everything that came from AWS)
4. Copy all the files from sourcefuse/arc-lza-config/hipaa over the top of the best practices files you just copied in to aws-accelerator-config
   1. When your file system asks you about overwriting or skipping files, select overwrite for all of them
5. Navigate back to aws-accelerator-config and modify the `accounts-config.yml` file:
   1. Replace the line asking for the Root account email
   2. Replace the line asking for the Logging account email
   3. Replace the line asking for the Audit account email
   4. Replace the line asking for the Network Dev account email (this will be a new unique email, IE. user+network-dev@test.com)
   5. Replace the line asking for the Network Prod account email (this will be a new unique email, IE. user+network-prod@test.com)
   6. Replace the line asking for the Non Prod PACS account email (this will be a new unique email, IE. user+pacs-non-prod@test.com)
   7. Replace the line asking for the PMS Prod account email (this will be a new unique email, IE. user+pms-prod@test.com)
   8. Save the file
6. Modify the `global-config.yaml` file:
   1. Replace the line asking for the Security account email (this will be a new unique email, IE. user+security@test.com)
   2. Replace all 5 of the lines asking for a `UNIQUE EMAIL FOR BUDGET` with the same email (this will be a new unique email, IE.user+budget@test.com)
7. Git add all the new files/changes, git commit, git push origin main
   1. This will update everything in CodeCommit with our current best practices
8. Create the HIPAA required OUs
   1. Navigate to ControlTower in your Root/Management account
   2. Scroll down to your current OU list and click **View Organizations** or Click **Organization** on the left side bar
   3. Click the orange **Create resources**  button
   4. Select **Create organizational unit**
   5. Name it `HIS`
   6. Set the Parent OU to **Root**
   7. Repeat those steps but name the next one `EIS`
   8. Once `HIS` and `EIS` are done, click on your `Infrastructure` OU
   9. Repeat the steps to create an OU twice, naming the new OUs `Infra-Prod` and `Infra-Dev`
      1. Note, these 2 OUs are nested inside the `Infrastructure` OU
   10. click on your `Infrastructure` OU
   11. Navigate up a level and click on your recently created `HIS` OU, create 2 more OUs naming them `HIS-Non-Prod` and `His-Prod`
       1. Note, these 2 OUs are nested inside the `HIS` OU
   12. ![hippa_ou_structure.png](assets%2Fcontrol_tower%2Fhippa_ou_structure.png)
9. Navigate to CodeCommit in your Root/Management account to validate your changes are present
10. Navigate to CodePipeline in your Root/Management account, select `AWSAccelerator-Pipeline`
11. Click the orange **Release Change** button
12. Click **Release**
13. Wait very patiently, as this will take upwards of 2 hours



- [Special Notes](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Special-Notes)
  - [Pre-Requisites ](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Pre-Requisites)
- [Landing Zone Setup](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Landing-Zone-Setup)
  - [Configure Github Credentials to access LZA repository](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Configure-Github-Credentials-to-access-LZA-repository)
- [Deploying LZA](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Deploying-LZA)
  - [Setting up the LZA CloudFormation Pipeline](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Setting-up-the-LZA-CloudFormation-Pipeline)
  - [Create personal AWS SSO Account](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Create-personal-AWS-SSO-Account)
  - [Configuring AWS Profile](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Configuring-AWS-Profile)
- [Choose which section below relates to your use case; Basic, HIPAA, Financial](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Choose-which-section-below-relates-to-your-use-case;-Basic,-HIPAA,-Financial)
  - [Apply basic Best Practices & deploy with LZA](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Apply-basic-Best-Practices-&-deploy-with-LZA)
  - [Apply HIPAA Best Practices & deploy with LZA](https://sourcefuse.atlassian.net/wiki/spaces/SOURCEFUSE/pages/3657334895/Control+Tower+LZA+Setup#Apply-HIPAA-Best-Practices-&-deploy-with-LZA)
