# root module

module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./web"
  sn = module.vpc.pd_sn
  sg = module.vpc.sg
}