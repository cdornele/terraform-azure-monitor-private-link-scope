#--------------------------------------------*--------------------------------------------
# Module: Azure Monitor Scope Link - Naming
#--------------------------------------------*--------------------------------------------

data "azurecaf_name" "monitor_scope_link_name" {
  name          = format("%s-%s", "ampls", var.monitor_scope_link_stack)
  resource_type = "general"
  prefixes      = var.prefixes
  suffixes      = var.suffixes
  use_slug      = false
  clean_input   = true
  separator     = "-"
}

data "azurecaf_name" "monitor_scope_link_service" {
  name          = format("%s-%s","ampls", var.monitor_scope_link_stack)
  resource_type = "general"
  prefixes      = var.prefixes
  suffixes      = var.suffixes
  use_slug      = false
  clean_input   = true
  separator     = "-"
}

# end
#--------------------------------------------*--------------------------------------------
