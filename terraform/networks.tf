# Create a VPC
resource "aws_vpc" "quake" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.quake.id}"

  tags = {
    Name = "main"
  }
}

