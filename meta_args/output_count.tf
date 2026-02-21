output "ec2_public_ip" {
    value = aws_instance.my_instance[*].public_ip  #we need to add [*] as we have added count meta args to instance resouce, it will be now become a list.
}


output "ec2_public_dns" {
    value = aws_instance.my_instance[*].public_dns
}

