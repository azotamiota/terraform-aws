module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = var.cidr_block
  tags       = tomap(var.tags)
}

# module "public_subnet" {
#   source            = "../../modules/subnet"
#   subnet_cidr_block = var.subnet_cidr_block
#   tags = merge(var.tags,
#     tomap({ "Name" = "test-public-subnet" })
#   )
# }

# module "private_subnet" {
#   source     = "../../modules/subnet"
#   cidr_block = var.private_subnet_cidr_block
#   vpc_id     = module.vpc.id
# }