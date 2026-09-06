variable "resource_group_name" {
  description = "Name of the resource group for this environment."
  type        = string
}

variable "location" {
  description = "Azure region for the resource group."
  type        = string
}

variable "environment" {
  description = "Environment label used in resource tags."
  type        = string
}
