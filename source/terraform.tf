terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "worthstatebucket"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

resource "aws_s3_bucket" "worth_state_bucket" {
  bucket = "worthstatebucket"
}