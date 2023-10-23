data "azurerm_client_config" "current" {}

module "resource_group" {
  source                                      = "../modules/resourcegroup"
  environment                                 = var.environment
  location                                    = var.location
  main_project                                = var.main_project
  sub_project                                 = var.sub_project
  tags                                        = merge(var.tags, var.specific_tags)
}


module "aci" {
  source      = "../modules/aci"
  aci_name    = "locals.aci_name"
  aci_location = ""
  aci_image   = ""
  aci_tags = {
    environment = "development"
    owner       = ""
  }
}