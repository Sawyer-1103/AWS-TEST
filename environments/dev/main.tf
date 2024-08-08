module "vpc" {
  source          = "../../modules/vpc"
  vpc_name        = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "iam" {
  source = "../../modules/iam"
  cluster_name = var.cluster_name
}

module "eks" {
  source          = "../../modules/eks"
  cluster_name    = var.cluster_name
  role_arn        = module.iam.eks_admin_role_arn
  subnet_ids      = module.vpc.private_subnets
}

module "node_groups" {
  source          = "../../modules/node_groups"
  cluster_name    = module.eks.cluster_name
  role_arn   = module.iam.eks_node_role_arn
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  subnet_ids      = module.vpc.private_subnets
}

module "atlantis" {
  source = "../../modules/atlantis"
  github_token = var.github_token
  github_user = var.github_user
  cluster_name = module.node_groups.cluster_name
}