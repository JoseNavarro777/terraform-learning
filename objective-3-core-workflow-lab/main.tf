terraform {
  required_version = ">= 1.15.0, < 2.0.0"

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

resource "azurerm_resource_group" "objective3" {
  name     = "rg-terraform-objective3"
  location = "East US"

  tags = {
    environment = "lab"
    objective   = "3"
    managed_by  = "terraform"
  }
}

resource "azurerm_virtual_network" "objective3" {
  name                = "vnet-terraform-objective3"
  address_space       = ["10.30.0.0/16"]
  location            = azurerm_resource_group.objective3.location
  resource_group_name = azurerm_resource_group.objective3.name

  tags = {
    environment = "lab"
    objective   = "3"
  }
}

resource "azurerm_subnet" "objective3" {
  name                 = "snet-app"
  resource_group_name  = azurerm_resource_group.objective3.name
  virtual_network_name = azurerm_virtual_network.objective3.name
  address_prefixes     = ["10.30.1.0/24"]
}
