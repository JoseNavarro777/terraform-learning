terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 4.81.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "state_lab" {
  name     = "rg-objective-6-state"
  location = "eastus"

  tags = {
    environment = "lab"
  }
}

moved {
  from = azurerm_resource_group.lab
  to   = azurerm_resource_group.state_lab
}
