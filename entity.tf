data "newrelic_entity" "infra_monitor" {
  name = var.entity_name 
  domain = var.entity_domain
  type = var.entity_type
}
