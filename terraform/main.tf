resource "azurerm_resource_group" "test_resource_group" {
  name     = var.tstrsgname
  location = var.location
  tags     = var.adgtest_tags
}

module "ResourceGroupModule" {
  source    = "./modules/rgmod"
  base_name = "TerraformEx"
  location  = "northeurope"
}

module "StorageAccountModule" {
  source              = "./modules/stgacc"
  base_name           = "TerraformExADG01"
  resource_group_name = module.ResourceGroupModule.rg_name_out
  location            = "northeurope"
}
