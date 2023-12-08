resource "aws_instance" "web" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}