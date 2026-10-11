data "azurerm_key_vault_certificates" "key_vault_certificates_lookup" {
  for_each = var.key_vault_certificates_lookup

  key_vault_id    = each.value.key_vault_id
  include_pending = each.value.include_pending
}

