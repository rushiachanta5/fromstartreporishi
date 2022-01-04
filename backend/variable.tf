variable "stateresourcegroup" {
    default = "terraform-storage-rg"
}              
variable "location" {
    default = "East US"
}
variable "storageaccount" {
    default = "terraformstateforrishi"
}
variable "accounttier" {
    default = "Standard"
}
variable "accountreplicationtype" {
    default = "LRS"
}
variable "environment" {
    default = "dev"
}
variable "storagecontainer" {
    default = "tfstatefiles"
}
variable "container_access_type" {
    default = "blob"
}
