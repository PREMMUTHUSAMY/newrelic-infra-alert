resource "newrelic_alert_policy" "golden_signal_policy" {
  name = "${data.newrelic_entity.infra_monitor.name}-policy"
  incident_preference = "PER_CONDITION"
}
