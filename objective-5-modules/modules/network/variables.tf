variable "resource_group_name" {
  description = "Name of the resource group that will contain the network."
  type        = string
}

variable "location" {
  description = "Azure region for the virtual network."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "Address ranges for the virtual network."
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnet names to their address ranges."
  type        = map(string)
}
