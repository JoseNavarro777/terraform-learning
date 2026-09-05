resource "azurerm_resource_group" "lab" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network"

  resource_group_name = azurerm_resource_group.lab.name
  location            = azurerm_resource_group.lab.location
  vnet_name           = "vnet-objective-5-modules"
  address_space       = ["10.80.0.0/16"]

  subnets = {
    app      = "10.80.1.0/24"
    database = "10.80.2.0/24"
  }
}
