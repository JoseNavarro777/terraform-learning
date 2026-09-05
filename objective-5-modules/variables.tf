variable "location" {
  description = "Azure region for the lab."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the lab resource group."
  type        = string
  default     = "rg-objective-5-modules"
}
