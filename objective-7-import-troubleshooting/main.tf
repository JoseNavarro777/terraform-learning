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

resource "azurerm_resource_group" "cli_import" {
  name     = "rg-objective-7-cli-import"
  location = "eastus"

  tags = {
    environment = "lab"
  }
}
