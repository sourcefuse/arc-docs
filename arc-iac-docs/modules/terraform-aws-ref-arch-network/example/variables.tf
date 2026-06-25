################################################################
## shared
################################################################
variable "environment" {
  type        = string
  description = "Name of the environment, i.e. dev, stage, prod"
  default     = "dev"
}

variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "namespace" {
  type        = string
  description = "Namespace of the project, i.e. refarch"
  default     = "example"
}

variable "profile" {
  type        = string
  description = "AWS profile"
  default     = "default"
}

################################################################
## network
################################################################
variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to deploy resources in."
  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}

variable "vpc_ipv4_primary_cidr_block" {
  type        = string
  description = "IPv4 CIDR block for the VPC to use."
  default     = "10.9.0.0/16"
}
