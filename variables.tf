variable "do_token" {
  description = "DigitalOcean API Token"
  type        = string
  sensitive   = true
}

variable "ssh_key_fingerprint" {
  description = "Fingerprint da SSH Key cadastrada na DigitalOcean"
  type        = string
}

variable "do_project_id" {
  description = "Digital Ocean project ID"
  type        = string
}
