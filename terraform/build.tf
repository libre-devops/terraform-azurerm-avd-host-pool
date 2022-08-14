module "rg" {
  source = "registry.terraform.io/libre-devops/rg/azurerm"

  rg_name  = "rg-${var.short}-${var.loc}-${terraform.workspace}-build" // rg-ldo-euw-dev-build
  location = local.location                                            // compares var.loc with the var.regions var to match a long-hand name, in this case, "euw", so "westeurope"
  tags     = local.tags

  #  lock_level = "CanNotDelete" // Do not set this value to skip lock
}

module "avd_host_pool" {
  source = "registry.terraform.io/libre-devops/avd-host-pool/azurerm"

  location = module.rg.rg_location
  rg_name  = module.rg.rg_name
  tags     = module.rg.rg_tags

  host_pool_name          = "vdpool-${var.short}-${var.loc}-${terraform.workspace}-01"
  host_pool_friendly_name = "vdpool01"
  host_pool_type          = "Personal"
  validate_environment    = true
  description             = "Test AVD instance"
  max_session_allowed     = "1"
}