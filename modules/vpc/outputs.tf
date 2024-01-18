output "vpc_id" {
  value = aws_vpc.vpc_module.id
}

output "vpc_cidr_block" {
  value = var.vpc_cidr_block
}