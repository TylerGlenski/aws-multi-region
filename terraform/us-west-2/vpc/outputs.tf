output "subnet_protected_vpc-west-dev" {
  value = tomap({
    "a" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_protected_1a_id}",
      "name" = "${module.vpc-uswest-dev.subnet_protected_1a_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_protected_1a_zone}"
    }),
    "b" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_protected_1b_id}",
      "name" = "${module.vpc-uswest-dev.subnet_protected_1b_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_protected_1b_zone}"
    }),
    "c" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_protected_1c_id}",
      "name" = "${module.vpc-uswest-dev.subnet_protected_1c_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_protected_1c_zone}"
    }),
  })
}

output "subnet_private_vpc-west-dev" {
  value = tomap({
    "a" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_private_1a_id}",
      "name" = "${module.vpc-uswest-dev.subnet_private_1a_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_private_1a_zone}"
    }),
    "b" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_private_1b_id}",
      "name" = "${module.vpc-uswest-dev.subnet_private_1b_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_private_1b_zone}"
    }),
    "c" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_private_1c_id}",
      "name" = "${module.vpc-uswest-dev.subnet_private_1c_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_private_1c_zone}"
    }),
  })
}

output "subnet_public_vpc-west-dev" {
  value = tomap({
    "a" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_public_1a_id}",
      "name" = "${module.vpc-uswest-dev.subnet_public_1a_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_public_1a_zone}"
    }),
    "b" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_public_1b_id}",
      "name" = "${module.vpc-uswest-dev.subnet_public_1b_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_public_1b_zone}"
    }),
    "c" = tomap({
      "id"   = "${module.vpc-uswest-dev.subnet_public_1c_id}",
      "name" = "${module.vpc-uswest-dev.subnet_public_1c_name}",
      "zone" = "${module.vpc-uswest-dev.subnet_public_1c_zone}"
    }),
  })
}

output "vpc-west-dev" {
  value = tomap({
    "cidr" = "${data.terraform_remote_state.global.outputs.uswest_cidr_prefix}.0.0/16",
    "id"   = "${module.vpc-uswest-dev.vpc_id}",
    "nat"  = "${module.vpc-uswest-dev.vpc_nat}",
    "igw"  = "${module.vpc-uswest-dev.vpc_igw}"
  })
}