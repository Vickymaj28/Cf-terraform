
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  email   = "vigneshselvaraj879@gmail.com"
  api_key = "f244bdac170c8500910ef826b9638e7ae9f7e"
}

resource "cloudflare_zone" "example_zon11e" {
  zone      = "vicky.co"
  account_id = "32c668b98cfd1b3ce5b70430731a58f6"  # Replace with your Cloudflare account ID
}

resource "cloudflare_zone" "example_zon454" {
  zone      = "vicky.org"
  account_id = "32c668b98cfd1b3ce5b70430731a58f6"  # Replace with your Cloudflare account ID
}

output "nameservers" {
  value = cloudflare_zone.example_zon11e.name_servers
}
