/*
Purpose: Entrypoint for the "stage" environment. This file calls modules to build the stage environment.

How to use / run:
- Run Terraform from this folder to create resources specific to the `stage` environment, or use a per-environment `-var-file` from the repo root.
- Typical workflow:
  1. `cd envs/stage`
  2. `terraform init`
  3. `terraform plan -var-file=tfvars/stage.tfvars`
  4. `terraform apply -var-file=tfvars/stage.tfvars`

What to change for environment-specific configuration:
- Set `resource_prefix` and `location` via a `stage.tfvars` file or environment variables (`TF_VAR_resource_prefix`, `TF_VAR_location`).
- Add or modify module blocks here to include other resources for the stage environment.

State isolation guidance:
- Use a separate state key or workspace for each environment (for example set a different backend `key` such as `stage/terraform.tfstate`) to avoid collisions between environments.

Secrets and tokens:
- Provide secrets via `TF_VAR_` environment variables, `terraform.tfvars` that is not checked in, or a secrets manager in CI.

*/

module "network" {
  source = "../../modules/network"
  resource_prefix = var.resource_prefix
  location = var.location
}

# Add other module calls for stage environment
