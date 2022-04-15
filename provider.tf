provider "aws" {
  region  = var.region
  
  # default tags for all resources to be created using this provider
  default_tags {
    tags = {
      costcenter  = "12345",
      application = "testapp",
      owner       = "devopsteam_dl@testapp.com",
      team        = "devops"
    }   
  } 
}

# remote configuration, if S3 has to be used as backend.
#terraform {
#  backend "s3" {
#    bucket         = "testapp-terraform-states"
#    dynamodb_table = "testapp.terraform.states"
#    key            = "testapp/tfstate"
#    region         = "us-east-1"
#    encrypt        = true
#  }
#}