#tfsec:ignore:aws-ec2-enforce-http-token-imds
resource "aws_instance" "web" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"

  root_block_device {
    encrypted = true
  }
  tags = {
    Name = "HelloWorld"
  }
}