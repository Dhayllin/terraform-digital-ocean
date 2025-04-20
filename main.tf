
provider "digitalocean" {
  token = var.do_token
}

locals {
  droplet_configs = [
    {
      name  = "ansiblelab-1"
      image = "ubuntu-22-04-x64"
    },
    {
      name  = "ansiblelab-2"
      image = "centos-stream-9-x64"
    }
  ]
}

resource "digitalocean_droplet" "ansiblelab" {
  count  = length(local.droplet_configs)
  name   = local.droplet_configs[count.index].name
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  image  = local.droplet_configs[count.index].image
  ssh_keys = [var.ssh_key_fingerprint]
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0" # ou a versão mais recente
    }
  }
}

resource "digitalocean_project_resources" "attach" {
  count     = length(digitalocean_droplet.ansiblelab)
  project   = var.do_project_id
  resources = [digitalocean_droplet.ansiblelab[count.index].urn]
}
