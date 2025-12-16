variable "location" {
  description = "Primary region"
  type        = string
  default     = "eastus"
}

variable "resource_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "demo"
}

variable "github_token" {
  description = "GitHub token for repo and actions management"
  type        = string
  default     = ""
  sensitive   = true
}
