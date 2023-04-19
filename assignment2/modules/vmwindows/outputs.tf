output "vm_hostname" {
  value = azurerm_virtual_machine.windows_vm.os_profile[*].computer_name
}

output "vm_private_ip_address" {
  value = azurerm_network_interface.vm_nic5456.private_ip_address
}

output "vm_public_ip_address" {
  value = azurerm_public_ip.windows_public_ip.ip_address
}
output "vm_id" {
  value = azurerm_virtual_machine.windows_vm.id
}