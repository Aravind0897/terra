provider "aws" {
  region = "eu-north-1"  # Change this to your desired AWS region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0b0d560d43e65a601"  # Amazon Linux 2 AMI ID (us-east-1)
  instance_type = "t3.micro"
  key_name      = "Keypair"  # Replace with your EC2 key pair name

  tags = {
    Name = "Terra machine"
  }
}

