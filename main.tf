resource "azurerm_resource_group" "example" {
  name     = "tfdemo"
  location = "East US"
}

# Loop through container groups
resource "azurerm_container_group" "container_group" {
  for_each = var.container_groups

  name                = each.value.name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = each.value.os_type

  container {
    name   = each.value.name
    image  = each.value.image
    cpu    = each.value.cpu
    memory = each.value.memory
    

    ports {
      protocol = each.value.port_protocol
      port     = each.value.port
    }

    environment_variables = each.value.environment_variables
  }
}
