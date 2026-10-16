data "azurerm_resource_group" "existing" {
  name = azurerm_resource_group.lab.name
}

output "observed_rg_location" {
  description = "Resource group location read through the data source."
  value       = data.azurerm_resource_group.existing.location
}
