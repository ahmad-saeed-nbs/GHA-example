# RDS Module for Traveloka

This repository contains a Terraform module for provisioning and managing AWS RDS instances, including related resources such as DB subnet groups, security groups, and parameter groups.

## Description

This module provides a customizable and reusable setup for creating AWS RDS instances, making it easy to deploy and manage databases with specific configurations for different environments. It supports various database engines and versions and includes options for setting up security groups, parameter groups, and subnet groups.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) v0.12+
- AWS CLI configured with appropriate credentials
- Access to the relevant AWS account and permissions to create the necessary resources



## Resources

| Name | Type |
|------|------|
| [aws_db_instance.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_parameter_group.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_db_subnet_group.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_security_group.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | The allocated storage in gigabytes | `number` | n/a | yes |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The days to retain backups for | `number` | n/a | yes |
| <a name="input_db_instance_class"></a> [db\_instance\_class](#input\_db\_instance\_class) | The instance class of the RDS instance | `string` | n/a | yes |
| <a name="input_db_instance_name"></a> [db\_instance\_name](#input\_db\_instance\_name) | Name of DB Instance | `string` | n/a | yes |
| <a name="input_db_parameter_group_family"></a> [db\_parameter\_group\_family](#input\_db\_parameter\_group\_family) | DB parameter group family | `string` | n/a | yes |
| <a name="input_db_parameter_group_name"></a> [db\_parameter\_group\_name](#input\_db\_parameter\_group\_name) | DB parameter group name | `string` | n/a | yes |
| <a name="input_db_parameters"></a> [db\_parameters](#input\_db\_parameters) | List of DB parameters | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | <pre>[<br>  {<br>    "name": "max_connections",<br>    "value": "150"<br>  },<br>  {<br>    "name": "innodb_buffer_pool_size",<br>    "value": "2147483648"<br>  }<br>]</pre> | no |
| <a name="input_db_security_group_name"></a> [db\_security\_group\_name](#input\_db\_security\_group\_name) | RDS Custom Security Group name | `string` | n/a | yes |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | Subnet group for DBs | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | The database engine to use | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The engine version to use | `string` | n/a | yes |
| <a name="input_inbound_rules"></a> [inbound\_rules](#input\_inbound\_rules) | List of inbound rules | <pre>list(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_outbound_rules"></a> [outbound\_rules](#input\_outbound\_rules) | List of outbound rules | <pre>list(object({<br>    from_port   = number<br>    to_port     = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The master password for the database | `string` | n/a | yes |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | Determines whether a final DB snapshot is created before the DB instance is deleted | `bool` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs | `list(string)` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The master username for the database | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_custom_db_parameter_group_name"></a> [custom\_db\_parameter\_group\_name](#output\_custom\_db\_parameter\_group\_name) | n/a |
| <a name="output_custom_db_subnet_group_name"></a> [custom\_db\_subnet\_group\_name](#output\_custom\_db\_subnet\_group\_name) | n/a |
| <a name="output_custom_security_group_id"></a> [custom\_security\_group\_id](#output\_custom\_security\_group\_id) | n/a |
