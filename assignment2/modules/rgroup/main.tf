resource "azurerm_resource_group" "rgroup5456" {
  name     = "N01585456-assignment2-RG"
  location = "eastus"
   tags = {
    Environment    = "Lab"
    ExpirationDate = "2023-06-30"
    Name           = "faiz.radhanpuri"
    Project        = "Automation Project – Assignment 2"
  }
}
	