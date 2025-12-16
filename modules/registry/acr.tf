/*
Purpose: Create an Azure Container Registry (ACR) for storing container images.

How to use:
- Provide `var.resource_prefix` and `var.location` from the calling environment. Replace the `resource_group_name` placeholder with a variable or a passed-in value.

What to change before running:
- Set `resource_group_name` to the appropriate resource group reference (preferably via `var.resource_group_name`).
- Adjust `sku` and `admin_enabled` according to security and performance requirements.

Where values come from:
- `resource_prefix` and `location` typically come from the environment `main.tf`.
*/

resource "azurerm_container_registry" "acr" {
  name                = "${var.resource_prefix}acr"
  resource_group_name = "<rg-name>"
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false
}
