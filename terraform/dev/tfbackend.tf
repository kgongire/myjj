terraform {
  backend "s3" {
    bucket  = "bucket"
    key     = "dev.json"
    region  = "us-west-1"
    profile = "mycdd"
  }
}
