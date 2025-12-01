data "aws_region" "current" {}

variable "vpc_name" {
  type = string
  default = "vpc-terraform2"
}

#VPC
resource "aws_vpc" "minha_vpc" {
    cidr_block ="10.0.0.0/16"
    tags = {
        Name = var.vpc_name
    }
}

resource "aws_flow_log" "vpc_flow_log" {
  log_destination    = "arn:aws:s3:::clc14-guxxis-terraform"
  log_destination_type = "s3"
  traffic_type      = "ALL"
  vpc_id            = aws_vpc.minha_vpc.id
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.minha_vpc.id

  tags = {
    Name  = "my-iac-sg"
  }
}

#SUBNET PUBLIC SUBNET 1A
resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.minha_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet_1a"
  }
}

#SUBNET PRIVATE SUBNET 1A
resource "aws_subnet" "private_subnet_1a" {
  vpc_id     = aws_vpc.minha_vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_subnet_1a"
  }
}

#SUBNET PUBLIC SUBNET 1B
resource "aws_subnet" "public_subnet_1b" {
  vpc_id     = aws_vpc.minha_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet_1b"
  }
}

#SUBNET PRIVATE SUBNET 1B
resource "aws_subnet" "private_subnet_1b" {
  vpc_id     = aws_vpc.minha_vpc.id
  cidr_block = "10.0.20.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_subnet_1b"
  }
}

#INTERNET GATEWAY - CONECTAR AO VPC
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.minha_vpc.id

  tags = {
    Name = "internet_gateway"
  }
}

#TABELA DE ROTA - CONECTAR AO IGW
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.minha_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "public_route_table"
  }
}

#TABELA DE ROTA PUBLICA A SUBNET PUBLICA 1A
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

#TABELA DE ROTA PUBLICA A SUBNET PUBLICA 1B
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_route_table.id
}

#CRIAR ELASTIC IP 1A
resource "aws_eip" "ip_address_1a" {
  domain = "vpc"
}

#NATGATEWAY 1A
resource "aws_nat_gateway" "nat_gateway_1a" {
  allocation_id = aws_eip.ip_address_1a.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = "nat_gateway_1a"
  }

  depends_on = [aws_internet_gateway.internet_gateway]
}

#CRIAR ELASTIC IP 1B
resource "aws_eip" "ip_address_1b" {
  domain = "vpc"
}

#NATGATEWAY 1B
resource "aws_nat_gateway" "nat_gateway_1b" {
  allocation_id = aws_eip.ip_address_1b.id
  subnet_id     = aws_subnet.public_subnet_1b.id

  tags = {
    Name = "nat_gateway_1b"
  }

  depends_on = [aws_internet_gateway.internet_gateway]
}

#TABELA DE ROTA PRIVADA 1A NA SUBNET PRIVADA 1A CONECTADA NA NATGATEWAY 1A
resource "aws_route_table" "private_route_table_1a" {
  vpc_id = aws_vpc.minha_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_1a.id
  }

  tags = {
    Name = "private_route_table_1a"
  }
}

resource "aws_route_table_association" "private_rt_ass_a" {
  subnet_id      = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.private_route_table_1a.id
}

#TABELA DE ROTA PRIVADA 1B NA SUBNET PRIVADA 1B CONECTADA NA NATGATEWAY 1B
resource "aws_route_table" "private_route_table_1b" {
  vpc_id = aws_vpc.minha_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_1b.id
  }

  tags = {
    Name = "private_route_table_1b"
  }
}

resource "aws_route_table_association" "private_rt_ass_b" {
  subnet_id      = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.private_route_table_1b.id
}