output "ec2_public_dns" {
    value = [
        for key in aws_instance.my_instance : key.public_dns

    ]
}
  
output "ec2_private_ip" {
    value = [
        for key in aws_instance.my_instance : key.private_ip

    ]
  
}
