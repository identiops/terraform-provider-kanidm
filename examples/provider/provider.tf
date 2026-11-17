terraform {
  required_providers {
    kanidm = {
      source  = "identiops/kanidm"
      version = "~> 0.3.0"
    }
  }
}

# Configure the Kanidm Provider with explicit credentials
provider "kanidm" {
  url   = "https://idm.example.com"
  token = var.kanidm_token
}
