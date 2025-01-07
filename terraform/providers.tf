terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.115.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.6.0" 
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
