terraform {
  cloud {
    organization = "UBill"

    workspaces {
      name = "provisioner-tf"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }
  }
}

provider "github" {
  owner = var.github_organization
}
