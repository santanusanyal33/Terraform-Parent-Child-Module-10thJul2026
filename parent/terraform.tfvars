RG = {
  RG1 = {
    name     = "santa-resourcegroupdev"
    location = "japaneast"
  }
}
SA = {
  SA1 = {
    name                     = "santanustoragedev11"
    resource_group_name      = "santa-resourcegroupdev"
    location                 = "japaneast"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet = {
  vnet1 = {
    virtual_network_name = "santa-vnet"
    location            = "japaneast"
    resource_group_name = "santa-resourcegroupdev"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet ={
  subnet1 = {
  name                 = "Frontend-subnet"
  resource_group_name  = "santa-resourcegroupdev"
  virtual_network_name = "santa-vnet"
  address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
  name                 = "Backend-subnet"
  resource_group_name  = "santa-resourcegroupdev"
  virtual_network_name = "santa-vnet"
  address_prefixes     = ["10.0.2.0/24"]
  }
}
nic = {
  nic1= {
  name                = "SantaLinuxVM-Frontend"
  location            = "japaneast"
  resource_group_name = "santa-resourcegroupdev"
  subnet_name          = "Frontend-subnet"
  virtual_network_name = "santa-vnet"
  pip_name             = "Frontend-pip"
  }
  nic2= {
  name                = "SantaLinuxVM-Backend"
  location            = "japaneast"
  resource_group_name = "santa-resourcegroupdev"
  subnet_name          = "Backend-subnet"
  virtual_network_name = "santa-vnet"
  pip_name             = "Backend-pip"
  }
}
pip = {
  pip1 ={
  pip_name                = "Frontend-pip"
  resource_group_name = "santa-resourcegroupdev"
  location            = "japaneast"
  allocation_method   = "Static"
}
 pip2 ={
  pip_name                = "Backend-pip"
  resource_group_name = "santa-resourcegroupdev"
  location            = "japaneast"
  allocation_method   = "Static"
}
  }
vm = {
  vm1 ={
  vm_name                = "SantaLinuxVM-Frontend"
  resource_group_name = "santa-resourcegroupdev"
  location            = "japaneast"
  size                = "Standard_D2s_v3"
  admin_username      = "Santanuadmin"
  }
  vm2 ={
  vm_name                = "SantaLinuxVM-Backend"
  resource_group_name = "santa-resourcegroupdev"
  location            = "japaneast"
  size                = "Standard_D2s_v3"
  admin_username      = "Santanuadmin"
  }
}
