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

module "example" {
  source                   = "./variable.tf"
  resource_group_name      = "example-resource-group"
  virtual_network_name     = "example-virtual-network"
}


