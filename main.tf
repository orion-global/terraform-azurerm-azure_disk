#------------------------------------------------------------------------------------------
# Local Variables
#------------------------------------------------------------------------------------------

locals {
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
  name                 = "${local.vm_name}-disk1"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
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
  # disk_size_gb
  # edge_zone
  # encryption_settings
  # gallery_image_reference_id
  # hyper_v_generation
  # image_reference_id
  # location
  # logical_sector_size
  # max_shares
  # name
  # network_access_policy
  # on_demand_bursting_enabled
  # os_type
  # public_network_access_enabled
  # resource_group_name
  # secure_vm_disk_encryption_set_id
  # security_type
  # source_resource_id
  # source_uri
  # storage_account_id
  # storage_account_type
  # tags
  # tier
  # trusted_launch_enabled
  # upload_size_bytes
  # zone


resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = azurerm_virtual_machine.example.id
  lun                = "10"
  caching            = "ReadWrite"
}