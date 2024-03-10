#child module
#ec2

resource "aws_instance" "server" {
  ami = "ami_id"
  instance_type = "t2.micro"
  subnet_id = var.sn
  security_groups = [ var.sg ]

  tags = {
    Name = "myserver"
  }
}
