data "newrelic_entity" "infra_monitor" {
  name = "Terraform" # Must be an exact match to your application name in New Relic
  domain = "INFRA" # or BROWSER, INFRA, MOBILE, SYNTH, depending on your entity's domain
  type = "HOST"
}
