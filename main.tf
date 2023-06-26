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

# module "resource_group" {
#   source = "./module-1"
#   resource_group_name = rg.azurerm_resource_group
#   location = rg.location
# }

# Define the resource group
resource "azurerm_resource_group" "example" {
  name     = "RG"
  location = "East US"
}