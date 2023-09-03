variable "managementgroup" {
  type = string
  
}
variable "childgroupA0" { 
  type = string
  
}
variable "childgroupB0" { 
  type = string
  
}
variable "childgroupB1" { 
  type = string
  
}
variable "childgroupB3" { 
  type = string
  
}
variable "childgroupB2" { 
  type = string
  
}
variable "childgroupC0" { 
  type = string
  
}
variable "childgroupD0" { 
  type = string
  
}
variable "childgroupD1" { 
  type = string

}
variable "childgroupD2" { 
  type = string
  
}
variable "resource_group_name" {
 type     = string
 description = "name of the resource group."
}

variable "resource_group_location" {
type     = string
 description = "location of the resource group."
}

variable "acr_name" {
  description = "container registry name"
  type = string
}

variable "acr_sku" {
    description = "container registry sku"
    type = string
  }

  variable "acr_admin_enabled" {
    description = "container registry admin permissions"
  }

  variable "cluster_name" {
  description = "kubernetes cluster name"
  type = string
}

variable "kubernetes_version" {
  
  description = "kubernetes version"
  type = string
}

variable "node_pool_name" {
  description = "node pool name"
  type = string
}

variable "node_count" {
  description = "number of nodes"
  type = number
}

variable "node_pool_vm_size" {
  description = "vm size"
  type = string
}

variable "node_pool_type" {
  description = "node pool type"
  type = string
}

variable "node_pool_scaling" {
  description = "node pool scaling"
  type = bool
}

variable "node_pool_zones" {
  description = "node pool zones"
  type = list(number)
}

variable "identity_type" {
  description = "identity type"
  type = string
}

variable "lb_sku" {
  description = "load balancer sku"
  type = string
}

variable "network_plugin" {
description = "network plug in"
type = string
}

variable "dns_prefix" {
    description = "dns prefix"
    type = string
  }

  variable "key_vault_name" {

    description = "name of your keyvault"

    type = string

}



variable "soft_delete_retention_days" {

    description = "soft delete retention days"

    type = number

}


variable "purge_protection_enabled" {

    description = "enabled"

    type = bool

}

variable "sku_name" {

    description = "name of your sku"

    type = string

}

variable "key_permissions" {

    description = "key permissions"

    type = list(string)

}

variable "secret_permissions" {

    description = "secret permissions"

    type = list(string)

}

variable "storage_permissions" {

    description = "storage permissions"

    type = list(string)

}


variable "secret1_name" {

    description = "secret1_name"

    type = string

}

variable "secret1_value" {

    description = "secret1_value"

    type = string

}

variable "secret2_name" {

    description = "secret2_name"

    type = string

}

variable "secret2_value" {

    description = "secret2_value"

    type = string

}

variable "secret3_name" {

    description = "secret3_name"

    type = string

}

variable "secret3_value" {

    description = "secret3_value"

    type = string

}

variable "secret4_name" {

    description = "secret4_name"

    type = string

}

variable "secret4_value" {

    description = "secret4_value"

    type = string

}

variable "object_id" {

    description = "object_id"

    type = string
  
}


