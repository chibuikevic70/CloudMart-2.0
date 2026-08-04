terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket = "cloudmart-terraform-state-091974775195"
    key    = "cloudmart/dev/terraform.tfstate"
    region = "eu-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
