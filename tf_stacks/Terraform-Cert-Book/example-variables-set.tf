#What would be in the main.tf or aws-ec2.tf file
resource "aws_instance" "web" {
    ami           = var.ami
    instance_type = var.instance_type
}


#What would exist in a variables.tf file
variable "ami" {
    description  = "Name of the AMI"
    type         = string
}
variable "instance_type" {
    description  = "Name of the instance type"
    type         = string
}

#Define the variables in the terraform.tfvars file
ami              = "ami-a1b2c3d4"
instance_type    = "t2.micro"
