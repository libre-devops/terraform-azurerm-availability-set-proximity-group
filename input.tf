variable "availability_set_name" {
  description = "The name of an availability set if its created"
  type        = string
}

variable "create_availability_set" {
  description = "Whether an availability set should be created"
  type        = bool
}

variable "create_proximity_placement_group" {
  description = "Whether a proximity placement group should be created"
  type        = bool
  default     = false
}

variable "identity_ids" {
  description = "Specifies a list of user managed identity ids to be assigned to the VM."
  type        = list(string)
  default     = []
}

variable "identity_type" {
  description = "The Managed Service Identity Type of this Virtual Machine."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location for this resource to be put in"
  type        = string
}

variable "platform_fault_domain_count" {
  description = "The number of platform fault domains"
  type        = number
}

variable "platform_update_domain_count" {
  description = "The number of update domains"
  type        = number
}

variable "proximity_placement_group_name" {
  description = "The name of a proximity placement group"
  type        = string
  default     = null
}

variable "rg_name" {
  description = "The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists"
  type        = string
  validation {
    condition     = length(var.rg_name) > 1 && length(var.rg_name) <= 24
    error_message = "Resource group name is not valid."
  }
}

variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "terraform"
  }
}
