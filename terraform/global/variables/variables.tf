terraform {
  backend "s3" {
    bucket = "global-terraform-state-tyler-01"
    key    = "global/variables/main.tfstate"
    region = "us-east-1"
  }
}