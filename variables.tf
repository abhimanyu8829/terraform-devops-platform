/*
Purpose: Declare reusable input variables for the whole Terraform repo.

How to set variable values:
- Use a `terraform.tfvars` file in the root (not committed to source control) with values such as:
  location = "eastus"
  resource_prefix = "my-prefix"
  github_token = "<token>"
- Or set environment variables named `TF_VAR_<variable_name>` (for example `TF_VAR_github_token`).

Notes on sensitive values:
- `github_token` is marked sensitive. Do not hardcode it in source control. Use environment variables or secure CI secrets.

What to change before running:
- Update `location` and `resource_prefix` to match your naming conventions and Azure region.
- Supply `github_token` via `terraform.tfvars` or `TF_VAR_github_token` for operations that touch GitHub resources.
*/

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
