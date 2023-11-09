resource "newrelic_alert_policy" "golden_signal_policy" {
  name = "Golden Signal - ${data.newrelic_entity.infra_monitor.name}"
}
