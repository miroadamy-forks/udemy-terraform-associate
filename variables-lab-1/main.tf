provider "aws" {
    region = "eu-west-2"
}

#Create an EC2 Resource Block
resource "aws_instance" "test_instance" {
    ami = "ami-0648ea225c13e0729"
    instance_type = "t2.micro"

    tags = {
      Name = "test_instance_1"
      environment = "test"
  }
}
resource "aws_instance" "test_instance_2" {
  ami = "ami-0648ea225c13e0729"
  instance_type = "t2.micro"
  tags = {
      Name = "test_instance_2"
      environment = "test"
  }
}
