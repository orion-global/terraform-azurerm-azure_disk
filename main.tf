#------------------------------------------------------------------------------------------
# Local Variables
#------------------------------------------------------------------------------------------

locals {
  _storage_sku = var.storage_type == null ? "Standard_LRS" : var.storage_type
  _create      = var.create_option == null ? "Empty" : var.create_option
}

#------------------------------------------------------------------------------------------
# Resource Group
#------------------------------------------------------------------------------------------

resource "azurerm_resource_group" "resource_group" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location_name
  tags     = var.tags
}

data "azurerm_resource_group" "resource_group" {
  count = var.create_resource_group ? 0 : 1
  name  = var.resource_group_name
}

#------------------------------------------------------------------------------------------
# Disk Configuration
#------------------------------------------------------------------------------------------

resource "azurerm_managed_disk" "example" {
  name                 = var.name
  location             = var.location_name
  resource_group_name  = var.resource_group_name
  storage_account_type = local._storage_sku
  create_option        = local._create
  disk_size_gb         = var.size
  tags                 = var.tags
  zone                 = var.zone
}

#-----------------------------------------------
# Builder
#-----------------------------------------------
# create_option
#   Copy
#   Empty
#   Import
#   FromImage
#   Restore
#   Upload
# disk_access_id
# disk_encryption_set_id
# disk_iops_read_only
# disk_iops_read_write
# disk_mbps_read_only
# disk_mbps_read_write
# edge_zone
# encryption_settings
# gallery_image_reference_id
# hyper_v_generation
# image_reference_id
# logical_sector_size
# max_shares
# network_access_policy
# on_demand_bursting_enabled
# os_type
# public_network_access_enabled
# secure_vm_disk_encryption_set_id
# security_type
# source_resource_id
# source_uri
# storage_account_id
# tier
# trusted_launch_enabled
# upload_size_bytes
# zone


# resource "azurerm_virtual_machine_data_disk_attachment" "example" {
#   managed_disk_id    = azurerm_managed_disk.example.id
#   virtual_machine_id = azurerm_virtual_machine.example.id
#   lun                = "10"
#   caching            = "ReadWrite"
# }
