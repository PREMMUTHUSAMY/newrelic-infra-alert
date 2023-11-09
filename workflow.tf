resource "newrelic_workflow" "team_workflow" {
  name = "Infra-CPU-Workflow"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"


  issues_filter {
    name = "filter-example"
    type = "FILTER"

    predicate {
      attribute = "accumulations.sources"
      operator = "EXACTLY_MATCHES"
      values = [ "newrelic" ]
    }
  }

  destination {
    channel_id = newrelic_notification_channel.team_email_channel.id
  }
}
