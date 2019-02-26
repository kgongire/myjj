provider "aws" {
  region  = "us-west-1"
  profile = "mycdd"
  version = "1.23.0"
}

module "vpc" {
  source = "../modules/vpc"

  vpc_net_block = "${var.vpc_net_block}"
  environment   = "${var.environment}"
}

provider "null" {
  version = "1.0"
}

data "aws_availability_zones" "available" {}
