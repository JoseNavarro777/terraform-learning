terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.81"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "70a0b66f-1c55-46bd-937c-8153aafac8f9"
}

resource "azurerm_resource_group" "lab" {
  name     = "rg-objective-4-resource-targeting"
  location = "East US"

  tags = {
    environment = "lab"
    project     = "terraform-cert"
  }
}

resource "azurerm_virtual_network" "lab" {
  name                = "vnet-objective-4-resource-targeting"
  address_space       = ["10.70.0.0/16"]
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name
}

resource "azurerm_subnet" "lab" {
  for_each = {
    app      = "10.70.1.0/24"
    database = "10.70.2.0/24"
  }

  name                 = "snet-${each.key}"
  resource_group_name  = azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = [each.value]
}

resource "azurerm_network_security_group" "lab" {
  name                = "nsg-objective-4-resource-targeting"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name

  depends_on = [
    azurerm_virtual_network.lab
  ]
}
