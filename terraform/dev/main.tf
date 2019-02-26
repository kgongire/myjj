provider "aws" {
  region  = "us-west-1"
  aws_access_key_id = AKIAJ6PWUOUEWTK7XWCQ
  aws_secret_access_key = 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
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
