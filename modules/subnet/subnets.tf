resource "aws_subnet" "test_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block
  tags = tomap(var.tags)
}
