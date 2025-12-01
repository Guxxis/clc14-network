#OUTPUT
output "vpc_id" {
description = "ID da VPC"
  value = aws_vpc.minha_vpc.id 
}

output "public_subnet_1a" {
  description = "ID da Public Subnet 1A"
  value = aws_subnet.public_subnet_1a.id 
}
output "private_subnet_1a" {
  description = "ID da Private Subnet 1A"
  value = aws_subnet.private_subnet_1a.id 
}
output "public_subnet_1b" {
  description = "ID da Public Subnet 1B"
  value = aws_subnet.public_subnet_1b.id 
}
output "private_subnet_1b" {
  description = "ID da Private Subnet 1B"
  value = aws_subnet.private_subnet_1b.id 
}

output "internet_gateway" {
  description = "ID da Internet Gateway"
  value = aws_internet_gateway.internet_gateway.id 
}

output "public_route_table" {
  description = "ID da Public Route Table"
  value = aws_route_table.public_route_table.id 
}
output "private_route_table_1a" {
  description = "ID da Private Route Table 1A"
  value = aws_route_table.private_route_table_1a.id 
}
output "private_route_table_1b" {
  description = "ID da Private Route Table 1B"
  value = aws_route_table.private_route_table_1b.id 
}

output "ip_address_1a" {
  description = "ID do IP Do NAT Gateway 1A"
  value = aws_eip.ip_address_1a.id 
}
output "ip_address_1b" {
  description = "ID do IP Do NAT Gateway 1B"
  value = aws_eip.ip_address_1b.id 
}
output "nat_gateway_1a" {
  description = "ID da NAT Gateway 1A"
  value = aws_nat_gateway.nat_gateway_1a.id 
}
output "nat_gateway_1b" {
  description = "ID da NAT Gateway 1A"
  value = aws_nat_gateway.nat_gateway_1b.id 
}