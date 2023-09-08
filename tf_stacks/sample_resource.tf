#Defines the resource block "aws_instance" giving it the local name "web"
#Local names are used to refer to this resource in any other code block.
#This particular resource block tries to deploy an EC2 instance
#with a particular ami and instance_type.
  

resource "aws_instance" "web" {
    ami           = "ami-a1b2c3d4"
    instance_type = "t2.micro"
}
