terraform {
  required_version = ">=1.8.1"
  required_providers {
    aws   = ">=5.47.0"
    local = ">=2.5.1"
  }
}

provider "aws" {
  region = "us-east-1"
}
