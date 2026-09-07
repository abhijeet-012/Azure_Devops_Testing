module "azurerm_resource_group" {
    source = "../../Modules/azurerm_resource_group"
    resource_groups = var.resource_groups
}

module "azurerm_virtual_network" {
    depends_on = [module.azurerm_resource_group ]
    source = "../../Modules/azurerm_virtual_network"
    virtual_networks = var.virtual_networks
}

module "azurerm_subnet" {
    depends_on = [module.azurerm_virtual_network ]
    source = "../../Modules/azurerm_subnets"
    subnets = var.subnets
}