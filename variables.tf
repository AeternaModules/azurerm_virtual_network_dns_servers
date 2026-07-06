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
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_dns_serverses : (
        v.dns_servers == null || (length(v.dns_servers) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_network_dns_servers's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
}

