module "rg" {
  source      = "./module/azurerm_resource_group"
  rg_name     = "rg-${var.application_name}-${var.environment}"
  rg_location = var.primary_location
}

module "vnet" {  
    # depends_on = [ module.rg]
  source              = "./module/azurerm_virtual_network"
  vnet_name           = "vnet-${var.application_name}-${var.environment}"
  vnet_location       = var.primary_location
  resource_group_name = module.rg.rg_name_output
  address_space       = var.address_space
}
