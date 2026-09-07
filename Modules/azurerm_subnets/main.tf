variable "subnets" {}

resource "azurerm_subnet" "snets" {
  for_each = var.subnets
  name = each.value.name
  resource_group_name = each.value.resource_groups
  virtual_network_name = each.value.virtual_networks
  address_prefixes = each.value.address_prefixes
}