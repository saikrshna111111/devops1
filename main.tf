resource "azurerm_resource_group" "example" {
    name = "saigaru"
    location = "east us"
    tags = { environment = "dev" }
}

terraform {
   backend "azurerm" {
     resource_group_name   = "saigaru"  
    storage_account_name  = "saistoragess"   
     container_name        = "test"    
     key                    = "terraform.tfstate" 
   }
 }