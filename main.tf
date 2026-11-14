terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

data "aws_vpc" "existing" {
  id = "vpc-08e79e1b1e26f2122"
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.existing.id]
  }

  tags = {
    Name = "project-dev-subnet-public1-us-east-2a"
  }
}
