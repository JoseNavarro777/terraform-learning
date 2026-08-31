variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
  default     = "eastus"
}

variable "environment" {
  type        = string
  description = "Environment tag"
  default     = "lab"
}

variable "subnets" {
  type = map(string)

  default = {
    app      = "10.70.1.0/24"
    database = "10.70.2.0/24"
  }
}
