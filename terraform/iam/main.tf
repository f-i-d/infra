terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  # terraform init時に.tfbackendファイルを読み込む
  backend "s3" {}
}

provider "aws" {
  region = "ap-northeast-1"
}