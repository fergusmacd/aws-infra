resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name        = "vpc management"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}