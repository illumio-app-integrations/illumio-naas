terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    illumio-core = {
      source  = "illumio/illumio-core"
      version = "0.2.2"
    }
  }
  required_version = ">= 1.2.0"

  cloud {
    organization = "illumio-app-integrations"

    workspaces {
      name = "illumio-naas"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


