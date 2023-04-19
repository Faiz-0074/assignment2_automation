
variable "tags" {
  type        = map(string)
 
}
variable "resource_group_name" {}
variable "location" {}
variable "lb_backend_pool_name" {
  default = "backend-pool"
}
variable "lb_probe_port" {
  default = 80
}
variable "linux_vm_ids"{}