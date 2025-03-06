# terraform-azure-monitor-private-link-scope

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurecaf"></a> [azurecaf](#requirement\_azurecaf) | 2.0.0-preview3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | > 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurecaf"></a> [azurecaf](#provider\_azurecaf) | 2.0.0-preview3 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | > 4.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_private_link_scope.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_private_link_scope) | resource |
| [azurerm_monitor_private_link_scoped_service.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_private_link_scoped_service) | resource |
| [azurecaf_name.monitor_scope_link_name](https://registry.terraform.io/providers/aztfmod/azurecaf/2.0.0-preview3/docs/data-sources/name) | data source |
| [azurecaf_name.monitor_scope_link_service](https://registry.terraform.io/providers/aztfmod/azurecaf/2.0.0-preview3/docs/data-sources/name) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_linked_resource_id"></a> [linked\_resource\_id](#input\_linked\_resource\_id) | The ID of the linked resource | `map` | n/a | yes |
| <a name="input_monitor_ingestion_access_mode"></a> [monitor\_ingestion\_access\_mode](#input\_monitor\_ingestion\_access\_mode) | The default ingestion access mode for the associated private endpoints in scope. Possible values are Open and PrivateOnly. | `string` | `"Open"` | no |
| <a name="input_monitor_query_access_mode"></a> [monitor\_query\_access\_mode](#input\_monitor\_query\_access\_mode) | The default query access mode for hte associated private endpoints in scope. Possible values are Open and PrivateOnly. | `string` | `"Open"` | no |
| <a name="input_monitor_scope_link_stack"></a> [monitor\_scope\_link\_stack](#input\_monitor\_scope\_link\_stack) | The name of the monitor scope link stack | `string` | n/a | yes |
| <a name="input_monitor_tags"></a> [monitor\_tags](#input\_monitor\_tags) | The tags for the monitor scope link | `map(string)` | `{}` | no |
| <a name="input_prefixes"></a> [prefixes](#input\_prefixes) | The prefixes to use for the naming convention | `list(string)` | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group where the Azure Monitor Private Link Scope should exist | `string` | n/a | yes |
| <a name="input_suffixes"></a> [suffixes](#input\_suffixes) | The suffixes to use for the naming convention | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitor_scope_link_id"></a> [monitor\_scope\_link\_id](#output\_monitor\_scope\_link\_id) | The ID of the Azure Monitor Private Link Scope |
| <a name="output_monitor_scope_link_service"></a> [monitor\_scope\_link\_service](#output\_monitor\_scope\_link\_service) | The ID of the Azure Monitor Private Link Scoped Service |
<!-- END_TF_DOCS -->