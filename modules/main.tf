module "dev-infra" {
    source = "./infra-app"
    env = "dev"
    inst_count = 1
    root_volume_size = 15
    ec2_instance_type = "t3.micro"
    ec2_ami_id = "ami-073130f74f5ffb161"
    hash_key = "TestappID"
  
}

module "prd-infra" {
    source = "./infra-app"
    env = "prd"
    inst_count = 2
    root_volume_size = 15
    ec2_instance_type = "t3.small"
    ec2_ami_id = "ami-073130f74f5ffb161"
    hash_key = "ProdappID"
  
}

module "stg-infra" {
    source = "./infra-app"
    env = "stg"
    inst_count = 1
    root_volume_size = 15
    ec2_instance_type = "t3.micro"
    ec2_ami_id = "ami-073130f74f5ffb161"
    hash_key = "StgappID"
  
}
