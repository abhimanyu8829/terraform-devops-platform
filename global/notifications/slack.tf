/*
Purpose: Placeholder for Slack notification integration.

How to integrate:
- Replace this placeholder with a provider or an external script that sends messages to Slack using a webhook or the Slack API.
- Store the Slack webhook URL or API token in CI secrets or as an environment variable and pass it to Terraform via `TF_VAR_slack_webhook_url`.

What to change before running:
- Provide a webhook URL via secure means and implement the actual notification resource instead of the `null_resource` placeholder.

*/

variable "slack_webhook_url" {
  type      = string
  sensitive = true
  default   = ""
}

resource "null_resource" "slack_notify_placeholder" {}
