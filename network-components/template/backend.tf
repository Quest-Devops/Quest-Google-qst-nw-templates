#.................................... Terraform Backend ....................................#

terraform {
   backend "gcs" {
    bucket           = "slz-poc"
    prefix           = "network-services"
  }
  required_version = ">= 1.0"
} 
