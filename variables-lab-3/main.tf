provider "aws" {
    region = var.aws_region
}

#Create an EC2 Resource Block
resource "aws_instance" "test_instance" {
    ami = var.image_id
    instance_type = var.instance_type

    tags = {
      Name = "test_instance_1"
      environment = "test - lab3"
  }
}
resource "aws_instance" "test_instance_2" {
  ami = var.image_id
  instance_type = var.instance_type
  tags = {
      Name = "test_instance_2"
      environment = "test - lab3"
  }
}
