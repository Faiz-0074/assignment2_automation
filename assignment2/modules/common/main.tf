

resource "azurerm_log_analytics_workspace" "log_workspace" {
  name                = "log-workspace"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  
  tags = var.tags
}

resource "azurerm_recovery_services_vault" "recovery_vault" {
  name                = "recovery-vault"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku = "Standard"
  
  tags                = var.tags
}


resource "azurerm_storage_account" "storage_account" {
  name                     = "stacc5456"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  tags = var.tags
}


