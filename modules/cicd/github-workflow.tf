/*
Purpose: Render CI workflow templates and write them to the repository as workflow files.

How to use:
- The template file `templates/ci-cd.yaml.tpl` should contain placeholders used by `templatefile` or the `template_file` data source.
- This example writes a local file; in a real repo you may prefer `github_repository_file` to commit directly to GitHub via the provider.

What to change:
- Update the template and make sure the rendered content matches GitHub Actions workflow syntax.
- Ensure the process that runs this has rights to write to the repo or that the GitHub provider is used with appropriate permissions.
*/

data "template_file" "ci_template" {
  template = file("${path.module}/templates/ci-cd.yaml.tpl")
}

resource "local_file" "ci_workflow" {
  content  = data.template_file.ci_template.rendered
  filename = "./.github/workflows/ci-cd.yml"
}
