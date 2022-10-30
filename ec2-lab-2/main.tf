provider "aws" {
    region = "eu-west-2"
}

#Create an EC2 Resource Block
resource "aws_instance" "example" {
    ami = "ami-0648ea225c13e0729"
    instance_type = "t2.micro"

  
}