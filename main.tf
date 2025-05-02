terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Create a resource group
resource "azurerm_resource_group" "terraform-rg" {
  name     = "tf-rg"
  location = "East US"
}


resource "local_file" "hello_file" {
  content  = "Hello world from Terraform!"
  filename = "hello.txt"
}

resource "azurerm_virtual_network" "tf_vn" {
  name                = "tf_virtual_network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terraform-rg.location
  resource_group_name = azurerm_resource_group.terraform-rg.name
}

resource "azurerm_virtual_network" "tf_vn2" {
  name                = "tf_virtual_network2"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terraform-rg.location
  resource_group_name = azurerm_resource_group.terraform-rg.name
}