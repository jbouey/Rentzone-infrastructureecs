# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terra-state-and-anon1"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "us-east-1"
    profile        = "iamadmin"
    dynamodb_table = "terraform-state-lock"
  }
}