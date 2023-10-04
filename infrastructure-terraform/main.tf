terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.84.0"
    }
  }
}

  # Configuration options
  provider "google" {
  project     = var.project_name
  region      = var.region
  zone        = var.zone
  credentials  = var.path_of_credentials
}

# create the gke 
# leave the configuration of the cloudbuild to be done manually 

resource "google_container_cluster" "my_standard_cluster" {
  name               = var.cluster_name
  location           = var.zone
  initial_node_count = 2
  enable_autopilot= false
}

#   