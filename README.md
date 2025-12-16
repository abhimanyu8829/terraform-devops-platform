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
