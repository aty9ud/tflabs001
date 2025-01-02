terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.115.0"
        }
    }
    backend "azurerm" {
        resource_group_name  = "tf_rg_blobstore"
        storage_account_name = "tfstorageaccountdisso"
        container_name       = "tfstate"
        key                  = "tflabs001.tfstate"
    }
}

provider "azurerm" {
    features        = {}
    tenant_id       = secrets.ARM_TENANT_ID
    subscription_id = secrets.ARM_SUBSCRIPTION_ID
    client_id       = secrets.ARM_CLIENT_ID
    client_secret   = secrets.ARM_CLIENT_SECRET
}