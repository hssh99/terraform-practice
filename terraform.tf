# Terraform Block

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}

# Provider Block
provider "aws" {
  # Configuration options 
  region = "ap-south-1"
}
