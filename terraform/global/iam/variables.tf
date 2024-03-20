terraform {
  backend "s3" {
    bucket = "global-terraform-state-tyler-01"
    key    = "global/iam/main.tfstate"
  }
}