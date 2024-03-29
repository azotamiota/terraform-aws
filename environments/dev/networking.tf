module "dev_vpc" {
  source = "../../modules/vpc"
  vpc_name = var.vpc_name
  tags   = merge(var.tags, tomap({ "Name" = "Test-Dev-VPC" }))
}

module "subnets" {
  source            = "../../modules/subnets"
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  subnet_cidr_block = var.subnet_cidr_block
  newbits           = var.newbits
  vpc_id            = module.dev_vpc.vpc_id
  tags              = merge(var.tags, tomap({ "Name" = "Dev-Private-Subnet" }))
  azs               = var.cluster_azs
  vpc_cidr_block    = module.dev_vpc.vpc_cidr_block
}

# module "public_subnet" {
#   source = "../../modules/subnet"
#   vpc_id = module.dev_vpc.vpc_id
#   tags   = merge(var.tags, tomap({"Name" = "Dev-Public-Subnet"}))
# }