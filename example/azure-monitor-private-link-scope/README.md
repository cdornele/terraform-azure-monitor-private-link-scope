<!-- BEGIN_TF_DOCS -->
## Requirements

```
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

```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.21.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_monitor-scope-link-example"></a> [monitor-scope-link-example](#module\_monitor-scope-link-example) | ../.. | n/a |
| <a name="module_resource_group-example"></a> [resource\_group-example](#module\_resource\_group-example) | cdornele/resource-group/azure | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_workspace.example01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_log_analytics_workspace.example02](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitor_scope_link_id"></a> [monitor\_scope\_link\_id](#output\_monitor\_scope\_link\_id) | The ID of the Azure Monitor Private Link Scope |
| <a name="output_monitor_scope_link_service"></a> [monitor\_scope\_link\_service](#output\_monitor\_scope\_link\_service) | The ID of the Azure Monitor Private Link Scoped |
<!-- END_TF_DOCS -->