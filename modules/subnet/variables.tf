# variable "public_subnet_cidr_block" {
#     description = "CIDR block"
# }

variable "subnet_cidr_block" {
    description = "CIDR block"
}

variable "vpc_id" {
    description = "VPC ID number"
}

variable "tags" {
    type = map
}
