terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # State is local for now. It moves to S3 (with locking) when CI is added.
}

provider "aws" {
  region = var.region

  # Every resource gets these tags, so cost reports can filter by project.
  default_tags {
    tags = {
      project    = var.project
      managed_by = "terraform"
    }
  }
}
