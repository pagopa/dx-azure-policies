terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<= 4.16.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfdevdx"
    container_name       = "terraform-state"
    key                  = "dx-azpolicy.resources.dev.italynorth.tfstate"
  }
}

provider "azurerm" {
  features {
  }
  storage_use_azuread = true
}

module "naming_convention" {
  source      = "github.com/pagopa/dx//infra/modules/azure_naming_convention?ref=23331808494568ff50046334934f7076cd77c491"
  environment = local.environment
}