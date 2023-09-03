terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
}

provider "azurerm" {
  features {

   # client_id = var.secret1_value
  #client_secret = var.secret2_value
  #tenant_id = var.secret3_value
  #subscription_id = var.secret4_value
    
  }
}
module "contos" {
    source = "./contos"
    managementgroup = var.managementgroup
    
}
module "decom" {
    source = "./contos/decom"
    childgroupA0 =var.childgroupA0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
}
module "platform" {
    source = "./contos/platform"
    childgroupB0 = var.childgroupB0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "connectivity" {
    source = "./contos/platform/connectivity"
    childgroupB1 = var.childgroupB1
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "identity" {
    source = "./contos/platform/identity"
    childgroupB3 = var.childgroupB3
    childgroupB0-ID = module.platform.childgroupB0-ID
}
module "management" {
    source = "./contos/platform/management"
    childgroupB2 = var.childgroupB2
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "sandbox" {
    source = "./contos/sandbox"
    childgroupC0 = var.childgroupC0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "workloads" {
    source = "./contos/workloads"
    childgroupD0 = var.childgroupD0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "businessunit1" {
    source = "./contos/workloads/bs1"
    childgroupD1 = var.childgroupD1
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}
module "businessunit2" {
    source = "./contos/workloads/bs2"
    childgroupD2 = var.childgroupD2
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}

module "RG" {
    source = "./contos/platform/connectivity/resourcegroup"

    resource_group_name       = var.resource_group_name
    resource_group_location   = var.resource_group_location
}


module "Compute" {
    source = "./contos/platform/connectivity/compute"

     resource_group_name            = var.resource_group_name
     resource_group_location        = var.resource_group_location

     acr_name                       = var.acr_name
    acr_sku                        = var.acr_sku
    acr_admin_enabled              = var.acr_admin_enabled
    
     cluster_name                   = var.cluster_name
     kubernetes_version             = var.kubernetes_version
     dns_prefix                     = var.dns_prefix

     node_pool_name                  = var.node_pool_name
     node_count                      = var.node_count
     node_pool_vm_size               = var.node_pool_vm_size
     node_pool_type                  = var.node_pool_type
     node_pool_zones                 = var.node_pool_zones
     node_pool_scaling               = var.node_pool_scaling

     identity_type                   = var.identity_type

     lb_sku                          = var.lb_sku
     network_plugin                  = var.network_plugin 
}

module "Security" {

  source = "./contos/platform/connectivity/security"

  resource_group_name                   = var.resource_group_name
  resource_group_location               = var.resource_group_location
  key_vault_name                        = var.key_vault_name
  soft_delete_retention_days            = var.soft_delete_retention_days
  purge_protection_enabled              = var.purge_protection_enabled
  sku_name                              = var.sku_name
  key_permissions                       = var.key_permissions
  secret_permissions                    = var.secret_permissions
  storage_permissions                   = var.storage_permissions
  secret1_name                          = var.secret1_name
  secret1_value                         = var.secret1_value
  secret2_name                          = var.secret2_name
  secret2_value                         = var.secret2_value
  secret3_name                          = var.secret3_name
  secret3_value                         = var.secret3_value
  secret4_name                          = var.secret4_name
  secret4_value                         = var.secret4_value
  object_id                             = var.object_id 

 

}
