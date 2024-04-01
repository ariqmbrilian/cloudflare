terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = "<api_token>"
}

variable "account_id" {
  default = "<account_id>"
}

variable "zone_id" {
  default = "<zone_id>"
}

variable "zone_name" {
  default = "example.com"
}

variable "tunnel_id" {
  default = "<tunnel_id>"
}