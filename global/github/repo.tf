resource "github_repository" "this" {
  name        = "example-repo"
  description = "Repository managed by Terraform"
  visibility  = "private"
}
