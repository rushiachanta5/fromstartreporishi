terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_resource_group" "tfstate" {
  name     = var.stateresourcegroup
  location = var.location
}

resource "azurerm_storage_account" "tfstate" {
  name                     = var.storageaccount
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = var.accounttier
  account_replication_type = var.accountreplicationtype
  allow_blob_public_access = true

  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.storagecontainer
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = var.container_access_type
}
