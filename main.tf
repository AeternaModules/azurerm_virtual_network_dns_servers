resource "azurerm_virtual_network_dns_servers" "virtual_network_dns_serverss" {
  for_each = var.virtual_network_dns_serverss

  virtual_network_id = each.value.virtual_network_id
  dns_servers        = each.value.dns_servers
}

