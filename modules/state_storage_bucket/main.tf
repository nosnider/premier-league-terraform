resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "US"
  project       = "{var.project}"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}