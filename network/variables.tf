#### These variables are read from the incoming from the terraform call inside terraform-wrapper.sh
## Project and environment values
variable "project_name" {
  description = "A description of what the project will do"
  default     = "Photos server - to display my photos!"
}

variable "region" {
  description = "The aws region we run in."
  default     = "us-west-2"
}

variable "environment" {
  description = "The environment we are running in"
  default     = "demo"
}

### Module specific information
## VPC
variable "vpc_cidr" {
  description = "The VPC cidr range - make sure they don't clash with another VPC"
  default     = "10.14.0.0/23"
}

## public_subnet_bastion
variable "subnet_public_cidrs" {
  type    = list(string)
  default = ["10.14.1.64/26", "10.14.1.128/26", "10.14.1.192/26"]
}

variable "subnet_public_azs" {
  type    = list(string)
  default = ["ap-northeast-1b", "ap-northeast-1c", "ap-northeast-1d"]
}

## private subnet
variable "subnet_private_cidrs" {
  type    = list(string)
  default = ["10.14.0.64/26", "10.14.0.128/26", "10.14.0.192/26"]
}

variable "subnet_private_azs" {
  type    = list(string)
  default = ["ap-northeast-1b", "ap-northeast-1c", "ap-northeast-1d"]
}
