provider "google" {
  credentials = "${file("service-account.json")}"
  project     = "avid-task-325512"
  region  = "us-central1"  
  zone        = "us-central1-b"
}
resource "google_compute_network" "vpc_networke" {
  name                    = "vpc-networke"
  auto_create_subnetworks = true
  mtu                     = 1460
}
resource "google_compute_network" "vpc_networks" {
  name                    = "vpc-networks"
  auto_create_subnetworks = true
  mtu                     = 1460
}

