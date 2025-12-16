/*
Purpose: Example of adding an additional node pool to an AKS cluster.

How to use:
- This resource augments the `azurerm_kubernetes_cluster.aks` defined in the module. Ensure that AKS resource exists.

What to change:
- Adjust `vm_size`, `node_count` and `name` to fit your workload requirements.
- Consider exposing node pool settings as module variables so callers can control them.
*/

# Additional node pool example
resource "azurerm_kubernetes_cluster_node_pool" "nodepool" {
  name                = "npuser"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size             = "Standard_DS2_v2"
  node_count          = 1
}
