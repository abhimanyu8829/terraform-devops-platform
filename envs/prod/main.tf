/*
Purpose: Entrypoint for the "prod" environment. This file calls modules to build the production environment.

How to use / run:
- Run Terraform from this folder to create resources specific to the `prod` environment, or use a per-environment `-var-file` from the repo root.
- Typical workflow:
  1. `cd envs/prod`
  2. `terraform init`
  3. `terraform plan -var-file=tfvars/prod.tfvars`
  4. `terraform apply -var-file=tfvars/prod.tfvars`

What to change for environment-specific configuration:
- Set `resource_prefix` and `location` via a `prod.tfvars` file or environment variables (`TF_VAR_resource_prefix`, `TF_VAR_location`).
- Add or modify module blocks here to include other resources for the prod environment.

State isolation guidance:
- Use a separate state key or workspace for each environment (for example set a different backend `key` such as `prod/terraform.tfstate`) to avoid collisions between environments.

Secrets and tokens:
- Provide secrets via `TF_VAR_` environment variables, `terraform.tfvars` that is not checked in, or a secrets manager in CI.

*/

module "network" {
  source = "../../modules/network"
  resource_prefix = var.resource_prefix
  location = var.location
}

# Add other module calls for prod environment
