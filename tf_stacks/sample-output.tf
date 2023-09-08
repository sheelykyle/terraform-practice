# To Create AWS VPC, placed in main.tf or something else named vpc.tf
resource "aws_vpc" "terraform-vpc" {
    cidr_block          = "10.0.0.0/16"
    instance_tenancy    = "default"
    tags = {
        Environment     = "Terraform-lab"
    }
}

#Validate the respect output following creation of the AWS VPC
output "id" {
    value = aws_vpc.terraform-vpc.owner_id
}
output "cidr_block" {
    value = aws_vpc.terraform-vpc.cidr_block
}

#Grab the VPC ID and the CIDR block from the validation output block and define them in variables
resource "aws_subnet" "terraform-subnet" {
    vpc_id             = aws_vpc.terraform-vpc.id
    cidr_block         = "10.0.0.0/24"

    tags = {
        Environment    = "Terraform-lab"
    }
}
