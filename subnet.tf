#subnet.tf
resource "aws_subnet" "public_subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/20"
  availability_zone = "us-east-1a"
  tags = {
    Name = "public subnet 1"
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.16.0/20"
   availability_zone = "us-east-1b"

  tags = {
    Name = "public subnet 2"
  }
}
