locals {
  resource_group_name  = "${var.product}-bootstrap-${var.env}-rg"
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = var.common_tags
}

data "azurerm_client_config" "current" {}
