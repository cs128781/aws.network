resource "aws_internet_gateway" "aws_obj" {
    vpc_id = aws_vpc.aws_obj.id
    tags = {Name=var.key_name}
    depends_on = [aws_vpc.aws_obj]
    }
resource "aws_eip" "testEip1" {
    vpc=true
    public_ipv4_pool="amazon"
    }
resource "aws_eip" "testEip2" {
    vpc=true
    public_ipv4_pool="amazon"
    }
resource "aws_eip" "testEip3" {
    vpc=true
    public_ipv4_pool="amazon"
    }
resource "aws_nat_gateway" "natpub" {
    allocation_id=aws_eip.testEip3.id
    subnet_id=aws_subnet.awsobj1ta.id
    tags = {Name=var.key_name}
    }
output "nat_id_out" {
    value = aws_nat_gateway.natpub.id
}
output "igw_id_out" {
    value = aws_internet_gateway.aws_obj.id
}