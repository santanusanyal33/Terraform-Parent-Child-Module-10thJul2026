
output "pip_ids" {
  value = {
    for k, pip in azurerm_public_ip.pip :
    k => {
      name = pip.name
      id   = pip.id
    }
  }
}

