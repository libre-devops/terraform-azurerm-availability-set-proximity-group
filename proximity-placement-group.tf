resource "azurerm_proximity_placement_group" "proximity_placement_group" {
  count               = var.create_proximity_placement_group == true && var.create_proximity_placement_group != null ? 1 : 0
  name                = try(var.proximity_placement_group_name, null)
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.tags
}