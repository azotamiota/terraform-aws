variable "vpc_cidr_block" {
    description = "CIDR block for VPC"
    type = string
    default = "10.166.0.0/16"
}

variable "tags" {
    type = map
}