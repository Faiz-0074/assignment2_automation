
variable "tags" {
  type        = map(string)
 
}

variable "resource_group_name" {
  type    = string
  
}

variable "location" {

}


variable "vnet_name" {
  type    = string

}

variable "subnet_name" {
  type    = string

}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "vm_count" {
  type    = number
  default = 2
}

variable "dns_label_prefix" {
  type    = string
  default = "5456"
}

variable "ssh_user" {
  type    = string
  default = "centos"
}

variable "ssh_public_key_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "subnet_id" {
  type = string
}

variable "storage_account_uri" {
}
