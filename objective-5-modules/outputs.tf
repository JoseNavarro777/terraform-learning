output "vnet_id" {
  description = "ID of the virtual network created by the network module."
  value       = module.network.vnet_id
}

output "subnet_ids" {
  description = "Map of subnet names to IDs created by the network module."
  value       = module.network.subnet_ids
}
