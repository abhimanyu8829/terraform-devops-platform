# Template-based workflow deployment placeholder
data "template_file" "ci_template" {
  template = file("${path.module}/templates/ci-cd.yaml.tpl")
}

resource "local_file" "ci_workflow" {
  content  = data.template_file.ci_template.rendered
  filename = "./.github/workflows/ci-cd.yml"
}
