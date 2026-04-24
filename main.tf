provider "aws" {
  region  = "us-east-1"
  allowed_account_ids = ["101257774115"]
}

module "ec2_demo" {
  source = "./modules/ec2"

  instance_name = "demo-ec2"
  key_name      = "19_Oct_2025"
}
