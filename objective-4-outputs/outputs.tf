output "resource_group_name" {
  description = "The name of the Azure resource group."
  value       = azurerm_resource_group.main.name
}

output "vnet_id" {
  description = "The ID of the Azure virtual network."
  value       = azurerm_virtual_network.main.id
}

output "vnet_address_space" {
  description = "The address space assigned to the virtual network."
  value       = azurerm_virtual_network.main.address_space
}

output "demo_secret" {
  description = "Demonstrates sensitive output behavior."
  value       = "super-secret-demo-value"
  sensitive   = true
}
output "app_subnet_id" {
  description = "Subnet ID exposed by the child network module."
  value       = module.network.subnet_id
}
