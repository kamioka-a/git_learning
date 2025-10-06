resource "aws_vpc" "tf_practice" {
  cidr_block = var.vpc_cidr
}
variables "subnet_cidrs" {
  type = list(string)
}

resource "aws_subnet" "tf_practice" {
  vpc_id = aws_vpc.tf_practice.id
  cidr_block = "10.1.10.0/24"
}


resource "aws_subnet" "tf_practice" {
  count = length(var.subnet_cidrs)
  cidr_block = var.subnet_cidrs[count.index]
}

