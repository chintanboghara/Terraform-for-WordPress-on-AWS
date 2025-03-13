terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"  # Replace with your S3 bucket name
    key    = "dev/terraform.tfstate"
    region = "us-west-2"                  # Replace with your region
  }
}