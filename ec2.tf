
resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = "ami-077e31c4939f6a2f3"

  instance_type = var.instance_type
  
  key_name      = "jen"
 subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
 vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]

  tags = {
    Name  = "Terraform-${count.index + 1}"
  }
}
