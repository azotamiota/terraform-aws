module "dev_vpc" {
  source = "../../modules/vpc"
  tags   = merge(var.tags, tomap({ "Name" = "Dev-VPC" }))
}

module "private_subnet" {
  source            = "../../modules/subnet"
  subnet_cidr_block = var.subnet_cidr_block
  vpc_id            = module.dev_vpc.vpc_id
  tags              = merge(var.tags, tomap({ "Name" = "Dev-Private-Subnet" }))
}

# module "public_subnet" {
#   source = "../../modules/subnet"
#   vpc_id = module.dev_vpc.vpc_id
#   tags   = merge(var.tags, tomap({"Name" = "Dev-Public-Subnet"}))
# }