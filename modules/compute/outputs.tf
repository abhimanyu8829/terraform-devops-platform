/*
Purpose: Export useful values from the compute module (for example AKS cluster name) so callers can reference them.

How to use:
- Call `module.<name>.aks_cluster_name` from the environment configuration to obtain the AKS cluster name.

What to change:
- Ensure the referenced resource `azurerm_kubernetes_cluster.aks` exists in this module; update the output if resource names change.
*/

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}
