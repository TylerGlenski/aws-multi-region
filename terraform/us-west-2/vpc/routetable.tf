resource "aws_route_table" "uswest-dev-pub" {
  vpc_id = module.vpc-uswest-dev.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = module.vpc-uswest-dev.vpc_igw
  }

#   route {
#     ipv6_cidr_block        = "::/0"
#     egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
#   }

  tags = {
    Name = "uswest-dev-pub"
  }
}

resource "aws_route_table_association" "uswest-pub-a" {
  subnet_id      = module.vpc-uswest-dev.subnet_public_1a_id
  route_table_id = aws_route_table.uswest-dev-pub.id
}

resource "aws_route_table_association" "uswest-pub-b" {
  subnet_id      = module.vpc-uswest-dev.subnet_public_1b_id
  route_table_id = aws_route_table.uswest-dev-pub.id
}

resource "aws_route_table_association" "uswest-pub-c" {
  subnet_id      = module.vpc-uswest-dev.subnet_public_1c_id
  route_table_id = aws_route_table.uswest-dev-pub.id
}



resource "aws_route_table" "uswest-dev-private" {
  vpc_id = module.vpc-uswest-dev.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = module.vpc-uswest-dev.vpc_nat
  }

  tags = {
    Name = "uswest-dev-private"
  }
}

resource "aws_route_table_association" "uswest-private-a" {
  subnet_id      = module.vpc-uswest-dev.subnet_private_1a_id
  route_table_id = aws_route_table.uswest-dev-private.id
}

resource "aws_route_table_association" "uswest-private-b" {
  subnet_id      = module.vpc-uswest-dev.subnet_private_1b_id
  route_table_id = aws_route_table.uswest-dev-private.id
}

resource "aws_route_table_association" "uswest-private-c" {
  subnet_id      = module.vpc-uswest-dev.subnet_private_1c_id
  route_table_id = aws_route_table.uswest-dev-private.id
}
