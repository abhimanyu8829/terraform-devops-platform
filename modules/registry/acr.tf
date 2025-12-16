resource "azurerm_container_registry" "acr" {
  name                = "${var.resource_prefix}acr"
  resource_group_name = "<rg-name>"
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false
}
