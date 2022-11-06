output "availability_set_id" {
  description = "The name of an availability set"
  value       = var.create_availability_set == true && var.create_availability_set != null ? azurerm_availability_set.availability_set_with_proximity_placement_group.*.id : azurerm_availability_set.availability_set.*.id
}

output "availability_set_name" {
  description = "The name of an availability set"
  value       = var.create_availability_set == true && var.create_availability_set != null ? azurerm_availability_set.availability_set_with_proximity_placement_group.*.name : azurerm_availability_set.availability_set.*.name
}

output "proximity_placement_group_id" {
  description = "The id of a proximity placement group"
  value       = var.create_proximity_placement_group == true && var.create_proximity_placement_group != null ? azurerm_proximity_placement_group.proximity_placement_group.*.id : null
}

output "proximity_placement_group_name" {
  description = "The name of a proximity placement group"
  value       = var.create_proximity_placement_group == true && var.create_proximity_placement_group != null ? azurerm_proximity_placement_group.proximity_placement_group.*.name : null
}
