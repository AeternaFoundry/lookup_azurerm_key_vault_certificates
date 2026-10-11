output "key_vault_certificates_lookup_id" {
  description = "Map of id values across all key_vault_certificates_lookup, keyed the same as var.key_vault_certificates_lookup"
  value       = { for k, v in data.azurerm_key_vault_certificates.key_vault_certificates_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_certificates_lookup_certificates" {
  description = "Map of certificates values across all key_vault_certificates_lookup, keyed the same as var.key_vault_certificates_lookup"
  value       = { for k, v in data.azurerm_key_vault_certificates.key_vault_certificates_lookup : k => v.certificates if v.certificates != null && length(v.certificates) > 0 }
}
output "key_vault_certificates_lookup_include_pending" {
  description = "Map of include_pending values across all key_vault_certificates_lookup, keyed the same as var.key_vault_certificates_lookup"
  value       = { for k, v in data.azurerm_key_vault_certificates.key_vault_certificates_lookup : k => v.include_pending if v.include_pending != null }
}
output "key_vault_certificates_lookup_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_certificates_lookup, keyed the same as var.key_vault_certificates_lookup"
  value       = { for k, v in data.azurerm_key_vault_certificates.key_vault_certificates_lookup : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "key_vault_certificates_lookup_names" {
  description = "Map of names values across all key_vault_certificates_lookup, keyed the same as var.key_vault_certificates_lookup"
  value       = { for k, v in data.azurerm_key_vault_certificates.key_vault_certificates_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}

