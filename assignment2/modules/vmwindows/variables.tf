variable "tags" {
  type        = map(string)
  
}

variable "location" {
  
}

variable "resource_group_name" {
 
}

variable "subnet_id" {

}

variable "vm_name" {
 
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "adminuser"
}

variable "admin_password" {
  default = "Faiz@456"
}

variable "os_disk_name" {
  default = "osdisk-windows"
}

variable "os_type" {
  default = "Windows"
}

variable "dns_label" {
 
}

variable "avail_set_name" {
  
}

variable "public_ip_dns_label" {
  default = "public-ip-5456"
}

variable "antimalware_extension_name" {

}

variable "antimalware_extension_publisher" {
  default = "Microsoft.Azure.Security"
}

variable "antimalware_extension_type" {
 default = "IaaSAntimalware"
}

variable "antimalware_extension_version" {
default = "1.3" 
}


variable "boot_diagnostics_storage_uri" {

}