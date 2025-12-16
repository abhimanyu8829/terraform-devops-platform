/*
Purpose: Manage repository secrets stored in GitHub Actions secrets (example).

Important security note:
- Do NOT hardcode secrets in sources. The `plaintext_value` here is a placeholder — prefer to set secrets via CI pipelines or secret managers.

How to set values for plan/apply:
- In CI, expose the secret as an environment variable and use interpolation or a `terraform.tfvars` file created at runtime (not checked in).

Where to get values:
- Registry credentials (e.g., ACR password) come from your container registry admin or an automated credential rotation system.

*/

resource "github_actions_secret" "registry_password" {
  repository = github_repository.this.name
  secret_name = "ACR_PASSWORD"
  plaintext_value = "<set-value-via-cicd-or-secrets-manager>"
}
