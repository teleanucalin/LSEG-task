provider "aws" {
  region = var.region
}

# Module VPC
module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

# Module Security Groups
module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
}

# Module IAM
module "iam" {
  source      = "./modules/iam"
  db_password = var.db_password
}

# Module ALB
module "alb" {
  source         = "./modules/alb"
  vpc_id         = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnet_ids
  alb_sg_id      = module.security_groups.alb_sg_id
}

# Module RDS
module "rds" {
  source          = "./modules/rds"
  private_subnets = module.vpc.private_subnet_ids
  db_username     = var.db_username
  db_password     = var.db_password
  db_sg_id        = module.security_groups.db_sg_id
}

# Module ECS
module "ecs" {
  source                      = "./modules/ecs"
  ecs_task_execution_role_arn = module.iam.ecs_task_execution_role_arn
  ecs_task_role_arn           = module.iam.ecs_task_role_arn
  app_image                   = var.app_image
  db_host                     = replace(module.rds.db_endpoint, ":3306", "")
  db_username                 = module.rds.db_username
  db_password_secret_arn      = var.db_password
  private_subnets             = module.vpc.private_subnet_ids
  ecs_sg_id                   = module.security_groups.ecs_sg_id
  target_group_arn            = module.alb.target_group_arn
  desired_count               = var.ecs_desired_count
  log_group                   = "/ecs/app"
  region                      = var.region
}
