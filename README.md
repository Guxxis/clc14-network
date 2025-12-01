## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.default](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/default_security_group) | resource |
| [aws_eip.ip_address_1a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/eip) | resource |
| [aws_eip.ip_address_1b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/eip) | resource |
| [aws_flow_log.vpc_flow_log](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/flow_log) | resource |
| [aws_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gateway_1a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.nat_gateway_1b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.private_route_table_1a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table) | resource |
| [aws_route_table.private_route_table_1b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table) | resource |
| [aws_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table) | resource |
| [aws_route_table_association.a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_rt_ass_a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_rt_ass_b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/route_table_association) | resource |
| [aws_subnet.private_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/subnet) | resource |
| [aws_vpc.minha_vpc](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/resources/vpc) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/6.23.0/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `"vpc-terraform2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway"></a> [internet\_gateway](#output\_internet\_gateway) | n/a |
| <a name="output_ip_address_1a"></a> [ip\_address\_1a](#output\_ip\_address\_1a) | n/a |
| <a name="output_ip_address_1b"></a> [ip\_address\_1b](#output\_ip\_address\_1b) | n/a |
| <a name="output_nat_gateway_1a"></a> [nat\_gateway\_1a](#output\_nat\_gateway\_1a) | n/a |
| <a name="output_nat_gateway_1b"></a> [nat\_gateway\_1b](#output\_nat\_gateway\_1b) | n/a |
| <a name="output_private_route_table_1a"></a> [private\_route\_table\_1a](#output\_private\_route\_table\_1a) | n/a |
| <a name="output_private_route_table_1b"></a> [private\_route\_table\_1b](#output\_private\_route\_table\_1b) | n/a |
| <a name="output_private_subnet_1a"></a> [private\_subnet\_1a](#output\_private\_subnet\_1a) | n/a |
| <a name="output_private_subnet_1b"></a> [private\_subnet\_1b](#output\_private\_subnet\_1b) | n/a |
| <a name="output_public_route_table"></a> [public\_route\_table](#output\_public\_route\_table) | n/a |
| <a name="output_public_subnet_1a"></a> [public\_subnet\_1a](#output\_public\_subnet\_1a) | n/a |
| <a name="output_public_subnet_1b"></a> [public\_subnet\_1b](#output\_public\_subnet\_1b) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | OUTPUT |
