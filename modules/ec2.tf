#VPC

resource "aws_default_vpc" "default" {
}


#SG

resource "aws_security_group" "security_group" {
        name = "${var.env}-terra-sg"
        description = "this is my security group"
        vpc_id = aws_default_vpc.default.id

        ingress {
                from_port = 22
                to_port = 22
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }
        ingress {
                from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }
        egress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
        }
        tags = {
          Name = "${var.env}-terra-sg"
          Environment = var.env
        }
}


#ec2 instance


resource "aws_instance" "my_instance" {
        count = var.inst_count    #meta arguments
        key_name = "server-key-terra"
        security_groups = [aws_security_group.security_group.name]
        instance_type = var.ec2_instance_type
        ami = var.ec2_ami_id
        user_data = file("install_nginx.sh")
        root_block_device {
                volume_size = var.env == "prd" ? 20 : 10
                volume_type = "gp3"
        }
        tags = {
                Name = "${var.env}-terra_instance"
                Environment = var.env
        }
}
