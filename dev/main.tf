module "vpc" {
  source         = "../modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tags       = var.vpc_tags
  availability_zone = var.availability_zone
}

module "ec2" {
  source        = "../modules/ec2"
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = module.vpc.subnet_ids
  ec2_tags      = var.ec2_tags
  depends_on    = [module.vpc]
}
module "loadbalancer" {
  source     = "../modules/loadbalancer"
  lb_name    = var.lb_name
  subnets    = [module.vpc.subnet_ids, module.vpc.subnet_private_ids]
  lb_tags    = var.lb_tags
  depends_on = [module.vpc, module.ec2]
}