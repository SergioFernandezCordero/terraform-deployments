Where to deploy stuff with Terraform

The project will define the following resources:

- A classic simple webapp setup with:
  - A VPC
  - Two subnetworks, one for servers, other for backend
  - An ELB for servers, with 2 instances, for servers.
  - One instance of RDS as backend.
  - A Cloudfront instance pointing to a S3 bucket.