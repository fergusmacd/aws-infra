resource "aws_route_table" "nat_routetab" {
  vpc_id = aws_vpc.default.id
  count  = length(var.network_defaults.subnet_private_cidrs)

//  route {
//    cidr_block = "0.0.0.0/0"
//    gateway_id = element(aws_nat_gateway.nat.*.id, count.index)
//  }

  tags = {
    Name        = "${count.index} private routes for ${var.project_name}"
    Project     = var.project_name
    Environment = var.environment
    Region      = var.region
  }
}

# Associate private subnet to private route table
resource "aws_route_table_association" "private" {
  count          = length(var.network_defaults.subnet_private_cidrs)
  subnet_id      = element(aws_subnet.private_subnet.*.id, count.index)
  route_table_id = element(aws_route_table.nat_routetab.*.id, count.index)
}
