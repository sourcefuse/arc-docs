# [terraform-aws-ref-arch-network](https://github.com/sourcefuse/terraform-aws-ref-arch-network)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-network)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-network)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-ref-arch-network/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-ref-arch-network/actions/workflows/snyk.yaml)
## Overview

AWS Terraform module for the SourceFuse Reference Architecture.

![arc_network_hla](./static/arc_network_hla.png)

Create the following resources in a single region.

* VPC
* Multi-AZ private and public subnets
* Route tables, internet gateway, and NAT gateways
* Configurable VPN Gateway
* Configurable Client VPN Endpoint
* Configurable VPC Endpoints

## Usage
See the `examples` folder for a complete example.

```shell

module "network" {
  source  = "sourcefuse/arc-network/aws"
  version = "2.4.2"
  namespace                   = var.namespace
  environment                 = var.environment
  availability_zones          = var.availability_zones
  vpc_ipv4_primary_cidr_block = var.vpc_ipv4_primary_cidr_block
  client_vpn_enabled          = false
  tags                        = module.tags.tags
  client_vpn_authorization_rules = [
    {
      target_network_cidr  = var.vpc_ipv4_primary_cidr_block
      authorize_all_groups = true
      description          = "default authorization group to allow all authenticated clients to access the vpc"
    }
  ]

  vpc_endpoint_config = {
    s3         = true
    kms        = false
    cloudwatch = false
    elb        = false
    dynamodb   = true
    ec2        = false
    sns        = true
    sqs        = true
  }
  gateway_endpoint_route_table_filter = ["*private*"]
}

```
## custom-subnets example

```shell

module "network" {
  source  = "sourcefuse/arc-network/aws"
  version = "2.4.2"

  namespace                   = var.namespace
  environment                 = var.environment
  availability_zones          = var.availability_zones
  vpc_ipv4_primary_cidr_block = var.vpc_ipv4_primary_cidr_block
  client_vpn_enabled          = true

  ## custom subnets
  custom_subnets_enabled = true
  custom_private_subnets = [
    {
      name              = "${var.namespace}-${var.environment}-private-${var.region}a"
      availability_zone = "${var.region}a"
      cidr_block        = "10.0.0.0/19"
    },
    {
      name              = "${var.namespace}-${var.environment}-private-${var.region}b"
      availability_zone = "${var.region}b"
      cidr_block        = "10.0.64.0/19"
    }
  ]
  custom_public_subnets = [
    {
      name              = "${var.namespace}-${var.environment}-public-${var.region}a"
      availability_zone = "${var.region}a"
      cidr_block        = "10.0.96.0/20"
    },
    {
      name              = "${var.namespace}-${var.environment}-public-${var.region}b"
      availability_zone = "${var.region}b"
      cidr_block        = "10.0.112.0/20"
    }
  ]

  client_vpn_authorization_rules = [
    {
      target_network_cidr  = var.vpc_ipv4_primary_cidr_block
      authorize_all_groups = true
      description          = "default authorization group to allow all authenticated clients to access the vpc"
    }
  ]
  ## if no vpc endpoint is required then you can remove this block with gateway_endpoint_route_table_filter
  vpc_endpoint_config = {
    s3         = true
    kms        = false
    cloudwatch = false
    elb        = false
    dynamodb   = true
    ec2        = false
    sns        = true
    sqs        = true
  }

  gateway_endpoint_route_table_filter = ["*private*"]

  tags = module.tags.tags
}

```

## Configuring your VPN Client

Please reference the [AWS Documentation](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/cvpn-working-endpoint-export.html) on how to configure the client
once the VPN has been configured in AWS.

The pki keys and certificates can be obtained from the respective SSM parameters and can be used
to generate client certificate for mutual authentication using easy-rsa.

You shall need to copy the ca cert and ca key to:

/path/etc/pki/ca.crt

and

/path/etc/pki/private/ca.key

