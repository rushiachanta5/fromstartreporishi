resource "azurerm_resource_group" "aks_rg" {
  name = "${var.clusterresourcegroup}-${var.environment}"
  location = var.location
}
