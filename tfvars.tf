container_groups = {
  container-group1 = {
    name                = "container-group1"
    image               = "nginx:latest"
    cpu                 = 0.5
    memory              = 1.5
    port_protocol       = "TCP"
    port                = 80
	os_type             = "Linux"
    environment_variables = {}
  }
  container-group2 = {
    name                = "container-group2"
    image               = "mysql:latest"
    cpu                 = 1
    memory              = 4
    port_protocol       = "TCP"
    port                = 3306
	  os_type             ="Linux"
    environment_variables = {
      MYSQL_ROOT_PASSWORD = "password"
    }
  }
  container-group3 = {
    name                = "container-group3"
    image               = "redis:latest"
    cpu                 = 1
    memory              = 2
    port_protocol       = "TCP"
    port                = 6379
	  os_type             ="Linux"
    environment_variables = {}
  }
}