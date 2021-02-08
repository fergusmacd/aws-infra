#### These variables are read from the incoming from the terraform call inside terraform-wrapper.sh
## Project and environment values
variable "project_name" {
}

variable "region" {
}

variable "environment" {
}

### Module specific information
## VPC
variable "vpc_cidr" {
}

## public_subnet_bastion
variable "subnet_public_cidrs" {
  type = list(string)
}

variable "subnet_public_azs" {
  type = list(string)
}

## private subnet
variable "subnet_private_cidrs" {
  type = list(string)
}

variable "subnet_private_azs" {
  type = list(string)
}

