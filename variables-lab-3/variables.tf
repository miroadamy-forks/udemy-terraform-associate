variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "image_id" {
    type = string
}

variable "aws_region" {
    type = string
    default = "eu-west-1"
  
}