## last viewed 9/2/2021
resource "aws_vpc" "default" {
  cidr_block           = var.network_defaults.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "vpc for ${var.project_name}"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}
