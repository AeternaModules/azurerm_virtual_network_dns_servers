output "virtual_network_dns_serverses" {
  description = "All virtual_network_dns_servers resources"
  value       = azurerm_virtual_network_dns_servers.virtual_network_dns_serverses
}
output "virtual_network_dns_serverses_dns_servers" {
  description = "List of dns_servers values across all virtual_network_dns_serverses"
  value       = [for k, v in azurerm_virtual_network_dns_servers.virtual_network_dns_serverses : v.dns_servers]
}
output "virtual_network_dns_serverses_virtual_network_id" {
  description = "List of virtual_network_id values across all virtual_network_dns_serverses"
  value       = [for k, v in azurerm_virtual_network_dns_servers.virtual_network_dns_serverses : v.virtual_network_id]
}

