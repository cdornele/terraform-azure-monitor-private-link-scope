#--------------------------------------------*--------------------------------------------
# Module: Azure Monitor Scope Link - Main
#--------------------------------------------*--------------------------------------------

resource "azurerm_monitor_private_link_scope" "this" {
  name                          = data.azurecaf_name.monitor_scope_link_name.result
  resource_group_name  = var.resource_group_name
  ingestion_access_mode = var.monitor_ingestion_access_mode
  query_access_mode     = var.monitor_query_access_mode
  tags                          = var.monitor_tags
}

resource "azurerm_monitor_private_link_scoped_service" "this" {
  for_each            = var.linked_resource_id
  name                =  format("%s_%s", each.key, data.azurecaf_name.monitor_scope_link_service.result)
  resource_group_name = var.resource_group_name
  scope_name          = azurerm_monitor_private_link_scope.this.name
  linked_resource_id  = each.value
}



# end
#--------------------------------------------*--------------------------------------------