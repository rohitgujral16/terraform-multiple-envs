terraform {
  backend "s3" {
    bucket  = "rohit-prod-terraform-tfstate"
    key     = "terraform-tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
