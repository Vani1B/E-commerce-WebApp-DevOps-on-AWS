output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "security_group_id" {
  value = aws_security_group.backend_sg.id
}

output "instance_id" {
  value = aws_instance.backend.id
}

output "public_ip" {
  value = aws_instance.backend.public_ip
}

output "ami_id" {
  value = aws_instance.backend.ami
}
