terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "resource_group_name" {
  type    = string
  default = "rg-validate-lab"
}

resource "azurerm_resource_group" "validate_lab" {
  name     = var.resource_group_name
  location = "East US"
}
