resource "newrelic_nrql_alert_condition" "high_cpu_usage" {
  policy_id = newrelic_alert_policy.golden_signal_policy.id

  name        = "High CPU Usage "
  description = "Warning if cpu usage goes above 80% and critical alert if goes above 90%"
  violation_time_limit_seconds   = 3600
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true

 nrql {
    query = var.nrql_query
  }

critical {
    operator              = "above"
    threshold             = 90
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 80
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}
