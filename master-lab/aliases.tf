provider "azurerm" {
  alias = "secondary"

  features {}

  resource_provider_registrations = "none"
}

data "azurerm_resource_group" "via_alias" {
  provider = azurerm.secondary

  name = azurerm_resource_group.lab.name
}

output "alias_rg_name" {
  description = "Resource group name read using the aliased provider."
  value       = data.azurerm_resource_group.via_alias.name
}
