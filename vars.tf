
variable "ami" {

  default = "ami-0355cc8a4e6d564bc"
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "us-east-2"
}
