terraform {
    backend "s3" {
        bucket = "terraform-state-dev"
        key    = "network/terraform.tfstate"
        region = "us-east-1"
    }
}

data "terraform_remote_state" "example" {
    backend = "s3"
    config = {
        bucket = "terraform-state-dev"
        key    = "network/terraform.tf.state"
        region = "us-east-1"
    }
}

#terraform_remote_state data source will return the following:
#data.terraform_remote_state.example:
#    id = 2023-09-08 19:01:59.000000000 +0000 UTC
#    addresses.# = 2
#    addresses.0 = XX.XX.XX.XXX
#    addresses.1 = XXX.XX.XXX.XX
#    backend = s3
#    config.% = 3
#    config.bucket = terraform-state-dev
#    config.key = network/terraform.tfstate
#    config.region = us-east-1
#    elb_address = web-elb-123456789.us-east-1.elb.amazonaws.com
#    public_subnet_id = subnet-1a2b3c4d
