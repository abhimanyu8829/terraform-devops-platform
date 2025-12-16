/*
Purpose: Define outputs that are returned after `terraform apply`.

How to view outputs:
- Run `terraform output` to list outputs after a successful apply.
- Use `terraform output -json` for machine-readable output.

What to change to make outputs meaningful:
- Replace placeholder values with actual resource references (for example, reference an actual resource group created by your configuration).
- Outputs are useful for passing values to other systems or scripts.
*/

output "resource_group" {
  description = "Example output"
  value       = "<replace-with-resource-group>"
}
