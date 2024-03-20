terraform {
  backend "s3" {
    bucket = "global-terraform-state-tyler-01"
    key    = "ec2/uswest2/main.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "global" {
  backend = "s3"

  config = {
    bucket = "global-terraform-state-tyler-01"
    key    = "global/variables/main.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "global-terraform-state-tyler-01"
    key    = "vpc/uswest-dev/main.tfstate"
    region = "us-east-1"
  }
}

variable "aws_region" {
  default = "us-west-2"
}