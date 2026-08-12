variable "RG" {}
variable "SA" {}
variable "vnet" {}
variable "subnet" {}
variable "nic" {}
variable"pip"{}
variable"vm"{}
variable "vm_admin_password" {
  type      = string
  sensitive = true
}
