#------------------------------------------------------------------------------------------
# Action variables
#------------------------------------------------------------------------------------------

variable "create_resource_group" {
  description = "Action for creation or not of the resource group"
  type        = bool
  default     = false
}

#------------------------------------------------------------------------------------------
# Default variables
#------------------------------------------------------------------------------------------

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "location_name" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource. Use the map of {tag = value} format."
  type        = map(string)
  default     = {}
}

#------------------------------------------------------------------------------------------
# Data variable
#------------------------------------------------------------------------------------------

variable "name" {
  description = "(Required) Specifies the name of the Managed Disk. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "storage_type" {
  description = "(Required) Specifies the storage account type for the managed disk. Possible values are Standard_LRS, StandardSSD_ZRS, Premium_LRS, PremiumV2_LRS, Premium_ZRS, StandardSSD_LRS and UltraSSD_LRS. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "create_option" {
  description = "(Required) Specifies how the virtual machine should be created. Possible values are Copy, Empty, FromImage, Import, Restore and Upload. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "size" {
  description = "(Optional) Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the name of the disk. Changing this forces a new resource to be created."
  type        = number
  default     = null
}
