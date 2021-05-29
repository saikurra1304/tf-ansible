# Ansible Master

resource "aws_instance" "master" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ibm-web-1.id
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  key_name = "linux"
  private_ip = "10.0.1.10"


  tags = {
    Name = "MASTER"
  }
}

# Ansible Node1

resource "aws_instance" "node1" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ibm-web-1.id
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  key_name = "linux"
  private_ip = "10.0.1.11"


  tags = {
    Name = "node1"
  }
}

# Ansible Node2

resource "aws_instance" "node2" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ibm-web-1.id
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  key_name = "linux"
  private_ip = "10.0.1.12"


  tags = {
    Name = "node2"
  }
}

