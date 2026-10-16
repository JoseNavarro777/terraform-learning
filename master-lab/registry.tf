module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"

  suffix = ["masterlab", var.environment]
}

output "registry_generated_rg_name" {
  description = "Example resource group name from the registry module."
  value       = module.naming.resource_group.name
}
