terraform {
    #Constrain terraform to a specific version or range of versions to prevent major breaking changes
    #If not specified, TF downloads the most recent provider during "terraform init"
    required_version = ">= 1.0"

    #Sets what is listed below for every child module, allowing for easy update for version"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.35.0"
        }
    }
}
provider "aws" {
    #optional region. If unspecified, it defaults to whatever region is default for your AWS environment.
    region          = "us-east-1"
    #AWS Access Key ID and Secret Access Key environmental variable or shared credentials file.
    #Better to pass this during runtime or define it in an environmental variable.
    access_key      = "..."
    secret_key      = "..."
}
