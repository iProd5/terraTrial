variable "region" {
    default = "us-east-2" #this replace region 
}

variable "vpc_cidr" {
  default = "190.160.0.0/24" #this replace the vpc_cidr 
}

variable "subnet_cidr" {
    default = "190.160.1.0/24"  #this replaces the subnet_cidr
}

variable "diffZones" {
  type = "list"
  default = ["us-east-2a","us-east-2b", "us-east-2a"] #this represent all othe three zones
  
}



