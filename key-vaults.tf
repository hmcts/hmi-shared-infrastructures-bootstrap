locals {
  key_vault_name = "${var.product}-bootstrap-kv-${var.env}"
}

module "kv_hmi" {
  source                      = "git@github.com:hmcts/cnp-module-key-vault?ref=master"
  name                        = local.key_vault_name
  product                     = var.product
  env                         = var.env
  object_id                   = var.jenkins_identity_object_id
  resource_group_name         = data.azurerm_resource_group.rg.name
  product_group_name          = var.active_directory_group
  common_tags                 = var.common_tags
  create_managed_identity     = false
  managed_identity_object_ids = [data.azurerm_user_assigned_identity.hmi.principal_id]
}
