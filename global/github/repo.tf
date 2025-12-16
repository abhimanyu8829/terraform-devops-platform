/*
Purpose: Create and manage a GitHub repository resource.

What to change:
- `name`: set to the desired repository name.
- `description`: optional description.
- `visibility`: set to `public` or `private` per policy.

Where to get values:
- Repository naming conventions come from your org/team. Use variables or a convention based on `resource_prefix`.

Authentication:
- The GitHub provider requires a token with repository management permissions; supply it via `TF_VAR_github_token` in CI or `terraform.tfvars` locally.

Notes:
- Be careful when changing `visibility` or renaming - Terraform will attempt to make those changes via the GitHub API.
*/

resource "github_repository" "this" {
  name        = "example-repo"
  description = "Repository managed by Terraform"
  visibility  = "private"
}
