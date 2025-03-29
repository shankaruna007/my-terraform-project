terraform {
  backend "s3" {
    bucket         = "my-terraform-state"              # S3 bucket for storing state
    key            = "ec2-instance/terraform.tfstate"  # Path to state file inside the bucket
    region         = "us-east-1"                       # AWS region
    dynamodb_table = "my-lock-table"                   # DynamoDB table for state locking
    encrypt        = true                              # Encrypt the state file
  }
}
