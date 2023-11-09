terraform {
  required_version = "~> 1.0"

  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

provider "newrelic" {
  account_id = var.account_id   # Your New Relic account ID
  api_key = var.api_key # Your New Relic user key
  region = var.region        # US or EU (defaults to US)
}
