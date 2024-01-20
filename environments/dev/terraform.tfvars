vpc_name          = "test-dev-vpc"
# cidr_block        = "10.166.0.0/16"
subnet_cidr_block = "10.166.0.0/24"
private_subnets   = ["0", "1", "2"]
public_subnets    = ["3", "4", "5"]
# private_subnet_cidr_block = "10.166.1.0/24"
# subnet_id = "ami-062a49a8152e4c031"
tags = {
  Charge_code   = "12345"
  Service_owner = "Evernor"
  Environment   = "dev"
}