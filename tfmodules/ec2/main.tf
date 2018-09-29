resource "aws_instance" "mynginx" {
  count                   = "${var.numero}"

  ami                     = "${data.aws_ami.nginx.id}"
  instance_type           = "${var.type}"
  key_name                = "${var.key}"
  vpc_security_group_ids  =  ["${aws_security_group.sg_ec2.id}"]

  root_block_device {
    volume_size           = "20"
    volume_type           = "gp2"
    delete_on_termination = "true"
  }

  tags {
    Name = "ec2-${var.name}-${count.index}"
  }
}

resource "aws_security_group" "sg_ec2" {
  name        = "sg_${var.name}"
  description = "ec2 inbound and outbound"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
