resource "aws_route_table" "test1Public" {
  vpc_id = aws_vpc.aws_obj.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natpub.id
  }
   tags= {Name=var.key_name}
  }

resource "aws_route_table" "test1priva" {
  vpc_id = aws_vpc.aws_obj.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natpub.id
  }
   tags= {Name=var.key_name}
  }

resource "aws_route_table_association" "rtassa" {
    subnet_id = aws_subnet.awsobj1ta.id
    route_table_id = aws_route_table.test1Public.id
    }

resource "aws_route_table_association" "rtassb" {
    subnet_id = aws_subnet.awsobj1tb.id
    route_table_id = aws_route_table.test1priva.id
    }

resource "aws_route_table_association" "rtassc" {
    subnet_id = aws_subnet.awsobj1tc.id
    route_table_id = aws_route_table.test1priva.id
    }