resource "newrelic_notification_channel" "team_email_channel" {
  name = "Notify-Channel-Subject"
  type = "EMAIL"
  destination_id = newrelic_notification_destination.team_email_destination.id
  product = "IINT"
property {
    key = "subject"
    value = "[{{state}}] - {{priority}} - {{accumulations.tag.hostname}} - [{{issueTitle}}]" 
  }
  property {
    key = "customDetailsEmail"
     value = " [IsAcknowledged: {{isAcknowledged}}] [Acknowledged By {{acknowledgedBy}}] [Issue Closed By:{{closedBy}}] [ViolationClosedCause:{{accumulations.violationClosedCause}}]
  }
}

