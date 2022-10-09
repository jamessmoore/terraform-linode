terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

# Linode Provider definition

provider  "linode" {
  token = var.token
}

resource  "linode_instance"  "terraform" {
  image = "linode/ubuntu22.04"
  label = "Terraform-Example-Ubuntu-LTS2204"
  group = "Terraform"
  region = "us-central"
  type = "g6-standard-1"
  authorized_keys = [ var.authorized_keys ]
  root_pass = var.root_pass
}