resource "aws_vpc_peering_connection" "useast-to-uswest" {
  peer_vpc_id   = "${data.terraform_remote_state.uswest-vpc.outputs.vpc-west-dev.id}"
  vpc_id        = "${data.terraform_remote_state.useast-vpc.outputs.vpc-east-dev.id}"

  tags = {
    Name = "VPC Peering between useast and uswest"
  }
  peer_region   = "us-west-2"
}