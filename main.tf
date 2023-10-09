terraform {

  backend "azurerm" {
    use_oidc = true
    resource_group_name  = "svownterraform"
    storage_account_name = "terraformsatya1234"
    container_name       = "tfstate"
    key                  = "section4.tfstate"
    subscription_id      = "6a788fb8-bb98-4154-8deb-5413408c8ef7"
    tenant_id            = "9408fecc-2984-4882-b2a4-ee6cd54b023d"
    client_id            = "d6b33c59-e42a-43ce-bdf4-bf8f6dd12846"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.2, < 4.0.0"
    }

}
}
provider "azurerm" {
  features {}
}

#dd