variable "env" {
  default = "dev"
}

terraform {
  backend "s3" {
    bucket = "global-terraform-state-tyler-01"
    key    = "vpc/useast-dev/main.tfstate"
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