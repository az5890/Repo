output "resource_group_id" {
  description = "The ID of the created Azure Resource Group."
  value       = azurerm_resource_group.example_resource_group.id
}

output "virtual_network_id" {
  description = "The ID of the created Azure Virtual Network."
  value       = azurerm_virtual_network.example_virtual_network.id
}
