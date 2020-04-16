resource "aws_subnet" "awsobj1ta" {
  vpc_id     = aws_vpc.aws_obj.id
  cidr_block = var.subnet1
  tags = {Name=var.key_name}
  availability_zone="us-east-1a"
}

resource "aws_subnet" "awsobj1tb" {
  vpc_id     = aws_vpc.aws_obj.id
  cidr_block = var.subnet2
  tags = {Name=var.key_name}
  availability_zone="us-east-1b"
}

resource "aws_subnet" "awsobj1tc" {
  vpc_id     = aws_vpc.aws_obj.id
  cidr_block = var.subnet3
  tags = {Name=var.key_name}
  availability_zone="us-east-1c"
}
output "subtnet1_out" {
    value = aws_subnet.awsobj1ta.id
}
output "subtnet2_out" {
    value = aws_subnet.awsobj1tb.id
}
output "subtnet3_out" {
    value = aws_subnet.awsobj1tc.id
}