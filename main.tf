terraform {
  cloud {
    organization = "akshayInfra"

    workspaces {
      name = "Dev"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg" {
 

  # Option 2: Use Terraform Cloud private registry
   source  = "app.terraform.io/akshayInfra/resourcegroup/azure"
   version = "1.0.0"

  name     = "RG02"
  location = "East US"
  tags     = {
    environment = "dev"
    owner       = "teamA"
  }
}
