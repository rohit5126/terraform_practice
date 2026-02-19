variable "ec2_instance_type" {
    default = "t3.micro"
    type = string
  
}

variable "ec2_ami_id" {
    default = "ami-073130f74f5ffb161"
    type = string
  
}

variable "root_volume_size" {
    default = 15
    type = number
}

variable "root_volume_type" {
    default = "gp3"
    type = string
}


