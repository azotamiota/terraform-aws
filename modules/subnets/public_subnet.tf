resource "aws_subnet" "public_test_subnet" {
  count = length(var.public_subnets)
  vpc_id     = var.vpc_id
  cidr_block = cidrsubnet(var.vpc_id,var.newbits,var.private_subnets[count.index])
  availability_zone = element(var.azs, count.index)
  tags = merge(var.tags,
    tomap({"Name" = "public-test-subnet-${count.index}"})
  )
}
