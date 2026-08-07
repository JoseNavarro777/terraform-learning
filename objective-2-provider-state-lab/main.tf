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

resource "azurerm_resource_group" "objective2" {
  name     = "rg-terraform-objective2"
  location = "East US"

  tags = {
    environment = "lab"
    objective   = "2"
  }
}
