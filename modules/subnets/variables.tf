variable "subnet_cidr_block" {
    description = "CIDR block"
}

variable "vpc_id" {
    description = "VPC ID number"
}

variable "tags" {
    type = map
}

variable "private_subnets" {
    description = "List of CIDRs to create for private subnets"
    type = list
}

variable "public_subnets" {
    description = "List of CIDRs to create for private subnets"
    type = list
}

variable "azs" {
    description = "List of AZ-s in the region"
    type = list
    default = []
}

variable "newbits" {
    description = "Number of bits to increment the cidr over the vpc_cidr"
}