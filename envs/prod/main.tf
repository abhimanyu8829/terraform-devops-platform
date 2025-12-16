module "network" {
  source = "../../modules/network"
  resource_prefix = var.resource_prefix
  location = var.location
}

# Add other module calls for prod environment
