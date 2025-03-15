# Generate root config, like URLs and TFSTATE in S3
include "root" {
  path  = find_in_parent_folders("root.hcl")
}

# Load environment variables
include "env" {
  path    = "${get_terragrunt_dir()}/../../_env/infra.hcl"
  expose  = true
}

# Download used modules
terraform {
  source  = "${include.env.locals.source_base_url}infra/?ref=main"
}

# Variables to run the modules
inputs  = {
  aws_region  = "eu-north-1"
  environ     = "TST"
  nombre      = "Mengano"
}
