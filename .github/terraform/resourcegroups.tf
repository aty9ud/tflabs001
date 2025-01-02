resource "azurerm_resource_group" "rgadgtest001" {
    name = "rg_adgtest001"
    location = var.location
    tags = var.adgtags
}