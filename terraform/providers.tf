terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.1.0"
        }
    }
    backend "azurerm" {
        resource_group_name  = "adgtest001"
        storage_account_name = "saadgtest001"
        container_name       = "tfstate"
        key                  = "tflabs001.tfstate"
        tenant_id            = secrets.ARM_TENANT_ID
        subscription_id      = secrets.ARM_SUBSCRIPTION_ID
        client_id            = secrets.ARM_CLIENT_ID
        client_secret        = secrets.ARM_CLIENT_SECRET
    }
}

provider "azurerm" {
    features        = {}
}