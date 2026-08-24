resource "azurerm_resource_group" "master" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "lab"
    project     = "terraform-cert-master"
  }
}

resource "azurerm_virtual_network" "master" {
  name                = var.vnet_name
  address_space       = ["10.40.0.0/16"]
  location            = azurerm_resource_group.master.location
  resource_group_name = azurerm_resource_group.master.name

  tags = {
    environment = "lab"
    project     = "terraform-cert-master"
  }
}

resource "azurerm_subnet" "app" {
  name                 = "snet-app"
  resource_group_name  = azurerm_resource_group.master.name
  virtual_network_name = azurerm_virtual_network.master.name
  address_prefixes     = ["10.40.1.0/24"]
}

resource "azurerm_subnet" "database" {
  name                 = "snet-database"
  resource_group_name  = azurerm_resource_group.master.name
  virtual_network_name = azurerm_virtual_network.master.name
  address_prefixes     = ["10.40.2.0/24"]
}

resource "azurerm_subnet" "backend" {
  name                 = "snet-backend"
  resource_group_name  = azurerm_resource_group.master.name
  virtual_network_name = azurerm_virtual_network.master.name
  address_prefixes     = ["10.40.3.0/24"]
}
