#References the existing VPC
variable "vpc_id" {}
data "aws_vpc" "example" {
    id = var.vpc_id
}
#Creates a new subnet inside the existing VPC
resource "aws_subnet" "example" {
    vpc_id              = data.aws_vpc.example.id
    availability_zone   = "us-west-2a"
    cidr_block          = cidrsubnet (data.aws_vpc.example.cidr_block, 4, 1)
}
