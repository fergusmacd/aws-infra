## last viewed 9/2/2021
## Create a route to the internet
resource "aws_route" "internet_access" {
  route_table_id         = aws_vpc.default.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default.id
}

resource "aws_eip" "eip" {
  vpc        = true
  count      = length(var.network_defaults.subnet_private_cidrs)
  depends_on = [aws_internet_gateway.default]
  tags = {
    Name        = "${count.index} elastic IP for ${var.project_name}"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}

resource "aws_nat_gateway" "nat" {
  count         = length(var.network_defaults.subnet_public_cidrs)
  allocation_id = element(aws_eip.eip.*.id, count.index)
  subnet_id     = element(aws_subnet.public_subnet.*.id, count.index)

  tags = {
    Name        = "${count.index} nat gateway for ${var.project_name}"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
  depends_on = [aws_internet_gateway.default]
}

# Associate public subnet to private route table
resource "aws_route_table_association" "public" {
  count          = length(var.network_defaults.subnet_public_cidrs)
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_vpc.default.main_route_table_id
}