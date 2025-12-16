/*
Purpose: Create subnets within the virtual network.

How to use:
- This module references the parent virtual network resource `azurerm_virtual_network.vnet` defined in this module.
  Ensure the virtual network is created in the same module or passed in as an input.

What to change:
- Replace `resource_group_name = "<rg-name>"` with a variable reference (e.g., `var.resource_group_name`) or pass the value from the environment caller.
- Adjust `address_prefixes` to fit your IP plan.

Where values come from:
- `resource_prefix` and `location` are provided by the calling environment `main.tf`.
*/

resource "azurerm_subnet" "subnet" {
  name                 = "${var.resource_prefix}-subnet"
  resource_group_name  = "<rg-name>"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
