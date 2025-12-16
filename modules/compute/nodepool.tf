# Additional node pool example
resource "azurerm_kubernetes_cluster_node_pool" "nodepool" {
  name                = "npuser"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size             = "Standard_DS2_v2"
  node_count          = 1
}
