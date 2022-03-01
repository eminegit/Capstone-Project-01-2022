provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
  }


resource "aws_instance" "emineEC2"{
  ami = "ami-0341aeea105412b57"
  instance_type = "t2.micro"
}
