resource "aws_instance" "web" {
  ami           = "ami-03a0c45ebc70f98ea"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = file("bash/user_data.sh")
  tags = {
    Name = "server"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-web-instance"

  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
