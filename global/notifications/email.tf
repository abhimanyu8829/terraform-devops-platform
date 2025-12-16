# Email notification integration placeholder
variable "notification_emails" {
  type    = list(string)
  default = []
}

resource "null_resource" "email_notify_placeholder" {}
