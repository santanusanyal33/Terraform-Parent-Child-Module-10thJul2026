module "azurerm_resource_group" {
  source = "../child/azurerm_resource_group"
  RG     = var.RG
}
module "azurerm_storage_account" {
  source = "../child/azurerm_storageaccount"
  SA     = var.SA
  depends_on = [
    module.azurerm_resource_group
  ]
}
module "azurerm_vnet" {
  source     = "../child/azurerm_vnet"
  vnet       = var.vnet
  depends_on = [module.azurerm_resource_group]
}
module "azurerm_subnet" {
  source     = "../child/azurerm_subnet"
  subnet     = var.subnet
  depends_on = [module.azurerm_vnet, module.azurerm_resource_group]
}
module "azurerm_public_ip" {
  source     = "../child/azurerm_public_ip"
  pip        = var.pip
  depends_on = [module.azurerm_resource_group]
}
module "azurerm_NIC" {
  source     = "../child/azurerm_NIC"
  nic        = var.nic
  depends_on = [module.azurerm_subnet, module.azurerm_resource_group]
}
module "azurerm_virtual_machine" {
  source            = "../child/azurerm_virtual_machine"
  vm                = var.vm
  vm_admin_password = var.vm_admin_password
  depends_on        = [module.azurerm_NIC, module.azurerm_resource_group]
}

