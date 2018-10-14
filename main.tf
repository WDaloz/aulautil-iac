provider "aws" {
  region = "${var.region}"
}

module "ec2" {
  source = "./tfmodules/ec2"

  numero   = 2
  name     = "ec2"
  region   = "${var.region}"
  ami_name = "mynginx"
  type     = "t2.micro"
  key      = "${var.key}"
}

module "myec2" {
  source = "./tfmodules/ec2"

  numero   = 0
  name     = "myec2"
  region   = "${var.region}"
  ami_name = "mynginx"
  type     = "t2.micro"
  key      = "${var.key}"
}
