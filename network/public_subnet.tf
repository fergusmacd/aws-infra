resource "aws_subnet" "public_subnet" {
  count                   = length(var.network_defaults.subnet_public_cidrs)
  vpc_id                  = aws_vpc.default.id
  cidr_block              = element(var.network_defaults.subnet_public_cidrs, count.index)
  map_public_ip_on_launch = "false"
  availability_zone       = element(var.network_defaults.subnet_public_azs, count.index)

  tags = {
    Name        = "vpc management"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}