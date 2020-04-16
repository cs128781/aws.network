## Main file for network infrastructure for aws provisionign##

provider "aws" {
    region=var.region
    version = "~> 2.4"
}

