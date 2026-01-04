module "network" {
  source               = "./modules/network"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  availability_zone    = var.availability_zone
}
 
module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
}
 
module "jenkins" {
  source            = "./modules/compute-jenkins"
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security.jenkins_sg_id
  key_name          = var.key_name
}
 
module "sonarqube" {
  source            = "./modules/compute-sonarqube"
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security.sonarqube_sg_id
  key_name          = var.key_name
}
 
module "nexus" {
  source            = "./modules/compute-nexus"
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security.nexus_sg_id
  key_name          = var.key_name
}
 
module "docker" {
  source            = "./modules/compute-docker"
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security.docker_sg_id
  key_name          = var.key_name
}
