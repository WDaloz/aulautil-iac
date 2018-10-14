output "ec2_id" {
  value = "${aws_instance.mynginx.*.id}"
}


output "ec2_public_ip" {
  value = "${aws_instance.mynginx.*.public_ip}"
}

output "security_group_id" {
  value = "${aws_security_group.sg_ec2.id}"
}
