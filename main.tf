terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "jack/act-3.2-1/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "jack-cicd-workshop-"
}