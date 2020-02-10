resource "aws_instance" "ec2_ssh_enable" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.hta-sg-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}

