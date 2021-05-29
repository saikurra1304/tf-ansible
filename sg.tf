# SSH Secuirty Group
resource "aws_security_group" "allow_all" {
  name        = "SSH"
  description = "Allow ALL inbound traffic"
  vpc_id      = aws_vpc.ibm.id

  ingress {
    description      = "ALL from Anywhere"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]  
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "IBM-ALL"
  }
}
