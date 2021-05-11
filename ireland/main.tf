terraform {
  backend "s3" {
    bucket = "ercan-tf-state"
    key    = "nginx-app/ireland.tfstate"
    region = "eu-central-1"
  }
}

module "ecs_ireland" {
source = "../ecs-module/"

app_name = "my-nginx-app"
app_environment = "Staging"
aws_region = "eu-west-1"
app_sources_cidr = ["0.0.0.0/0"]
admin_sources_cidr = ["0.0.0.0/0"]
aws_key_pair_name = "ireland-key"
nginx_app_image = "nginx:alpine"
}
