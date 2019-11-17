provider "aws" {
  profile = "<aws profile>"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket  = "<state bucket>"
    key     = "statefile/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = "true"
    profile = "<aws profile>"
  }
}
