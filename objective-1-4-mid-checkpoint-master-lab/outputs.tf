output "services_subnet_id" {
  description = "ID of the services subnet created by the network module"
  value       = module.network.subnet_id
}

output "services_subnet_name" {
  description = "Name of the services subnet created by the network module"
  value       = module.network.subnet_name
}

output "observed_resource_group_location" {
  description = "Location read from the resource group data source"
  value       = data.azurerm_resource_group.observed.location
}
