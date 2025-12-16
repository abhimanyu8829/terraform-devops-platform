/*
Purpose: Entrypoint for the "dev" environment. This file calls modules to build the dev environment.

How to use / run:
- Run Terraform from this folder to create resources specific to the `dev` environment, or use a per-environment `-var-file` from the repo root.
- Typical workflow:
  1. `cd envs/dev`
  2. `terraform init`
  3. `terraform plan -var-file=tfvars/dev.tfvars` (or pass `-var resource_prefix=...`)
  4. `terraform apply -var-file=tfvars/dev.tfvars`

What to change for environment-specific configuration:
- Set `resource_prefix` and `location` via a `dev.tfvars` file or environment variables (`TF_VAR_resource_prefix`, `TF_VAR_location`).
- Add or modify module blocks here to include other resources for the dev environment.

State isolation guidance:
- Use a separate state key or workspace for each environment (for example set a different backend `key` such as `dev/terraform.tfstate`) to avoid collisions between environments.

Secrets and tokens:
- Provide secrets via `TF_VAR_` environment variables, `terraform.tfvars` that is not checked in, or a secrets manager in CI.

*/

module "network" {
  source = "../../modules/network"
  resource_prefix = var.resource_prefix
  location = var.location
}

# Add other module calls for dev environment
