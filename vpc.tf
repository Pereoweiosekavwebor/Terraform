resource "aws_vpc" "tf_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tf_vpc"
  }
}
resource "aws_subnet" "tf_pubsubnet" {
  vpc_id     = "${aws_vpc.tf_vpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "tf_pubsubnet"
  }
}