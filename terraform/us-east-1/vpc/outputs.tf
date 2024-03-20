output "subnet_protected_east-dev" {
  value = tomap({
    "a" = tomap({
      "id"   = "${module.useast-dev.subnet_protected_1a_id}",
      "name" = "${module.useast-dev.subnet_protected_1a_name}",
      "zone" = "${module.useast-dev.subnet_protected_1a_zone}"
    }),
    "b" = tomap({
      "id"   = "${module.useast-dev.subnet_protected_1b_id}",
      "name" = "${module.useast-dev.subnet_protected_1b_name}",
      "zone" = "${module.useast-dev.subnet_protected_1b_zone}"
    }),
    "c" = tomap({
      "id"   = "${module.useast-dev.subnet_protected_1c_id}",
      "name" = "${module.useast-dev.subnet_protected_1c_name}",
      "zone" = "${module.useast-dev.subnet_protected_1c_zone}"
    }),
  })
}

output "subnet_private_east-dev" {
  value = tomap({
    "a" = tomap({
      "id"   = "${module.useast-dev.subnet_private_1a_id}",
      "name" = "${module.useast-dev.subnet_private_1a_name}",
      "zone" = "${module.useast-dev.subnet_private_1a_zone}"
    }),
    "b" = tomap({
      "id"   = "${module.useast-dev.subnet_private_1b_id}",
      "name" = "${module.useast-dev.subnet_private_1b_name}",
      "zone" = "${module.useast-dev.subnet_private_1b_zone}"
    }),
    "c" = tomap({
      "id"   = "${module.useast-dev.subnet_private_1c_id}",
      "name" = "${module.useast-dev.subnet_private_1c_name}",
      "zone" = "${module.useast-dev.subnet_private_1c_zone}"
    }),
  })
}

output "subnet_public_east-dev" {
  value = tomap({
    "a" = tomap({
      "id"   = "${module.useast-dev.subnet_public_1a_id}",
      "name" = "${module.useast-dev.subnet_public_1a_name}",
      "zone" = "${module.useast-dev.subnet_public_1a_zone}"
    }),
    "b" = tomap({
      "id"   = "${module.useast-dev.subnet_public_1b_id}",
      "name" = "${module.useast-dev.subnet_public_1b_name}",
      "zone" = "${module.useast-dev.subnet_public_1b_zone}"
    }),
    "c" = tomap({
      "id"   = "${module.useast-dev.subnet_public_1c_id}",
      "name" = "${module.useast-dev.subnet_public_1c_name}",
      "zone" = "${module.useast-dev.subnet_public_1c_zone}"
    }),
  })
}

output "vpc-east-dev" {
  value = tomap({
    "cidr" = "${data.terraform_remote_state.global.outputs.useast_cidr_prefix}.0.0/16",
    "id"   = "${module.useast-dev.vpc_id}",
    "nat"  = "${module.useast-dev.vpc_nat}",
    "igw"  = "${module.useast-dev.vpc_igw}"
  })
}