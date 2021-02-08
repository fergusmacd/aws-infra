#### These variables are read from the incoming from the terraform call inside terraform-wrapper.sh
## Project and environment values
variable "project_name" {
  description = "A description of what the project will do"
  default = "Photos server - to display my photos!"
}

variable "region" {
  description = "The aws region we run in."
  default = "us-west-2"
}

variable "environment" {
  description = "The environment we are running in"
  default = "demo"
}

### Module specific information
## VPC
variable "vpc_cidr" {
  description = ""
  default = "10.14.0.0/23"
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

