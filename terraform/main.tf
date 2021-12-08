provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "test" {
  ami           = "ami-020db2c14939a8efb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id] 
  tags = {
    Name = "server"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-test-instance"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
