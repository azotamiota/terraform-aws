resource "aws_vpc" "vpc_module" {
  cidr_block = var.vpc_cidr_block
  tags       = tomap(var.tags)
}

# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.vpc_module.id
#   tags = merge(var.tags,
#     tomap({"Name" = "${aws_vpc.vpc_module.id}-internet-gateway"})
#   )
# }