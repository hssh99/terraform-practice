module "dev-app" {
  source         = "./aws_infra"
  my_env         = "dev"
  instance_type  = "t2.micro"
  ami_id         = "ami-0a14f53a6fe4dfcd1"
  instance_count = 1
}


module "stg-app" {
  source         = "./aws_infra"
  my_env         = "stg"
  instance_type  = "t2.medium"
  ami_id         = "ami-0a14f53a6fe4dfcd1"
  instance_count = 2
}


module "prod-app" {
  source         = "./aws_infra"
  my_env         = "prod"
  instance_type  = "t2.large"
  ami_id         = "ami-0a14f53a6fe4dfcd1"
  instance_count = 3
}
