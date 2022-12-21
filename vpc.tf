data "aws_vpc" "AWS-VPC" {
  id = "vpc-0e459979468b8b193"
}

resource "aws_subnet" "subnet-2" {
  vpc_id            = data.aws_vpc.AWS-VPC.id
  availability_zone = "us-east-1b"
  cidr_block        = "10.0.2.0/24"
  tags = {
    Name = "AWS-VPC-SUBNET-2"

  }
}