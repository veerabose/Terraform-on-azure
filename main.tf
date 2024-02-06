terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.43.0"
    }
  }
  cloud {
    organization = "Ck-Terraform"

    workspaces {
      name = "Terraform-on-Azure"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "veera-terraform-demo"
  location = "eastus"
}

module "securestorage" {
  source               = "app.terraform.io/Ck-Terraform/securestorage/azurerm"
  version              = "1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "veerastrg3728"
}

module "securestorage" {
  source               = "app.terraform.io/Ck-Terraform/securestorage/azurerm"
  version              = "1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "veerastrg6789
}