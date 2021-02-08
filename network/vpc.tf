resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "vpc management"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}
