output "vnet_id" {
  description = "ID of the virtual network."
  value       = azurerm_virtual_network.this.id
}

output "subnet_ids" {
  description = "Subnet IDs indexed by subnet name."
  value = {
    for name, subnet in azurerm_subnet.this :
    name => subnet.id
  }
}
