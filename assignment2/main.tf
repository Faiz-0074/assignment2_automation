#root module main.tf


module "rgroup" {
  source = "./modules/rgroup"
}

module "network" {
  source = "./modules/network"
location = "eastus"
  resource_group_name = module.rgroup.resource_group_name
subnet_name = "subnet1"
  vnet_name  = "vnet5456"
 address_space = ["10.0.0.0/16"]
subnet_address_prefix = "10.0.1.0/24"
 }

module "common" {
  source = "./modules/common"

  resource_group_name = module.rgroup.resource_group_name
  location            = "eastus"
  

tags = var.tags
}

module "linux" {
  source   = "./modules/linux"
  vm_count = 2
  vm_size  = "Standard_B1s"
resource_group_name = module.rgroup.resource_group_name
  subnet_id   = module.network.subnet_id
  vnet_name   = module.network.vnet_name
  subnet_name = module.network.subnet_name
location            = "eastus"
  storage_account_uri = module.common.storage_account_uri
tags = var.tags
}


module "vm_windows" {
  source                          = "./modules/vmwindows"
  resource_group_name             = module.rgroup.resource_group_name
  location                        = "eastus"
  subnet_id                       = module.network.subnet_id
  vm_name                         = "vm-windows"

  os_type                         = "Windows"
  dns_label                       = "public-ipwindows"
  avail_set_name                  = "5456windows-availaibility-set"
  public_ip_dns_label             = "win5456publicip"
  antimalware_extension_name      = "IaaSAntimalware"
  boot_diagnostics_storage_uri    = module.common.storage_account_uri
  tags = var.tags
}

module "datadisk" {
  source              = "./modules/datadisk"
  location            = "eastus"
  resource_group_name = module.rgroup.resource_group_name
  subnet_id           = module.network.subnet_id
  vm_count            = 3

  linux_vm_ids        = module.linux.vm_ids
  vmwindows_vm_id     = module.vm_windows.vm_id
	tags = var.tags
}


module "loadbalancer" {
  source              = "./modules/loadbalancer"
   resource_group_name = module.rgroup.resource_group_name
  location            = "eastus"
linux_vm_ids = module.linux.vm_ids
tags = var.tags

}



module "database" {
  source              = "./modules/database"
  prefix              = "n5456"
  location            = "eastus"
  resource_group_name = module.rgroup.resource_group_name
  db_name             = "mydatabase"
  db_admin_username   = "adminuser"
  db_admin_password   = "Faiz@456"
tags = var.tags
}

resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "wsl ansible-playbook -i /home/faizsdn/automation/ansible/assignment2/hosts /home/faizsdn/automation/ansible/assignment2/groupX-playbook.yml"

    
  }
  
}