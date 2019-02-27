provider "aws" {
  access_key = AKIAJ6PWUOUEWTK7XWCQ
  secret_key = 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
  region = "us-west-1"
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
