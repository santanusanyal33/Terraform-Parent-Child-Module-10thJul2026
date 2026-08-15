variable "RG" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "SA" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "vnet" {
  type = map(object({
    virtual_network_name = string
    location             = string
    resource_group_name  = string
    address_space        = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "nic" {
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    subnet_name          = string
    virtual_network_name = string
    pip_name             = string
  }))
}

variable "pip" {
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "vm" {
  type = map(object({
    vm_name             = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
  }))
}

variable "vm_admin_password" {
  type      = string
  sensitive = true
}