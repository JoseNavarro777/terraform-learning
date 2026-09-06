module "naming_dev" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"

  suffix = ["obj5", "dev"]
}

module "naming_test" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"

  suffix = ["obj5", "test"]
}
