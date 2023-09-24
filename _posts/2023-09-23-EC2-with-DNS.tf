# Below is a template EC2 instance with an applied security group and DNS record based upon a preexisting hosted zone

# Region
provider "aws" {
    region = "us-east-1"
}

# EC2 Instance
resource "aws_instance" "ec2-instance" {
    ami                     = "ami-string"
    instance_type           = "t2.micro"
    key_name                = "ec2-key"
    vpc_security_group_ids = [data.aws_security_group.security-group.id]
    user_data = file("boot_script.sh")
        
    tags = {
        Name = "ec2-name"
    }
}

# SSH Key Pair
resource "aws_key_pair" "ec2-key" {
    key_name = "ec2-key"
    public_key = file("key_file.pub")

}

# References Security Group
data "aws_security_group" "security-group" {
    name = "security_group_string"
}

# References Route53 Hosted Zone
data "aws_route53_zone" "dns-zone" {
    name = "domain.com."
}

# Creates New DNS Record
resource "aws_route53_record" "dns-record" {
  zone_id = "zone_id_string"
  name    = "sub.domain.com"
  type    = "type_string"
  ttl     = <ttl_integer>
  records = [aws_instance.ec2-instance.public_ip] 
}
