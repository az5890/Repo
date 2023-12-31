terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.61.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
  
  }
}

module "resource_group" {
  source = "./module-rg"
  example = var.azurerm_resource_group
  # resource = var.azurerm_resource_group
}

