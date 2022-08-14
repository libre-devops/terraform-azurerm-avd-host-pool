```hcl
module "plan" {
  source = "registry.terraform.io/libre-devops/service-plan/azurerm"

  rg_name  = module.rg.rg_name
  location = module.rg.rg_location
  tags     = module.rg.rg_tags
  
  app_service_plan_name          = "plan-${var.short}-${var.loc}-${terraform.workspace}-01"
  add_to_app_service_environment = false
  
  os_type  = "Linux"
  sku_name = "Y1"
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_desktop_host_pool.host_pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_desktop_host_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_rdp_properties"></a> [custom\_rdp\_properties](#input\_custom\_rdp\_properties) | Passes custom rdp properties to the host pool if used | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the host pool | `string` | `null` | no |
| <a name="input_host_pool"></a> [host\_pool](#input\_host\_pool) | The name of the host pool | `string` | n/a | yes |
| <a name="input_host_pool_friendly_name"></a> [host\_pool\_friendly\_name](#input\_host\_pool\_friendly\_name) | The friendly name for your host pool | `string` | `null` | no |
| <a name="input_host_pool_type"></a> [host\_pool\_type](#input\_host\_pool\_type) | Determines whether the VMs are part of a pool or are personal assigned, defaults to Personal | `string` | `"Personal"` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | Specifies a list of user managed identity ids to be assigned to the VM. | `list(string)` | `[]` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The Managed Service Identity Type of this Virtual Machine. | `string` | `""` | no |
| <a name="input_lb_type"></a> [lb\_type](#input\_lb\_type) | Determines the load balancer type in the host pool, can only be BreadthFirst, DepthFirst or Persistent for Personal Pools | `string` | `"BreathFirst"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for this resource to be put in | `string` | n/a | yes |
| <a name="input_max_session_allowed"></a> [max\_session\_allowed](#input\_max\_session\_allowed) | Determines the amount of sessions allowed | `number` | `1` | no |
| <a name="input_preferred_app_group_type"></a> [preferred\_app\_group\_type](#input\_preferred\_app\_group\_type) | Sets the preferred app group type for the host pool | `string` | `"None"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists | `string` | n/a | yes |
| <a name="input_start_vm_on_connect"></a> [start\_vm\_on\_connect](#input\_start\_vm\_on\_connect) | Enables or disables the VM start on connection feature, defaults to true | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of the tags to use on the resources that are deployed with this module. | `map(string)` | <pre>{<br>  "source": "terraform"<br>}</pre> | no |
| <a name="input_validate_environment"></a> [validate\_environment](#input\_validate\_environment) | Whether you want to validate the environment, and allows you to test service changes before they deploy to production, defaults to false | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host_pool_friendly_name"></a> [host\_pool\_friendly\_name](#output\_host\_pool\_friendly\_name) | The friendly name of the host pool |
| <a name="output_host_pool_id"></a> [host\_pool\_id](#output\_host\_pool\_id) | The ID of the host pool |
| <a name="output_host_pool_location"></a> [host\_pool\_location](#output\_host\_pool\_location) | The location of the host pool |
| <a name="output_host_pool_name"></a> [host\_pool\_name](#output\_host\_pool\_name) | The name of the host pool |
| <a name="output_host_pool_registration_info"></a> [host\_pool\_registration\_info](#output\_host\_pool\_registration\_info) | The registration info of the host pool |
| <a name="output_host_pool_rg_name"></a> [host\_pool\_rg\_name](#output\_host\_pool\_rg\_name) | The friendly name of the host pool |
