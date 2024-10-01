terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "viresh-tfstate-rg-donotdelete"
    storage_account_name = "vireshtesttfstatesa"
    container_name       = "tfstate"
    key                  = "01aksdemo"
  }

}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "63c1a842-d6c9-4923-b67c-cdcb7c0fb3d9"
}