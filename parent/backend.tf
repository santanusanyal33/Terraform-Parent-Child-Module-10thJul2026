terraform {
  backend "azurerm" {
    resource_group_name  = "santa-resourcegroupdev"
    storage_account_name = "santastorage12"
    container_name       = "santastatefile12"
    key                  = "terraform.tfstate"
  }
}
