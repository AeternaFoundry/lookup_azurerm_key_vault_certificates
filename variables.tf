variable "key_vault_certificates_lookup" {
  description = <<EOT
Map of key_vault_certificates_lookup, attributes below
Required:
    - key_vault_id
Optional:
    - include_pending
EOT

  type = map(object({
    key_vault_id    = string
    include_pending = optional(bool)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

