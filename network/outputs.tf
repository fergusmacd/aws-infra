output "vpc_id" {
  value = aws_vpc.default.id
}
output "vpc_id_cidr" {
  value = aws_vpc.default.cidr_block
}

//# From IGW
//output "internet_gateway_id" {
//  value = "${aws_internet_gateway.default.id}"
//}
//
//# From public_subnet_bastion
//output "subnet_public_ids" {
//  value = ["${aws_subnet.public_subnet.*.id}"]
//}
//
//output "public_subnet_cidrs" {
//  value = ["${aws_subnet.public_subnet.*.cidr_block}"]
//}
//
//output "public_subnet_azs" {
//  value = ["${aws_subnet.public_subnet.*.availability_zone}"]
//}
//
//output "public_subnet_names" {
//  value = ["${aws_subnet.public_subnet.*.tags.Name}"]
//}
//
//output "subnet_priv_ids" {
//  value = ["${aws_subnet.private_subnet.*.id}"]
//}
//
//output "private_subnet_cidrs" {
//  value = ["${aws_subnet.private_subnet.*.cidr_block}"]
//}
//
//output "private_subnet_azs" {
//  value = ["${aws_subnet.private_subnet.*.availability_zone}"]
//}
//
//output "private_subnet_names" {
//  value = ["${aws_subnet.private_subnet.*.tags.Name}"]
//}
//
//## Route tab output
//output "priv_routetab_id" {
//  value = "${aws_route_table.nat_routetab.*.id}"
//}
//
//# EIPS for private route table
//output "eip_ids" {
//  value = "${aws_eip.eip.*.id}"
//}
