# aws.network
network baseline implementation for AWS provisioning. This module creates the following components:
1) The VPC
2) Internetgateway
3) NAT
4) EIPs
5) Subnets
 
 Inputs
 - var.region
 - var.key_name
 - var.vpc_cidr
 - subnet1
 - subnet2
 - subnet3
 
 Ouputs
 - vpc_id_out
 - aws_eip3_out
 - igw_id_out
 