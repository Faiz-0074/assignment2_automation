output "vnet_name" {
  value = azurerm_virtual_network.vnet5456.name
}

output "subnet_name" {
  value = azurerm_subnet.subnet5456.name
}
output "subnet_id" {
  value = azurerm_subnet.subnet5456.id
}

output "address_space"{
value = azurerm_virtual_network.vnet5456.address_space
}

output "subnet_address_prefix"{
value = azurerm_subnet.subnet5456.address_prefixes
}