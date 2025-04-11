
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "web" {
  name   = "meu-primeiro-droplet"
  region = "nyc3"        # pode ser sfo3, lon1, etc
  size   = "s-1vcpu-1gb" # plano mais barato
  image  = "ubuntu-22-04-x64"

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
  project = var.do_project_id
  resources = [
    digitalocean_droplet.web.urn
  ]
}
