provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "motivational-ec2" {
    ami           = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name      = "motivational-key"

    tags = {
        name = "motivational-generator"
    }
}

