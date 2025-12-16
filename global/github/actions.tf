/*
Purpose: Create or update GitHub Actions workflow files in the repository.

How this file is used:
- Uses `templatefile` to render a workflow template into the repository at `.github/workflows/ci-cd.yml`.

What to change before running:
- Review `modules/cicd/templates/ci-cd.yaml.tpl` and provide the template variables required by `templatefile`.
- Ensure the GitHub provider is authenticated with a token that has repo and workflow permissions (`TF_VAR_github_token`).

Notes:
- This resource will commit files into the GitHub repo. In CI, ensure the token used has enough permissions and is stored in CI secrets, not in source control.
*/

resource "github_repository_file" "ci_cd_workflow" {
  repository = github_repository.this.name
  file       = ".github/workflows/ci-cd.yml"
  content    = templatefile("${path.module}/../modules/cicd/templates/ci-cd.yaml.tpl", {})
}
