resource "aws_instance" "ec2" {
  subnet_id     = var.subnet_id
  ami           = var.ami # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instance_type
  #   for_each          = toset(data.aws_availability_zones.awsazs.names)
  #   availability_zone = each.key

  tags = tomap(var.tags)
}