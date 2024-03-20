module "useast-dev" {
  source           = "../../modules//vpc"
  env              = "dev"
  cidr_prefix      = data.terraform_remote_state.global.outputs.useast_cidr_prefix
  aws_region       = "us-east-1"
}