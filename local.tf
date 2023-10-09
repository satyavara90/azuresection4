locals {
  resource_group_name="app-grp"
  location="North Europe"  
  
}

data "azurerm_resource_group" "sqlrg" {
  name = local.resource_group_name
}
