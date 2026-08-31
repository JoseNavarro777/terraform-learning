output "subnet_id" {
  description = "ID of the subnet created by the network module"
  value       = azurerm_subnet.this.id
}

output "subnet_name" {
  description = "Name of the subnet created by the network module"
  value       = azurerm_subnet.this.name
}
