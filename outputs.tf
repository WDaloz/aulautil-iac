output "ec2_id" {
  value = "${module.ec2.ec2_id}"
}
output "ec2_public" {
  value = "${module.ec2.ec2_public_ip}"
}
output "ec2_security_group_id" {
  value = "${module.ec2.security_group_id}"
}
