variable "container_groups" {
  type = map(object({
    name                = string
    image               = string
    cpu                 = number
    memory              = number
    port_protocol       = string
    port                = number
    os_type             = string
    environment_variables = map(string)
  }))
}

variable "resource_group_name" {
  type= string
  default = "tfdemo" 
}

variable "location" {
  type= string
  default = "East US" 
}

variable "Repo_URL" {
  type= string
  default = "https://github.com/Rajesh333942/TfRemote" 
}