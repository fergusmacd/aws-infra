
network_defaults = {
  vpc_cidr = "10.14.0.0/23"

  subnet_public_cidrs = [
    "10.14.1.64/26",
    "10.14.1.128/26",
  "10.14.1.192/26"]
  subnet_public_azs = [
    "us-west-2a",
    "us-west-2b",
  "us-west-2c"]

  subnet_private_cidrs = [
    "10.14.0.64/26",
    "10.14.0.128/26",
  "10.14.0.192/26"]
  subnet_private_azs = [
    "us-west-2a",
    "us-west-2b",
  "us-west-2c"]
}
