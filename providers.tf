/*
Purpose: Configure Terraform required providers and provider-specific authentication.

How this file is used:
- Declares required Terraform version and providers used across the repo.

Providers and authentication:
- `azurerm`: used to create Azure resources. Authentication can be provided by:
  - Azure CLI: run `az login` locally (recommended for interactive use).
  - Environment variables (CI/automation): set `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID`.
  - Managed Identity / Workload Identity in cloud runners.
- `github`: used to manage GitHub resources. Provide a token with repo and workflow permissions.
  - Set via `TF_VAR_github_token` (recommended) or in `terraform.tfvars` as `github_token = "..."`.
  - In CI, store the token in a secret and expose it as an environment variable during `terraform` runs.

What to change to run plan/apply:
- Typically you will not edit provider blocks; instead supply credentials via environment variables or `terraform.tfvars`.
- Uncomment or set the `token` or pass it via `TF_VAR_github_token` if you prefer inline provider configuration (avoid committing secrets).

Notes:
- Avoid hardcoding secrets in this file. Use environment variables or encrypted secret stores in CI.
*/

terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features = {}
}

provider "github" {
  # To authenticate the GitHub provider, set the `github_token` variable via `terraform.tfvars` or
  # export it as an environment variable `TF_VAR_github_token` (recommended) or set the provider token
  # from an environment secret in CI. Do not commit tokens into source control.
  # token = var.github_token
}
