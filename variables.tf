variable "virtual_network_dns_servers" {
  description = <<EOT
Map of virtual_network_dns_servers, attributes below
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
      for k, v in var.virtual_network_dns_servers : (
        v.dns_servers == null || (alltrue([for x in v.dns_servers : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

