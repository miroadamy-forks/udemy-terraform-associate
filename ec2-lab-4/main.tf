provider "aws" {
    region = "eu-west-2"
}

#Create an EC2 Resource Block
resource "aws_instance" "example" {
    ami = "ami-0648ea225c13e0729"
    instance_type = "t2.micro"

    tags = {
      "Name" = "Example Instance"
      "date" = "2022-10-30_14:23"
    }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "eu-west-2b"
  size              = 40
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.example.id
}