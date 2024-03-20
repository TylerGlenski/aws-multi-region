resource "aws_placement_group" "nodes-west-2a" {
  name     = "nodes-west-2a"
  strategy = "cluster"
}

resource "aws_placement_group" "nodes-west-2b" {
  name     = "nodes-west-2b"
  strategy = "cluster"
}

module "node-a-01" {
  source                        = "../../modules//ec2/singleton"
  env                           = "dev"
  iam_profile                   = "${data.terraform_remote_state.global.outputs.iam_profile_deployed}"
  aws_region                    = "us-west-2"
  aws_ami                       = "ami-0cd59ecaf368e5ccf"
  aws_keypair_name              = "${data.terraform_remote_state.global.outputs.aws_keypair_name}"
  subnet_availability_zone      = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.zone}"
  subnet_id                     = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.id}"
  subnet_name                   = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.name}"
  vpc_id                        = "${data.terraform_remote_state.vpc.outputs.vpc-west-dev.id}"
  disable_api_termination       = true
  monitoring                    = false
  associate_public_ip_address   = true
  ebs_optimized                 = true
  app_class                     = "node"
  app_role                      = "dev"
  instance_type                 = "t3.micro"
  instance_name_tag_prefix      = "node"
  root_block_device_volume_type = "gp2"
  security_group_description    = "node-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.name}-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.zone}"
  source_dest_check             = true
  root_block_device_volume_size = 50
  internal_cidr_blocks          = "${data.terraform_remote_state.global.outputs.uswest_cidr_prefix}.0.0/16"
  placement_group = aws_placement_group.nodes-west-2a.name
  server_number = 01
}

module "node-a-02" {
  source                        = "../../modules//ec2/singleton"
  env                           = "dev"
  iam_profile                   = "${data.terraform_remote_state.global.outputs.iam_profile_deployed}"
  aws_region                    = "us-west-2"
  aws_ami                       = "ami-0cd59ecaf368e5ccf"
  aws_keypair_name              = "${data.terraform_remote_state.global.outputs.aws_keypair_name}"
  subnet_availability_zone      = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.zone}"
  subnet_id                     = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.id}"
  subnet_name                   = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.name}"
  vpc_id                        = "${data.terraform_remote_state.vpc.outputs.vpc-west-dev.id}"
  disable_api_termination       = true
  monitoring                    = false
  associate_public_ip_address   = true
  ebs_optimized                 = true
  app_class                     = "node"
  app_role                      = "dev"
  instance_type                 = "t3.micro"
  instance_name_tag_prefix      = "node"
  root_block_device_volume_type = "gp2"
  security_group_description    = "node-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.name}-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.a.zone}"
  source_dest_check             = true
  root_block_device_volume_size = 50
  internal_cidr_blocks          = "${data.terraform_remote_state.global.outputs.uswest_cidr_prefix}.0.0/16"
  placement_group = aws_placement_group.nodes-west-2a.name
  server_number = 02
}


module "node-b-01" {
  source                        = "../../modules//ec2/singleton"
  env                           = "dev"
  iam_profile                   = "${data.terraform_remote_state.global.outputs.iam_profile_deployed}"
  aws_region                    = "us-west-2"
  aws_ami                       = "ami-0cd59ecaf368e5ccf"
  aws_keypair_name              = "${data.terraform_remote_state.global.outputs.aws_keypair_name}"
  subnet_availability_zone      = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.zone}"
  subnet_id                     = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.id}"
  subnet_name                   = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.name}"
  vpc_id                        = "${data.terraform_remote_state.vpc.outputs.vpc-west-dev.id}"
  disable_api_termination       = true
  monitoring                    = false
  associate_public_ip_address   = true
  ebs_optimized                 = true
  app_class                     = "node"
  app_role                      = "dev"
  instance_type                 = "t3.micro"
  instance_name_tag_prefix      = "node"
  root_block_device_volume_type = "gp2"
  security_group_description    = "node-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.name}-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.zone}"
  source_dest_check             = true
  root_block_device_volume_size = 50
  internal_cidr_blocks          = "${data.terraform_remote_state.global.outputs.uswest_cidr_prefix}.0.0/16"
  placement_group = aws_placement_group.nodes-west-2b.name
  server_number = 01
}

module "node-b-02" {
  source                        = "../../modules//ec2/singleton"
  env                           = "dev"
  iam_profile                   = "${data.terraform_remote_state.global.outputs.iam_profile_deployed}"
  aws_region                    = "us-west-2"
  aws_ami                       = "ami-0cd59ecaf368e5ccf"
  aws_keypair_name              = "${data.terraform_remote_state.global.outputs.aws_keypair_name}"
  subnet_availability_zone      = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.zone}"
  subnet_id                     = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.id}"
  subnet_name                   = "${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.name}"
  vpc_id                        = "${data.terraform_remote_state.vpc.outputs.vpc-west-dev.id}"
  disable_api_termination       = true
  monitoring                    = false
  associate_public_ip_address   = true
  ebs_optimized                 = true
  app_class                     = "node"
  app_role                      = "dev"
  instance_type                 = "t3.micro"
  instance_name_tag_prefix      = "node"
  root_block_device_volume_type = "gp2"
  security_group_description    = "node-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.name}-${data.terraform_remote_state.vpc.outputs.subnet_public_vpc-west-dev.b.zone}"
  source_dest_check             = true
  root_block_device_volume_size = 50
  internal_cidr_blocks          = "${data.terraform_remote_state.global.outputs.uswest_cidr_prefix}.0.0/16"
  placement_group = aws_placement_group.nodes-west-2b.name
  server_number = 02
}