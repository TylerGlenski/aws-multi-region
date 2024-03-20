resource "aws_route_table" "useast-dev-pub" {
  vpc_id = module.useast-dev.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = module.useast-dev.vpc_igw
  }

#   route {
#     ipv6_cidr_block        = "::/0"
#     egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
#   }

  tags = {
    Name = "useast-dev-pub"
  }
}

resource "aws_route_table_association" "useast-pub-a" {
  subnet_id      = module.useast-dev.subnet_public_1a_id
  route_table_id = aws_route_table.useast-dev-pub.id
}

resource "aws_route_table_association" "useast-pub-b" {
  subnet_id      = module.useast-dev.subnet_public_1b_id
  route_table_id = aws_route_table.useast-dev-pub.id
}

resource "aws_route_table_association" "useast-pub-c" {
  subnet_id      = module.useast-dev.subnet_public_1c_id
  route_table_id = aws_route_table.useast-dev-pub.id
}



resource "aws_route_table" "useast-dev-private" {
  vpc_id = module.useast-dev.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = module.useast-dev.vpc_nat
  }

  tags = {
    Name = "useast-dev-private"
  }
}

resource "aws_route_table_association" "useast-private-a" {
  subnet_id      = module.useast-dev.subnet_private_1a_id
  route_table_id = aws_route_table.useast-dev-private.id
}

resource "aws_route_table_association" "useast-private-b" {
  subnet_id      = module.useast-dev.subnet_private_1b_id
  route_table_id = aws_route_table.useast-dev-private.id
}

resource "aws_route_table_association" "useast-private-c" {
  subnet_id      = module.useast-dev.subnet_private_1c_id
  route_table_id = aws_route_table.useast-dev-private.id
}
