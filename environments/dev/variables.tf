variable "subnet_cidr_block" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "private_subnets" {
  description = "List of CIDRs to create for private subnets"
  type        = list(any)
}

variable "public_subnets" {
  description = "List of CIDRs to create for public subnets"
  type        = list(any)
}

variable "cluster_azs" {
  description = "List of AZ-s in the cluster's region"
  type        = list(any)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "newbits" {
  description = "Number of bits to increment the cidr over the vpc_cidr"
  type        = number
  default     = 8
}

variable "vpc_name" {
  description = "The name of the VPC"
  type = string
}