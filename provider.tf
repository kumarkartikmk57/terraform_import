terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.12.0"
    }
  }
  backend "gcs" {
    bucket  = "testing-417202-tf-state"
    prefix  = "terraform/importer"
  }
}

provider "google" {
  # Configuration options
}
