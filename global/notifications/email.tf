/*
Purpose: Placeholder for email notification integration.

How to integrate:
- Replace this placeholder with a provider and resources for your chosen email gateway (for example, SendGrid, SMTP, or other notification services).
- Populate `notification_emails` with the recipient list using a `tfvars` file or `TF_VAR_notification_emails`.

What to change before running:
- Implement a concrete provider and resources and remove the `null_resource` placeholder.
- Supply any API keys or SMTP credentials via secure environment variables or CI secrets.
*/

variable "notification_emails" {
  type    = list(string)
  default = []
}

resource "null_resource" "email_notify_placeholder" {}
