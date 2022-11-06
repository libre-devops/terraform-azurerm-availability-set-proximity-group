output "availability_set_id" {
  description = "The name of an availability set"
  value       = var.create_availability_set == true && var.create_availability_set != null ? element(azurerm_availability_set.availability_set_with_proximity_placement_group.*.id, 0) : element(azurerm_availability_set.availability_set.*.id, 0)
}

output "availability_set_name" {
  description = "The name of an availability set"
  value       = var.create_availability_set == true && var.create_availability_set != null ? element(azurerm_availability_set.availability_set_with_proximity_placement_group.*.name, 0) : element(azurerm_availability_set.availability_set.*.name, 0)
}

output "proximity_placement_group_id" {
  description = "The id of a proximity placement group"
  value       = var.create_proximity_placement_group == true && var.create_proximity_placement_group != null ? element(azurerm_proximity_placement_group.proximity_placement_group.*.id, 0) : null
}

output "proximity_placement_group_name" {
  description = "The name of a proximity placement group"
  value       = var.create_proximity_placement_group == true && var.create_proximity_placement_group != null ? element(azurerm_proximity_placement_group.proximity_placement_group.*.name, 0) : null
}
