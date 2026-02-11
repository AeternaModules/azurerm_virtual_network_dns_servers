variable "virtual_network_dns_serverses" {
  description = <<EOT
Map of virtual_network_dns_serverses, attributes below
Required:
    - virtual_network_id
Optional:
    - dns_servers
EOT

  type = map(object({
    virtual_network_id = string
    dns_servers        = optional(list(string))
  }))
}

