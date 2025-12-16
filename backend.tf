/*
Purpose: Configure Terraform remote state backend using Azure Blob Storage.

How this file is used:
- Terraform reads this block during `terraform init` to configure remote state.

Setup / What to change to run `terraform init` / `terraform plan`:
- Ensure the Azure Storage Account, Resource Group and Blob container referenced below exist before running `terraform init`.
- You can either edit the values below or supply them at init time with `terraform init -backend-config="resource_group_name=..."` and similar flags. Editing inline is simple but less flexible for automation.

Where to get the required values:
- Create or reuse an Azure Resource Group and Storage Account (Azure Portal, CLI `az group create` / `az storage account create`).
- Create a container inside the storage account for state (Azure Portal or `az storage container create`).

Notes and recommendations:
- Keep the storage account and container dedicated to Terraform state and restrict access.
- Do not change the `key` unless migrating state; changing it will create a new state file.
*/

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstatestorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
