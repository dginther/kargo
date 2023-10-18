
variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  region = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  required_version = ">= 0.12.26"
}

resource "aws_instance" "test-instance" {
  ami = "ami-0f8e81a3da6e2510a"
  instance_type = "t3.micro"
}
