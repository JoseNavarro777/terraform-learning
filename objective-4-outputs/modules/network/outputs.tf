output "subnet_id" {
  description = "The ID of the application subnet."
  value       = azurerm_subnet.app.id
}
