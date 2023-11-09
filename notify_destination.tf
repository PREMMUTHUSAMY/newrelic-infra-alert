resource "newrelic_notification_destination" "team_email_destination" {
  name = "Destination-Teams-Mails"
  type = "EMAIL"

  property {
    key = "email"
    value = "dhanushmahadevanbalaji@gmail.com,abinsingh2016@gmail.com,dhanushlogesh62@gmail.com"
  }
}
