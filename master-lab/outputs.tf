output "resource_group_name" {
  description = "Name of the lab resource group."
  value       = azurerm_resource_group.lab.name
}

output "resource_group_id" {
  description = "Azure ID of the lab resource group."
  value       = azurerm_resource_group.lab.id
}

output "vnet_id" {
  description = "ID of the lab virtual network."
  value       = module.network.vnet_id
}

output "subnet_ids" {
  description = "Subnet IDs indexed by subnet name."
  value       = module.network.subnet_ids
}

output "app_subnet_id" {
  description = "ID of the app subnet."
  value       = module.network.subnet_ids["app"]
}
