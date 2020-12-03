provider "aws" {
  region = "us-west-2"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY 
}
resource "aws_instance" "web" {
  ami           = "ami-a6cfeede"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
