resource "aws_vpc" "vpc_module" {
  cidr_block       = var.cidr_block
  tags = tomap(var.tags)
}

# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.vpc_module.id
#   tags = tomap(var.tags)
# }