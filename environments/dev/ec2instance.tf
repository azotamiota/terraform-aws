# module "ec2" {
#   source    = "../../modules/ec2"
#   # subnet_id = module.public_subnet.id
#   ami       = var.ami
#   #   for_each          = toset(data.aws_availability_zones.awsazs.names)
#   tags = merge(var.tags,
#     # tomap({"Name" = "tf-test-ec2-vm-${each.key}"))
#     tomap({ "Name" = "tf-test-ec2-vm-" })
#   )
# }