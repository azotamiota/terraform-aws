

output "public_subnet_ids" {
  value = aws_subnet.public_test_subnet.*.id
}

output "private_subnet_ids" {
  value = aws_subnet.private_test_subnet.*.id
}