terraform {
  backend "s3" {
    bucket         = "ahmeds-terraform-state-bucket"
    key            = "GHA/terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "your-terraform-state-lock-table"
    # encrypt        = true
  }
}