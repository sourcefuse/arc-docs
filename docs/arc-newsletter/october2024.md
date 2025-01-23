# October 2024

#### ARC SaaS

1. **Support for Multiple IDP**: We have integrated Auth0 as an identity provider for our SaaS application planes, alongside our existing Cognito support. We are using auth0 organizations to maintain isolation for different tiers. The first user for each tenant will be saved to Auth0, and also update the authentication service database accordingly to ensure seamless integration and user management. While creating plans admin can choose the IdP associated with that particular plan.

<img width="1112" alt="image" src="https://github.com/user-attachments/assets/45005f55-e675-455a-be76-09181f42f136" />

2. **MarketPlace Support**: We now support native integration with AWS Marketplace. Independent Software vendors can now not only use ARC SaaS control plane to SaaSify their product but also monetise them by listing them on AWS Marketplace, enhancing visibility and customer reach.

#### ARC IaC

1. **Site to Site VPN**: We’ve expanded the capabilities of the terraform-aws-arc-vpn module to now support Site-to-Site VPN, alongside AWS Client VPN. This enhancement simplifies secure network management by enabling both remote client access and encrypted connections between on-premises networks and AWS VPCs, all within a unified Terraform module.

#### ARC API

1. **Auth0 Idp**: ARC [authentication-package](https://www.npmjs.com/package/loopback4-authentication) now supports Auth0 authentication, allowing you to integrate Auth0 as an identity provider for your web application. Feel free to checkout the implementation [here](https://github.com/sourcefuse/loopback4-authentication?tab=readme-ov-file#passport-auth0).
