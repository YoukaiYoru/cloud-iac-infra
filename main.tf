provider "aws" {
  region = var.region
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

resource "aws_s3_bucket" "tf_state" {
  bucket = var.s3_bucket
  acl    = "private"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id

  user_data = file("scripts/install-nginx.sh")

  tags = {
    Name = "WebServer"
  }
}
