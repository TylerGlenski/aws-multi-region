terraform {
  backend "s3" {
    bucket = "global-terraform-state-tyler-01"
    key    = "ec2/useast1/main.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "global" {
  backend = "s3"

  config = {
    bucket = "global-terraform-state-tyler-01"
    key    = "global/variables/main.tfstate"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "global-terraform-state-tyler-01"
    key    = "vpc/useast-dev/main.tfstate"
  }
}

variable "aws_region" {
  default = "us-west-2"
}