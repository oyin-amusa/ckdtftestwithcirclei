provider "aws" {
  region = "us-east-1"
}

/* terraform {
  backend "s3" {
    bucket  = "{AWS_S3_BUCKET_NAME}"
    key     = "{PROJECT_NAME}.tfstate"
    region  = "{AWS_REGION}"
    encrypt = true
  }
} */

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManageBy    = "Terraform"
    Owner       = "{YOUR_NAME}"
  }
}