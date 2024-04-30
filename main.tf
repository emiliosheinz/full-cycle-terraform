terraform {
  required_version = ">=1.8.1"
  required_providers {
    aws   = ">=5.47.0"
    local = ">=2.5.1"
  }
  backend "s3" {
    bucket = "fullcycle-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source         = "./modules/vpc"
  prefix         = var.prefix
  vpc_cidr_block = var.vpc_cidr_block
}

module "eks" {
  source            = "./modules/eks"
  prefix            = var.prefix
  cluster_name      = var.cluster_name
  max_size          = var.max_size
  min_size          = var.min_size
  desired_size      = var.desired_size
  retention_in_days = var.retention_in_days
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.subnet_ids
}
