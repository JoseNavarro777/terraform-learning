module "dev" {
  source = "./modules/app-environment"

  resource_group_name = module.naming_dev.resource_group.name
  location            = "eastus"
  environment         = "dev"
}

module "test" {
  source = "./modules/app-environment"

  resource_group_name = module.naming_test.resource_group.name
  location            = "eastus"
  environment         = "qa"
}
