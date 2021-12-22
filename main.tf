provider "google" {
  credentials = "${file("service-account.json")}"
  project     = "avid-task-325512"
  region  = "us-central1"  
  zone        = "us-central1-b"
}
resource "google_compute_network" "vpc_network" {
  name                    = "vpc-network2"
  auto_create_subnetworks = true
  mtu                     = 1460
}