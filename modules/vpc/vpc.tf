resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"
   tags = {
    Name = "terraform-iti"  
  }
}


resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "192.168.1.0/24"
  availability_zone       = var.az  
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet"
  }
}


resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

