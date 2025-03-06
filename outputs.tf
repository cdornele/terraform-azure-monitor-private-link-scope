#--------------------------------------------*--------------------------------------------
# Module: Azure Monitor Scope Link - Outputs
#--------------------------------------------*--------------------------------------------

output "monitor_scope_link_id" {
  description = "The ID of the Azure Monitor Private Link Scope"
  value = azurerm_monitor_private_link_scope.this.id
}

output "monitor_scope_link_service" {
  description = "The ID of the Azure Monitor Private Link Scoped Service"
  value = [for service in azurerm_monitor_private_link_scoped_service.this : service.id]
}