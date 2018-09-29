provider "aws" {
  region = "us-east-2"
}

module "ec2" {
  source = "./tfmodules/ec2"

  numero   = 2
  name     = "ec2"
  region   = "us-east-2"
  ami_name = "mynginx"
  type     = "t2.micro"
  key      = "workshop"
}

module "myec2" {
  source = "./tfmodules/ec2"

  numero   = 0
  name     = "myec2"
  region   = "us-east-2"
  ami_name = "mynginx"
  type     = "t2.micro"
  key      = "workshop"
}
