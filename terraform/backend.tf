terraform {
  backend "s3" {
    bucket         = "devops-capstone-tf-state-us-east-2"
    key            = "network/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
