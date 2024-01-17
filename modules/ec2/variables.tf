variable "subnet_id" {
    type = string
}

variable "ami" {
    type = string
}

variable "tags" {
    type = map
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}