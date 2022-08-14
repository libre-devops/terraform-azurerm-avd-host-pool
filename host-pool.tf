resource "azurerm_virtual_desktop_host_pool" "host_pool" {
  location                 = var.location
  resource_group_name      = var.rg_name
  name                     = var.host_pool_name
  friendly_name            = var.host_pool_friendly_name
  validate_environment     = var.validate_environment
  start_vm_on_connect      = var.start_vm_on_connect
  custom_rdp_properties    = var.custom_rdp_properties
  description              = var.description
  type                     = var.host_pool_type
  maximum_sessions_allowed = var.host_pool_type == "Pooled" ? var.max_session_allowed : null
  load_balancer_type       = var.host_pool_type == "Personal" ? "Persistent" : var.lb_type
  preferred_app_group_type = title(var.preferred_app_group_type)
  tags                     = var.tags
}