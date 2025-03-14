# Download used modules
terraform {
  source  = "git::git@github.com:SergioFernandezCordero/terraform-modules.git//modules/infra?ref=main"
}

# Generate tfstate in S3
include "root" {
  path  = find_in_parent_folders("root.hcl")
}

# Variables to run the modules
inputs  = {
  aws_region  = "eu-north-1"
  environ     = "PRO"
  nombre      = "Zutano"
}
