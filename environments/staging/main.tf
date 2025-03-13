# Call the networking module
module "networking" {
  source              = "../../modules/networking"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  environment         = "dev"
}

# Call the IAM module
module "iam" {
  source      = "../../modules/iam"
  environment = "dev"
}

# Call the EKS module
module "eks" {
  source           = "../../modules/eks"
  environment      = "dev"
  cluster_role_arn = module.iam.cluster_role_arn
  subnet_ids       = module.networking.public_subnet_ids
}