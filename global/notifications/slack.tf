# Slack notification integration placeholder
variable "slack_webhook_url" {
  type      = string
  sensitive = true
  default   = ""
}

resource "null_resource" "slack_notify_placeholder" {}
