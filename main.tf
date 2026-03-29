provider "aws" {
  region  = "ca-central-1"
  allowed_account_ids = ["768477844960"]
}

module "ec2_demo" {
  source = "./modules/ec2"

  instance_name = "demo-ec2"
  key_name      = "sept23"
}
