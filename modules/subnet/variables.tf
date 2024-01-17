# variable "public_subnet_cidr_block" {
#     description = "CIDR block"
# }

# variable "private_subnet_cidr_block" {
#     description = "CIDR block"
# }

variable "vpc_id" {
    description = "VPC ID number"
}

variable "subnet_cidr_block" {
    type = string
}

variable "tags" {
    type = map
}
