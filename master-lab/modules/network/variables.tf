variable "resource_group_name" {
  description = "Existing resource group for the network."
  type        = string
}

variable "location" {
  description = "Azure region for the network."
  type        = string
}

variable "name_prefix" {
  description = "Prefix used for network resource names."
  type        = string
}

variable "tags" {
  description = "Tags applied to network resources."
  type        = map(string)
}

variable "address_space" {
  description = "Address ranges for the virtual network."
  type        = list(string)
}

variable "subnets" {
  description = "Subnet settings indexed by subnet name."
  type = map(object({
    address_prefixes = list(string)
  }))
}
