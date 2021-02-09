## last viewed 9/2/2021
resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name        = "Internet GGW for ${var.project_name}"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}