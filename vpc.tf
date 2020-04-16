resource "aws_vpc" "aws_obj" {
    cidr_block = var.vpc_cidr
    tags = {Name=var.key_name}
    }

output "vpc_id_out" {

    value = aws_vpc.aws_obj.id
}