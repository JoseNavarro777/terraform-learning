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

resource "azurerm_resource_group" "lab" {
  name     = "rg-objective-4-meta-arguments"
  location = "East US"


}
resource "azurerm_virtual_network" "lab" {
  name                = "vnet-objective-4-meta-arguments"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name
  address_space       = ["10.50.0.0/16"]
}

resource "azurerm_subnet" "lab" {
  for_each = {
    app        = "10.50.1.0/24"
    database   = "10.50.2.0/24"
    management = "10.50.3.0/24"
  }

  name                 = "snet-${each.key}"
  resource_group_name  = azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = [each.value]
}
