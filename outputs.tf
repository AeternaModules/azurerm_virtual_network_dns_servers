output "virtual_network_dns_servers_id" {
  description = "Map of id values across all virtual_network_dns_servers, keyed the same as var.virtual_network_dns_servers"
  value       = { for k, v in azurerm_virtual_network_dns_servers.virtual_network_dns_servers : k => v.id }
}
output "virtual_network_dns_servers_dns_servers" {
  description = "Map of dns_servers values across all virtual_network_dns_servers, keyed the same as var.virtual_network_dns_servers"
  value       = { for k, v in azurerm_virtual_network_dns_servers.virtual_network_dns_servers : k => v.dns_servers }
}
output "virtual_network_dns_servers_virtual_network_id" {
  description = "Map of virtual_network_id values across all virtual_network_dns_servers, keyed the same as var.virtual_network_dns_servers"
  value       = { for k, v in azurerm_virtual_network_dns_servers.virtual_network_dns_servers : k => v.virtual_network_id }
}

