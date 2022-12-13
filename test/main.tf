module "module_test" {
  source                = "../../terraform-azurerm-azure_disk"
  create_resource_group = false
  resource_group_name   = "RG-VPN"
  location_name         = "eastus"
  name                  = "test-disk"
  size                  = 10
  zone                  = 1
  lun                   = 10
  storage_type         = "PremiumV2_LRS"
  tags = {
    "test" = "test"
  }
  virtual_machine_id = "/subscriptions/72cd989d-dc0f-46b5-9853-787ab80cf489/resourceGroups/RG-VPN/providers/Microsoft.Compute/virtualMachines/iberth3"
}
