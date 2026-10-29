data "aws_ami" "my_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  
}

resource "aws_security_group" "my_sg" {
  name        = "my_security_group"
  description = "Allow SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "my_security_group"
  }

}
resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.my_ami.id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.my_sg.name]

}