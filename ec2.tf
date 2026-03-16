# Key Pair

resource "aws_key_pair" "deployer" {
  key_name   = "hs-terra-key"
  public_key = file("/Users/harshal/Documents/github-repos/terraform-practice/terra-key.pub")
}

# Default VPC
resource "aws_default_vpc" "default" {

}

# Security Group
resource "aws_security_group" "hs-terra-security" {
  name        = "Allow ports"
  description = "This security group is to open ports for EC2 instance"
  vpc_id      = aws_default_vpc.default.id # interpolation

  # incoming
  ingress {
    description = "This is for SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outgoing
  egress {
    description = "This is for outgoing internet requests"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my-instance" {
  ami             = var.ami_id
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.hs-terra-security.name]
  tags = {
    Name = "hs-terra-automate"
  }
}
