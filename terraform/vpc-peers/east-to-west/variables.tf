variable "env" {
  default = "dev"
}

terraform {
  backend "s3" {
    bucket = "global-terraform-state-tyler-01"
    key    = "vpc/peers/main.tfstate"
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

data "terraform_remote_state" "uswest-vpc" {
  backend = "s3"

  config = {
    bucket = "global-terraform-state-tyler-01"
    key    = "vpc/uswest-dev/main.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "useast-vpc" {
  backend = "s3"

  config = {
    bucket = "global-terraform-state-tyler-01"
    key    = "vpc/useast-dev/main.tfstate"
    region = "us-east-1"
  }
}