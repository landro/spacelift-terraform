terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {
  sensitive = true
}

variable "env" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_project" "spacelift" {
  name        = "spacelift"
  description = "A project to represent ${var.env} resources."
  purpose     = "Testing spacelift"
  environment = "Development"
}