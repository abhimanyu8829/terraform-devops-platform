/*
Purpose: Create an Azure Virtual Network for the module.

How to use:
- This module expects caller to provide `var.resource_prefix` and `var.location`.
- The `resource_group_name` placeholder should be replaced by a variable or passed in from the calling environment (for example, `var.resource_group_name`).

What to change to run:
- Replace `"<rg-name>"` with a reference to a variable (e.g., `var.resource_group_name`) or pass a value from the environment module call.
- Adjust `address_space` and name conventions to match your network design.

Where values come from:
- `resource_prefix` and `location` typically come from the environment `main.tf` (envs/*) via module arguments.
*/

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.resource_prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = "<rg-name>"
}
