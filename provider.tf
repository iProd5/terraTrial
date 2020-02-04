provider "aws" {
  region  = "${var.region}"
  #since envs has been set for aws, there
  #is no need to repeat them here again 
}
#resource has a name and a logical name 
resource "aws_vpc" "main" {
#   define attributes
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"


#tags can be set for almost any resource in aws
  tags = {
    Name = "main"
  }
}

# aws_subnet resource
resource "aws_subnet" "subnet1" {

    #using interpolation to get the id of vpc. {name.logical_name.attr(id)}#
 vpc_id     = "${aws_vpc.main.id}" 
 cidr_block = "${var.subnet_cidr}"
 
 tags = {
    Name = "Subnet1"
  }
  
}

#this seem be be okay but all i am doing here is hardcording what i want
#what if i could parameterise the whole thing



