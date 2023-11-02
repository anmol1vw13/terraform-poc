provider "aws" {
  region = "ap-south-1"

}

resource "aws_instance" "instance" {
  instance_type = "t2.micro"
  ami           = "ami-06791f9213cbb608b"
  count         = length(var.instances)
  tags = {
    Name = var.instances[count.index]
  }
}
