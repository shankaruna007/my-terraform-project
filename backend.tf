terraform {
  backend "s3" {
    bucket         = "my-kk-tf-state"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-tf-state-lock-table"
    encrypt        = true
  }
}
