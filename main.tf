terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.115.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "adgtfstateRG02"
    storage_account_name = "adgtfstate02319476259"
    container_name       = "tfstate"
    key                  = "adg021terraform.state"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourcegroup" {
    name     = var.rsgname
    location = var.location
}