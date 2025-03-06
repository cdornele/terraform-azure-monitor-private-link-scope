#--------------------------------------------*--------------------------------------------
# Example: Azure Monitor Scope Link
#--------------------------------------------*--------------------------------------------

provider "azurerm" {
  features {}
}

module "resource_group-example" {
  source   = "cdornele/resource-group/azure"
  version  = "1.0.0"
  stack    = "example"
  suffixes = ["t", "01"]
  location = "eastus2"
  tags = {
    "project" = "example"
    "customer"     = "example"
    "owner"        = "example"
  }
}

resource "azurerm_log_analytics_workspace" "example01" {
  name                = "law-example-t-01"
  location            = module.resource_group-example.location
  resource_group_name = module.resource_group-example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  internet_ingestion_enabled = false
}

resource "azurerm_log_analytics_workspace" "example02" {
  name                = "law-example-t-02"
  location            = module.resource_group-example.location
  resource_group_name = module.resource_group-example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  internet_ingestion_enabled = false
}

module "monitor-scope-link-example" {
  source  = "../.."
  monitor_scope_link_stack = "example"
  suffixes = ["t", "01"]
  resource_group_name = module.resource_group-example.name
  monitor_ingestion_access_mode = "PrivateOnly"
  monitor_query_access_mode = "Open"
  linked_resource_id = {
    law01 = azurerm_log_analytics_workspace.example01.id
    law02 = azurerm_log_analytics_workspace.example02.id
  }
  monitor_tags = {
    "project" = "example"
    "customer"     = "example"
    "owner"        = "example"
  }
}

output "monitor_scope_link_id" {
  description = "The ID of the Azure Monitor Private Link Scope"
  value = module.monitor-scope-link-example.monitor_scope_link_id
}

output "monitor_scope_link_service" {
  description = "The ID of the Azure Monitor Private Link Scoped"
  value = module.monitor-scope-link-example.monitor_scope_link_service
}

# end 
#--------------------------------------------*--------------------------------------------