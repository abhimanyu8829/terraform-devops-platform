# Manage repository secrets (example)
resource "github_actions_secret" "registry_password" {
  repository = github_repository.this.name
  secret_name = "ACR_PASSWORD"
  plaintext_value = "<set-value-via-cicd-or-secrets-manager>"
}
