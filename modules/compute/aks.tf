/*
Purpose: Deploy an Azure Kubernetes Service (AKS) cluster for the compute module.

How to use:
- Provide `var.resource_prefix` and `var.location` from the calling environment.

What to change:
- Replace `resource_group_name = "<rg-name>"` with a variable reference (e.g., `var.resource_group_name`) or pass a value from the caller.
- Tweak `default_node_pool` settings (`node_count`, `vm_size`) according to expected workload and budget.

Notes:
- Consider exposing node pool and identity settings as module variables to make this module configurable.
*/

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.resource_prefix}-aks"
  location            = var.location
  resource_group_name = "<rg-name>"
  default_node_pool {
    name       = "agentpool"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }
  identity {
    type = "SystemAssigned"
  }
}
