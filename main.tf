terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "hashicat" {
  source  = "app.terraform.io/cesteban-demos/hashicat/aws"
  version = "1.0.0"
  instance_type = var.instance_type

}
