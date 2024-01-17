output "vpc_id" {
  value = aws_vpc.vpc_module.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc_module.cidr_block
}