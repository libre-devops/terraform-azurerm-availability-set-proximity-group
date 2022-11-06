resource "azurerm_availability_set" "availability_set_with_proximity_placement_group" {
  count                        = var.create_proximity_placement_group == true && var.create_proximity_placement_group != null && var.create_availability_set == true && var.create_availability_set != null ? 1 : 0
  name                         = try(var.availability_set_name)
  proximity_placement_group_id = azurerm_proximity_placement_group.proximity_placement_group[count.index].id
  platform_fault_domain_count  = var.platform_fault_domain_count
  platform_update_domain_count = var.platform_update_domain_count
  location                     = var.location
  resource_group_name          = var.rg_name
  tags                         = var.tags
}

resource "azurerm_availability_set" "availability_set" {
  count                        = var.create_availability_set == true && var.create_availability_set != null ? 1 : 0
  name                         = try(var.availability_set_name)
  platform_fault_domain_count  = var.platform_fault_domain_count
  platform_update_domain_count = var.platform_update_domain_count
  location                     = var.location
  resource_group_name          = var.rg_name
  tags                         = var.tags
}