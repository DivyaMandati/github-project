
resource "azurerm_resource_group" "example" {
   name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_group" "example" {
  name                = var.aci_name
  location            = azurerm_resource_group.example.location
  os_type             = "Linux"
  resource_group_name = azurerm_resource_group.example.name

  container {
    name   = "example-container"
    image  = "nginx:latest"
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port     = 80
      protocol = "TCP"
    }
  }
  dns_name_label = var.dns_name_label  # Add this line

  tags = {
    environment = "testing"
  }
}
