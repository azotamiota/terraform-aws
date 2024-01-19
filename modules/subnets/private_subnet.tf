resource "aws_subnet" "private_test_subnet" {
  count             = length(var.private_subnets)
  vpc_id            = var.vpc_id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, var.newbits, var.private_subnets[count.index])
  availability_zone = element(var.azs, count.index)
  tags = merge(var.tags,
    tomap({ "Name" = "private-test-subnet-${count.index}" })
  )
}
