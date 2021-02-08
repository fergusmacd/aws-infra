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
//variable "vpc_cidr" {
//  description = "The VPC cidr range - make sure they don't clash with another VPC"
//  default     = "10.14.0.0/23"
//}

variable "network_defaults" {
  description = "Default types for the networking"

  type = object({
    vpc_cidr             = string
    subnet_public_cidrs  = list(string)
    subnet_public_azs    = list(string)
    subnet_private_cidrs = list(string)
    subnet_private_azs   = list(string)
  })
}
