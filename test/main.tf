module "module_test" {
  source                = "../../terraform-azurerm-azure_disk"
  create_resource_group = false
  resource_group_name   = "test-rg"
  location_name         = "eastus"
  name                  = "test-disk"
  size                  = 10

  tags = {
    "test" = "test"
  }
}
