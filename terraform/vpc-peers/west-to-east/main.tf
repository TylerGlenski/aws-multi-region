resource "aws_vpc_peering_connection" "uswest-to-useast" {
  peer_vpc_id   = "${data.terraform_remote_state.useast-vpc.outputs.vpc-east-dev.id}"
  vpc_id        = "${data.terraform_remote_state.uswest-vpc.outputs.vpc-west-dev.id}"

  tags = {
    Name = "VPC Peering between uswest and useast"
  }
  peer_region   = "us-east-1"
}