# GitHub Actions workflow management (placeholders)
resource "github_repository_file" "ci_cd_workflow" {
  repository = github_repository.this.name
  file       = ".github/workflows/ci-cd.yml"
  content    = templatefile("${path.module}/../modules/cicd/templates/ci-cd.yaml.tpl", {})
}
