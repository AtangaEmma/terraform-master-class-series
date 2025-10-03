terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "demo"
    key    = "ec2/terraform.tfstate"
    region = "us-west-2"
  }
}
