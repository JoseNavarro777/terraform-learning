locals {
  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

resource "azurerm_resource_group" "lab" {
  name     = "rg-${local.name_prefix}"
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source = "./modules/network"

  providers = {
    azurerm = azurerm
  }

  resource_group_name = azurerm_resource_group.lab.name
  location            = azurerm_resource_group.lab.location
  name_prefix         = local.name_prefix
  tags                = local.common_tags

  address_space = ["10.90.0.0/16"]

  subnets = {
    app = {
      address_prefixes = ["10.90.1.0/24"]
    }
    database = {
      address_prefixes = ["10.90.2.0/24"]
    }
  }
}
