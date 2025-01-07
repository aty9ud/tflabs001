resource "azurerm_resource_group" "test_resource_group" {
  name     = var.tstrsgname
  location = var.location
  tags     = var.adgtest_tags
}
