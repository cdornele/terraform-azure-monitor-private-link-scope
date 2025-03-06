#--------------------------------------------*--------------------------------------------
# Module: Azure Monitor Scope Link - Variables
#--------------------------------------------*--------------------------------------------

variable "monitor_scope_link_stack" {
  description = "The name of the monitor scope link stack"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the Azure Monitor Private Link Scope should exist"
  type        = string
}

variable "monitor_ingestion_access_mode" {
  description = "The default ingestion access mode for the associated private endpoints in scope. Possible values are Open and PrivateOnly."
  type        = string
  default     = "Open"
}

variable "monitor_query_access_mode" {
  description = "The default query access mode for hte associated private endpoints in scope. Possible values are Open and PrivateOnly."
  type           = string
  default       = "Open"
}

variable "linked_resource_id" {
  description = "The ID of the linked resource"
  type        = map
}

variable "monitor_tags" {
  description = "The tags for the monitor scope link"
  type        = map(string)
  default = {}
}

variable "prefixes" {
  description = "The prefixes to use for the naming convention"
  type        = list(string)
  default     = []
}

variable "suffixes" {
  description = "The suffixes to use for the naming convention"
  type        = list(string)
  default     = []
}

# end
#--------------------------------------------*--------------------------------------------