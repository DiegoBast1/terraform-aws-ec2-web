# security group
resource "aws_security_group" "ec2_sg" {
  name        = "ec2-security-group"
  description = "HTTPS & HTTP"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-web-sg"
  }
}

# to launch the ec2 instance
resource "aws_instance" "web" {
    ami           = "ami-0e1011556f696c3d3"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]

    subnet_id = data.aws_subnets.public.ids[0]

    tags = {
        Name = "ec2-web-server-dev"
    }
} 
