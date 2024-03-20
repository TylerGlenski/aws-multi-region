module "vpc-uswest-dev" {
  source           = "../../modules//vpc"
  env              = "dev"
  cidr_prefix      = data.terraform_remote_state.global.outputs.uswest_cidr_prefix
  aws_region       = "us-west-2"
}