respectively to use the ca certificate and key generated in this module for mutual auth.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0, >= 4.0.0, >= 4.9.0 |
| <a name="requirement_awsutils"></a> [awsutils](#requirement\_awsutils) | ~> 0.15 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.57.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_client_vpn"></a> [client\_vpn](#module\_client\_vpn) | git::https://github.com/cloudposse/terraform-aws-ec2-client-vpn | 0.14.0 |
| <a name="module_custom_subnets"></a> [custom\_subnets](#module\_custom\_subnets) | ./modules/subnets | n/a |
| <a name="module_private_subnets"></a> [private\_subnets](#module\_private\_subnets) | git::https://github.com/cloudposse/terraform-aws-multi-az-subnets.git | 0.15.0 |
| <a name="module_public_subnets"></a> [public\_subnets](#module\_public\_subnets) | git::https://github.com/cloudposse/terraform-aws-multi-az-subnets.git | 0.15.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/cloudposse/terraform-aws-vpc.git | 2.0.0 |
| <a name="module_vpc_endpoints"></a> [vpc\_endpoints](#module\_vpc\_endpoints) | git::https://github.com/cloudposse/terraform-aws-vpc.git//modules/vpc-endpoints | 2.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_dx_connection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dx_connection) | resource |
| [aws_vpc_endpoint.cloudwatch_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.dynamodb_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.ec2_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.ecs_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.elb_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.kms_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.rds_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.s3_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.sns_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.sqs_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpn_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpn_gateway) | resource |
| [aws_iam_policy_document.dynamodb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_route_tables.gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_tables) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | When `true`, assign AWS generated IPv6 CIDR block to the VPC.  Conflicts with `ipv6_ipam_pool_id`. | `bool` | `true` | no |
| <a name="input_auto_generate_multi_az_subnets"></a> [auto\_generate\_multi\_az\_subnets](#input\_auto\_generate\_multi\_az\_subnets) | Auto-generate subnets in defined availability zones. This value is overridden if the variable `custom_subnets_enabled`<br>is set to `true`. This is to avoid conflicts within the VPC network configuration. | `bool` | `true` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones to deploy resources in. | `list(string)` | n/a | yes |
| <a name="input_aws_dx_connection_name_override"></a> [aws\_dx\_connection\_name\_override](#input\_aws\_dx\_connection\_name\_override) | AWS DX Connection. If left undefined, this will use the naming convention of<br>`namespace-environment-dx-connection`. | `string` | `null` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Specify region for VPC endpoints | `string` | `"us-east-1"` | no |
| <a name="input_client_vpn_allowed_security_group_ids"></a> [client\_vpn\_allowed\_security\_group\_ids](#input\_client\_vpn\_allowed\_security\_group\_ids) | A list of IDs of Security Groups to allow access to the security group created by this module.<br>The length of this list must be known at "plan" time. | `list(string)` | `[]` | no |
| <a name="input_client_vpn_associated_security_group_ids"></a> [client\_vpn\_associated\_security\_group\_ids](#input\_client\_vpn\_associated\_security\_group\_ids) | A list of IDs of Security Groups to associate the VPN endpoints with, in addition to the created security group.<br>These security groups will not be modified and, if `create_security_group` is `false`, must have rules providing the desired access. | `list(string)` | `[]` | no |
| <a name="input_client_vpn_authorization_rules"></a> [client\_vpn\_authorization\_rules](#input\_client\_vpn\_authorization\_rules) | List of objects describing the authorization rules for the client vpn | `list(map(any))` | n/a | yes |
| <a name="input_client_vpn_client_cidr_block"></a> [client\_vpn\_client\_cidr\_block](#input\_client\_vpn\_client\_cidr\_block) | CIDR block to be assigned tpo VPN clients | `string` | `"10.1.0.0/16"` | no |
| <a name="input_client_vpn_create_security_group"></a> [client\_vpn\_create\_security\_group](#input\_client\_vpn\_create\_security\_group) | Set `true` to create and configure a new security group. If false, `associated_security_group_ids` must be provided. | `bool` | `true` | no |
| <a name="input_client_vpn_enabled"></a> [client\_vpn\_enabled](#input\_client\_vpn\_enabled) | Enable client VPN endpoint | `bool` | `false` | no |
| <a name="input_client_vpn_logging_enabled"></a> [client\_vpn\_logging\_enabled](#input\_client\_vpn\_logging\_enabled) | Enable/disable CloudWatch logs for client VPN | `bool` | `true` | no |
| <a name="input_client_vpn_name_override"></a> [client\_vpn\_name\_override](#input\_client\_vpn\_name\_override) | Client VPN Name override. If left undefined, this will use the naming convention of<br>`namespace-environment-client-vpn`. | `string` | `null` | no |
| <a name="input_client_vpn_organization_name"></a> [client\_vpn\_organization\_name](#input\_client\_vpn\_organization\_name) | Organization name for self signed certificates | `string` | `""` | no |
| <a name="input_client_vpn_retention_in_days"></a> [client\_vpn\_retention\_in\_days](#input\_client\_vpn\_retention\_in\_days) | Number of days to retain the client VPN logs on CloudWatch | `number` | `30` | no |
| <a name="input_client_vpn_split_tunnel"></a> [client\_vpn\_split\_tunnel](#input\_client\_vpn\_split\_tunnel) | Enable/disable split tunnel | `bool` | `true` | no |
| <a name="input_cloudwatch_endpoint_name_override"></a> [cloudwatch\_endpoint\_name\_override](#input\_cloudwatch\_endpoint\_name\_override) | CloudWatch endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-cloudwatch-endpoint`. | `string` | `null` | no |
| <a name="input_custom_az_ngw_ids"></a> [custom\_az\_ngw\_ids](#input\_custom\_az\_ngw\_ids) | Only for private subnets. Map of AZ names to NAT Gateway IDs that are used as default routes when creating private subnets.<br>You should either supply one NAT Gateway ID for each AZ in `var.availability_zones` or leave the map empty.<br>If empty, no default egress route will be created and you will have to create your own using `aws_route`. | `map(string)` | `{}` | no |
| <a name="input_custom_create_aws_network_acl"></a> [custom\_create\_aws\_network\_acl](#input\_custom\_create\_aws\_network\_acl) | This indicates whether to create aws network acl or not | `bool` | `false` | no |
| <a name="input_custom_nat_gateway_enabled"></a> [custom\_nat\_gateway\_enabled](#input\_custom\_nat\_gateway\_enabled) | Enable the NAT Gateway between public and private subnets | `bool` | `true` | no |
| <a name="input_custom_private_network_acl_egress"></a> [custom\_private\_network\_acl\_egress](#input\_custom\_private\_network\_acl\_egress) | Egress network ACL rules | <pre>list(object({<br>    rule_no         = number<br>    action          = string<br>    cidr_block      = string<br>    from_port       = number<br>    to_port         = number<br>    protocol        = string<br>    icmp_code       = optional(string, null)<br>    icmp_type       = optional(string, null)<br>    ipv6_cidr_block = optional(string, null)<br>  }))</pre> | <pre>[<br>  {<br>    "action": "allow",<br>    "cidr_block": "0.0.0.0/0",<br>    "from_port": 0,<br>    "protocol": "-1",<br>    "rule_no": 100,<br>    "to_port": 0<br>  }<br>]</pre> | no |
| <a name="input_custom_private_network_acl_ingress"></a> [custom\_private\_network\_acl\_ingress](#input\_custom\_private\_network\_acl\_ingress) | Ingress network ACL rules | <pre>list(object({<br>    rule_no         = number<br>    action          = string<br>    cidr_block      = string<br>    from_port       = number<br>    to_port         = number<br>    protocol        = string<br>    icmp_code       = optional(string, null)<br>    icmp_type       = optional(string, null)<br>    ipv6_cidr_block = optional(string, null)<br>  }))</pre> | <pre>[<br>  {<br>    "action": "allow",<br>    "cidr_block": "0.0.0.0/0",<br>    "from_port": 0,<br>    "protocol": "-1",<br>    "rule_no": 100,<br>    "to_port": 0<br>  }<br>]</pre> | no |
| <a name="input_custom_private_network_acl_subnet_ids"></a> [custom\_private\_network\_acl\_subnet\_ids](#input\_custom\_private\_network\_acl\_subnet\_ids) | Private network ACL Subnet IDs. This is typically unused due to using the `default_network_acl_id`. | `list(string)` | `[]` | no |
| <a name="input_custom_private_route_table_additional_tags"></a> [custom\_private\_route\_table\_additional\_tags](#input\_custom\_private\_route\_table\_additional\_tags) | Additional tags to add to the private route table | `map(string)` | `{}` | no |
| <a name="input_custom_private_subnets"></a> [custom\_private\_subnets](#input\_custom\_private\_subnets) | List of private subnets to add to the VPC | <pre>list(object({<br>    name              = string<br>    availability_zone = string<br>    cidr_block        = string<br>    tags              = optional(map(string), {})<br>  }))</pre> | `[]` | no |
| <a name="input_custom_public_route_table_additional_tags"></a> [custom\_public\_route\_table\_additional\_tags](#input\_custom\_public\_route\_table\_additional\_tags) | Additional tags to add to the public route table | `map(string)` | `{}` | no |
| <a name="input_custom_public_subnets"></a> [custom\_public\_subnets](#input\_custom\_public\_subnets) | List of public subnets to add to the VPC | <pre>list(object({<br>    name                    = string<br>    availability_zone       = string<br>    cidr_block              = string<br>    map_public_ip_on_launch = optional(bool, false)<br>    igw_id                  = optional(string, "")<br>    tags                    = optional(map(string), {})<br>  }))</pre> | `[]` | no |
| <a name="input_custom_route_table_association_enabled"></a> [custom\_route\_table\_association\_enabled](#input\_custom\_route\_table\_association\_enabled) | If the route table has an association. | `bool` | `true` | no |
| <a name="input_custom_subnets_enabled"></a> [custom\_subnets\_enabled](#input\_custom\_subnets\_enabled) | Set to `true` to allow custom subnet configuration.<br>If this is set to `true`, the variable `auto_generate_multi_az_subnets` will be overridden and not create the<br>multi-az subnets. | `bool` | `false` | no |
| <a name="input_default_network_acl_deny_all"></a> [default\_network\_acl\_deny\_all](#input\_default\_network\_acl\_deny\_all) | When `true`, manage the default network acl and remove all rules, disabling all ingress and egress.<br>When `false`, do not mange the default networking acl, allowing it to be managed by another component. | `bool` | `false` | no |
| <a name="input_default_route_table_no_routes"></a> [default\_route\_table\_no\_routes](#input\_default\_route\_table\_no\_routes) | When `true`, manage the default route table and remove all routes, disabling all ingress and egress.<br>When `false`, do not mange the default route table, allowing it to be managed by another component.<br>Conflicts with Terraform resource `aws_main_route_table_association`. | `bool` | `false` | no |
| <a name="input_default_security_group_deny_all"></a> [default\_security\_group\_deny\_all](#input\_default\_security\_group\_deny\_all) | When `true`, manage the default security group and remove all rules, disabling all ingress and egress.<br>When `false`, do not manage the default security group, allowing it to be managed by another component. | `bool` | `true` | no |
| <a name="input_direct_connect_bandwidth"></a> [direct\_connect\_bandwidth](#input\_direct\_connect\_bandwidth) | The bandwidth of the connection.<br>Valid values for dedicated connections: 1Gbps, 10Gbps.<br>Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps and 100Gbps.<br>Case sensitive. | `string` | `"10Gbps"` | no |
| <a name="input_direct_connect_enabled"></a> [direct\_connect\_enabled](#input\_direct\_connect\_enabled) | Enable direct connect. | `bool` | `false` | no |
| <a name="input_direct_connect_encryption_mode"></a> [direct\_connect\_encryption\_mode](#input\_direct\_connect\_encryption\_mode) | The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are no\_encrypt, should\_encrypt, and must\_encrypt. | `string` | `"must_encrypt"` | no |
| <a name="input_direct_connect_location"></a> [direct\_connect\_location](#input\_direct\_connect\_location) | The location of AWS Direct Connect. Use `aws directconnect describe-locations` for the list of AWS Direct Connect locations. Use locationCode for the value. | `string` | `null` | no |
| <a name="input_direct_connect_provider"></a> [direct\_connect\_provider](#input\_direct\_connect\_provider) | The name of the service provider associated with the connection. | `string` | `null` | no |
| <a name="input_direct_connect_request_macsec"></a> [direct\_connect\_request\_macsec](#input\_direct\_connect\_request\_macsec) | Boolean value indicating whether you want the connection to support MAC Security (MACsec).<br>MAC Security (MACsec) is only available on dedicated connections.<br>Changing this value will cause the resource to be destroyed and re-created.<br>See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html) for more information. | `bool` | `false` | no |
| <a name="input_direct_connect_skip_destroy"></a> [direct\_connect\_skip\_destroy](#input\_direct\_connect\_skip\_destroy) | et to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the Terraform state. | `bool` | `false` | no |
| <a name="input_dns_hostnames_enabled"></a> [dns\_hostnames\_enabled](#input\_dns\_hostnames\_enabled) | Set `true` to enable [DNS hostnames](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-dns.html#vpc-dns-hostnames) in the VPC | `bool` | `true` | no |
| <a name="input_dns_support_enabled"></a> [dns\_support\_enabled](#input\_dns\_support\_enabled) | Set `true` to enable DNS resolution in the VPC through the Amazon provided DNS server | `bool` | `true` | no |
| <a name="input_dynamodb_endpoint_name_override"></a> [dynamodb\_endpoint\_name\_override](#input\_dynamodb\_endpoint\_name\_override) | DynamoDB endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-dynamodb-endpoint`. | `string` | `null` | no |
| <a name="input_ec2_endpoint_name_override"></a> [ec2\_endpoint\_name\_override](#input\_ec2\_endpoint\_name\_override) | EC2 endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-ec2-endpoint`. | `string` | `null` | no |
| <a name="input_ecs_endpoint_name_override"></a> [ecs\_endpoint\_name\_override](#input\_ecs\_endpoint\_name\_override) | ECS endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-ecs-endpoint`. | `string` | `null` | no |
| <a name="input_elb_endpoint_name_override"></a> [elb\_endpoint\_name\_override](#input\_elb\_endpoint\_name\_override) | ELB endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-elb-endpoint`. | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment, i.e. dev, stage, prod | `string` | n/a | yes |
| <a name="input_gateway_endpoint_route_table_filter"></a> [gateway\_endpoint\_route\_table\_filter](#input\_gateway\_endpoint\_route\_table\_filter) | List of strings to filter route tables , eg [ '*private*' , '*public*' ] | `list(string)` | `[]` | no |
| <a name="input_gateway_vpc_endpoints"></a> [gateway\_vpc\_endpoints](#input\_gateway\_vpc\_endpoints) | A map of Gateway VPC Endpoints to provision into the VPC. This is a map of objects with the following attributes:<br>- `name`: Short service name (either "s3" or "dynamodb")<br>- `policy` = A policy (as JSON string) to attach to the endpoint that controls access to the service. May be `null` for full access.<br>- `route_table_ids`: List of route tables to associate the gateway with. Routes to the gateway<br>  will be automatically added to these route tables. | <pre>map(object({<br>    name            = string<br>    policy          = string<br>    route_table_ids = list(string)<br>  }))</pre> | `{}` | no |
| <a name="input_interface_vpc_endpoints"></a> [interface\_vpc\_endpoints](#input\_interface\_vpc\_endpoints) | A map of Interface VPC Endpoints to provision into the VPC.<br>This is a map of objects with the following attributes:<br>- `name`: Simple name of the service, like "ec2" or "redshift"<br>- `policy`: A policy (as JSON string) to attach to the endpoint that controls access to the service. May be `null` for full access.<br>- `private_dns_enabled`: Set `true` to associate a private hosted zone with the specified VPC<br>- `security_group_ids`: The ID of one or more security groups to associate with the network interface. The first<br>  security group will replace the default association with the VPC's default security group. If you want<br>  to maintain the association with the default security group, either leave `security_group_ids` empty or<br>  include the default security group ID in the list.<br>- `subnet_ids`: List of subnet in which to install the endpoints. | <pre>map(object({<br>    name                = string<br>    policy              = string<br>    private_dns_enabled = bool<br>    security_group_ids  = list(string)<br>    subnet_ids          = list(string)<br>  }))</pre> | `{}` | no |
| <a name="input_internet_gateway_enabled"></a> [internet\_gateway\_enabled](#input\_internet\_gateway\_enabled) | Set `true` to create an Internet Gateway for the VPC | `bool` | `true` | no |
| <a name="input_ipv6_egress_only_internet_gateway_enabled"></a> [ipv6\_egress\_only\_internet\_gateway\_enabled](#input\_ipv6\_egress\_only\_internet\_gateway\_enabled) | Set `true` to create an IPv6 Egress-Only Internet Gateway for the VPC | `bool` | `false` | no |
| <a name="input_kms_endpoint_name_override"></a> [kms\_endpoint\_name\_override](#input\_kms\_endpoint\_name\_override) | KMS Endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-kms-endpoint.<br>` | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the project, i.e. refarch | `string` | n/a | yes |
| <a name="input_private_dns_enabled"></a> [private\_dns\_enabled](#input\_private\_dns\_enabled) | Whether to enable Private DNS for the endpoint(s) | `bool` | `true` | no |
| <a name="input_private_subnet_name_override"></a> [private\_subnet\_name\_override](#input\_private\_subnet\_name\_override) | Private Subnets name. If left undefined, this will use the naming convention of<br>`namespace-environment-private-subnet`. | `string` | `null` | no |
| <a name="input_public_subnet_name_override"></a> [public\_subnet\_name\_override](#input\_public\_subnet\_name\_override) | Public Subnets name. If left undefined, this will use the naming convention of<br>`namespace-environment-public-subnet`. | `string` | `null` | no |
| <a name="input_rds_endpoint_name_override"></a> [rds\_endpoint\_name\_override](#input\_rds\_endpoint\_name\_override) | RDS endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-rds-endpoint`. | `string` | `null` | no |
| <a name="input_s3_endpoint_name_override"></a> [s3\_endpoint\_name\_override](#input\_s3\_endpoint\_name\_override) | S3 endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-s3-endpoint`. | `string` | `null` | no |
| <a name="input_sns_endpoint_name_override"></a> [sns\_endpoint\_name\_override](#input\_sns\_endpoint\_name\_override) | SNS endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-sns-endpoint`. | `string` | `null` | no |
| <a name="input_sqs_endpoint_name_override"></a> [sqs\_endpoint\_name\_override](#input\_sqs\_endpoint\_name\_override) | SQS endpoint name. If left undefined, this will use the naming convention of<br>`namespace-environment-sqs-endpoint`. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to apply to every resource | `map(string)` | n/a | yes |
| <a name="input_vpc_endpoint_config"></a> [vpc\_endpoint\_config](#input\_vpc\_endpoint\_config) | Map variable that toggles the enablement of an application | `map(bool)` | <pre>{<br>  "cloudwatch": false,<br>  "dynamodb": false,<br>  "ec2": false,<br>  "ecs": false,<br>  "elb": false,<br>  "kms": false,<br>  "rds": false,<br>  "s3": false,<br>  "sns": false,<br>  "sqs": false<br>}</pre> | no |
| <a name="input_vpc_endpoint_type"></a> [vpc\_endpoint\_type](#input\_vpc\_endpoint\_type) | The VPC endpoint type, Gateway, GatewayLoadBalancer, or Interface. | `string` | `"Interface"` | no |
| <a name="input_vpc_endpoints_enabled"></a> [vpc\_endpoints\_enabled](#input\_vpc\_endpoints\_enabled) | Enable VPC endpoints. | `bool` | `false` | no |
| <a name="input_vpc_ipv4_primary_cidr_block"></a> [vpc\_ipv4\_primary\_cidr\_block](#input\_vpc\_ipv4\_primary\_cidr\_block) | IPv4 CIDR block for the VPC to use. | `string` | n/a | yes |
| <a name="input_vpc_name_override"></a> [vpc\_name\_override](#input\_vpc\_name\_override) | VPC Name override. If left undefined, this will use the naming convention of<br>`namespace-environment-vpc`. | `string` | `null` | no |
| <a name="input_vpn_gateway_enabled"></a> [vpn\_gateway\_enabled](#input\_vpn\_gateway\_enabled) | Enable VPN Gateway. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_route_table_id"></a> [default\_route\_table\_id](#output\_default\_route\_table\_id) | The Default Route Table ID for the VPC |
| <a name="output_full_client_configuration"></a> [full\_client\_configuration](#output\_full\_client\_configuration) | Client configuration including client certificate and private key |
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | Internet gateway ID for the VPC |
| <a name="output_main_route_table_id"></a> [main\_route\_table\_id](#output\_main\_route\_table\_id) | The Main Route Table ID for the VPC |
| <a name="output_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#output\_private\_subnet\_cidrs) | Private subnet CIDRs |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private subnet IDs |
| <a name="output_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#output\_public\_subnet\_cidrs) | Public subnet CIDRs |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public subnet IDs |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | The VPC CIDR block |
| <a name="output_vpc_default_network_acl_id"></a> [vpc\_default\_network\_acl\_id](#output\_vpc\_default\_network\_acl\_id) | The ID of the network ACL created by default on VPC creation |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The VPC ID |
| <a name="output_vpn_endpoint_arn"></a> [vpn\_endpoint\_arn](#output\_vpn\_endpoint\_arn) | The ARN of the Client VPN Endpoint Connection. |
| <a name="output_vpn_endpoint_dns_name"></a> [vpn\_endpoint\_dns\_name](#output\_vpn\_endpoint\_dns\_name) | The DNS Name of the Client VPN Endpoint Connection. |
| <a name="output_vpn_subnets"></a> [vpn\_subnets](#output\_vpn\_subnets) | subnets associated with the VPN |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Prerequisites
- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations
- Configure pre-commit hooks
  ```sh
  pre-commit install
  ```
- Configure golang deps for tests
  ```sh
  go get github.com/gruntwork-io/terratest/modules/terraform
  go get github.com/stretchr/testify/assert
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
- In the test directory, run the below command
  ```sh
  go test -timeout 1800s
  ```

## Authors
This project is authored by:
- SourceFuse
