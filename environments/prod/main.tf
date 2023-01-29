locals {
  env = "prod"
}

provider "google" {
  project = "${var.project}"
}


module "state_storage_bucket" {
  source  = "../../modules/state_storage_bucket"
  project = "${var.project}"
}