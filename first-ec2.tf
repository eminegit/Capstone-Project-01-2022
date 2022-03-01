provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4ZLKXSH7ETIVZ3PO"
  secret_key = "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"
  }


resource "aws_instance" "emineEC2"{
  ami = "ami-0341aeea105412b57"
  instance_type = "t2.micro"
}
