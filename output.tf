output "host_pool_friendly_name" {
  value       = azurerm_virtual_desktop_host_pool.host_pool.friendly_name
  description = "The friendly name of the host pool"
}

output "host_pool_id" {
  value       = azurerm_virtual_desktop_host_pool.host_pool.id
  description = "The ID of the host pool"
}

output "host_pool_location" {
  value       = azurerm_virtual_desktop_host_pool.host_pool.location
  description = "The location of the host pool"
}

output "host_pool_name" {
  value       = azurerm_virtual_desktop_host_pool.host_pool.name
  description = "The name of the host pool"
}

output "host_pool_registration_info" {
  value       = azurerm_virtual_desktop_host_pool.host_pool.registration_info
  description = "The registration info of the host pool"
}

output "host_pool_rg_name" {
  value       = azurerm_virtual_desktop_host_pool.host_pool.resource_group_name
  description = "The friendly name of the host pool"
}
