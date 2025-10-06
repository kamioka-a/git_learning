terraform {
  required_providers {
    aws = {
      version = ">= 4.49.0"
    }
  }
}

provider "aws" {  region  = "ap-northeast-1"

default_tags {
  tags = {
    Project = tf_practice
    Owner = "atjc_kamioka"
    Managed_by = terraform
    }
  }
}