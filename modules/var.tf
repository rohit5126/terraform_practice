variable "ec2_instance_type" {
    description = "this is type for ami id"
    type = string
  
}

variable "ec2_ami_id" {
    description = "this is variable for ami id"
    type = string
  
}

variable "root_volume_size" {
    description = "this is root volume for ami id"
    type = number
}

variable "env" {
    description = "this is envirnment infra for terraform"
    type = string
  
}

variable "inst_count" {
    description = "this is count for ec2 infra for terraform"
    type = number
  
}

variable "hash_key" {
    description = "this is hash key infra for terraform"
    type = string
  
}
