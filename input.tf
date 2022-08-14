variable "custom_rdp_properties" {
  description = "Passes custom rdp properties to the host pool if used"
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the host pool"
  type        = string
  default     = null
}

variable "host_pool_friendly_name" {
  description = "The friendly name for your host pool"
  type        = string
  default     = null
}

variable "host_pool_name" {
  description = "The name of the host pool"
  type        = string
}

variable "host_pool_type" {
  description = "Determines whether the VMs are part of a pool or are personal assigned, defaults to Personal"
  type        = string
  default     = "Personal"
}

variable "lb_type" {
  description = "Determines the load balancer type in the host pool, can only be BreadthFirst, DepthFirst or Persistent for Personal Pools"
  type        = string
  default     = "BreathFirst"
}

variable "location" {
  description = "The location for this resource to be put in"
  type        = string
}

variable "max_session_allowed" {
  description = "Determines the amount of sessions allowed"
  type        = number
  default     = 1
}

variable "preferred_app_group_type" {
  description = "Sets the preferred app group type for the host pool"
  type        = string
  default     = "None"
}

variable "rg_name" {
  description = "The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists"
  type        = string
  validation {
    condition     = length(var.rg_name) > 1 && length(var.rg_name) <= 24
    error_message = "Resource group name is not valid."
  }
}

variable "start_vm_on_connect" {
  description = "Enables or disables the VM start on connection feature, defaults to true"
  type        = bool
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "terraform"
  }
}

variable "validate_environment" {
  description = "Whether you want to validate the environment, and allows you to test service changes before they deploy to production, defaults to false"
  type        = bool
  default     = false
}
