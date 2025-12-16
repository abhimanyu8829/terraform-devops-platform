# terraform-devops-platform

Scaffold for Terraform-driven DevOps platform.

Layout:
- `providers.tf`, `backend.tf`, `variables.tf`, `outputs.tf` at repository root
- `global/` holds GitHub and notification configuration
- `modules/` contains reusable modules: `network`, `compute`, `registry`, `cicd`, `monitoring`, `security`, `alerts`
- `envs/` contains environment entrypoints: `dev`, `stage`, `prod`

Usage:
- Customize `backend.tf` and `providers.tf` with real values
- Populate module implementations and `envs/*/main.tf` as needed

Quick Setup
-----------

1. Prerequisites:
	- Install Terraform >= 1.0 and the Azure CLI (`az`).
	- Have permissions to create a Storage Account and container for Terraform state.

2. Prepare remote state (backend):
	- Create an Azure Resource Group and Storage Account, then a blob container for state.
	- Either edit `backend.tf` with those names or run `terraform init -backend-config` with values.

3. Provide credentials:
	- For Azure: run `az login` locally, or export `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID` for non-interactive CI.
	- For GitHub: set `TF_VAR_github_token` or create a `terraform.tfvars` file with `github_token = "..."` (do not commit this file).

4. Basic commands (from repo root):
```
terraform init
terraform plan -var-file="terraform.tfvars"   # if using tfvars
terraform apply -var-file="terraform.tfvars"
```

5. Where values come from:
	- Azure resource names and IDs: Azure Portal or `az` CLI.
	- GitHub token: create a Personal Access Token with repo and workflow scopes and store it in CI secrets or `terraform.tfvars` locally.

Notes:
- Avoid committing secrets. Use environment variables or CI secret stores.
- Review `envs/*/main.tf` for environment-specific configuration before applying.
