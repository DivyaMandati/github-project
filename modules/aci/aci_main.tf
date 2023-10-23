resource "azurerm_container_group" "aci_container_group" {
  name                = locals.aci_name
  location            = var.aci_location
  os_type             = "Linux"

  container {
    name   = "mycontainer"
    image  = "linuxramu/calc:2.5"
    cpu    = "0.5"
    memory = "1.5Gi"
    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  tags = var.aci_tags
}


