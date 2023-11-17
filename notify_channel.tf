resource "newrelic_notification_channel" "team_email_channel" {
  name = "Notify-Channel-Subject"
  type = "EMAIL"
  destination_id = newrelic_notification_destination.team_email_destination.id
  product = "IINT"
property {
    key = "subject"
    value = "[Issue Status: {{state}}] [HOST:${data.newrelic_entity.infra_monitor.name}] [Title:{{issueTitle}}] [Acknowledged : {{acknowledgedBy}}] [Closed :{{closedBy}}]"
  }
}
