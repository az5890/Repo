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

variable "resource_group_name" {
  description = "RG"
}

variable "virtual_network_name" {
  description = "VNET"
}

resource "azurerm_resource_group" "example_resource_group" {
  name     = var.resource_group_name
  location = "East US"
}

resource "azurerm_virtual_network" "example_virtual_network" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example_resource_group.location
  resource_group_name = azurerm_resource_group.example_resource_group.name
}

