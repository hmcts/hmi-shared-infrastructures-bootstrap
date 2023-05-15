locals {
  prefix = "${var.product}-bootstrap"
  resource_group_name  = "${local.prefix}-${var.env}-rg"
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = var.common_tags
}

data "azurerm_client_config" "current" {}

data "azurerm_user_assigned_identity" "hmi" {
  name                = "hmi-${var.env}-mi"
  resource_group_name = "managed-identities-${var.env}-rg"
}