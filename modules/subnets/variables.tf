variable "vpc_cidr_block" {
  description = "VPC CIDR to create subnets in"
}

variable "subnet_cidr_block" {
  description = "CIDR block"
}

variable "vpc_id" {
  description = "VPC ID number"
}

variable "tags" {
  type = map(any)
}

variable "private_subnets" {
  description = "List of CIDRs to create for private subnets"
  type        = list(any)
}

variable "public_subnets" {
  description = "List of CIDRs to create for private subnets"
  type        = list(any)
}

variable "azs" {
  description = "List of AZ-s in the region"
  type        = list(any)
  default     = []
}

variable "newbits" {
  description = "Number of bits to increment the cidr over the vpc_cidr"
}