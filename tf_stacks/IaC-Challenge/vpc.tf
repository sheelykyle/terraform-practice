#Creates VPC
resource "aws_vpc" "motivational_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Motivational VPC"
  }
}

data "aws_vpc" "motivational_vpc" {
    id = var.vpc_id
}

#Create subnets in the first two available availability zones
resource "aws_subnet" "primary" {
  vpc_id            = data.aws_vpc.motivational_vpc.id
  availability_zone = "us-east-1a"

}

resource "aws_subnet" "secondary" {
  vpc_id            = data.aws_vpc.motivational_vpc.id
  availability_zone = "us-east-1b"
}
