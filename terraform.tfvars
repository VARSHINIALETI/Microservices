managementgroup = "Contos"
childgroupA0    = "decom"
childgroupB0    = "platform"
childgroupB1    = "connectivity"
childgroupB3    = "identity"
childgroupB2    = "management"
childgroupC0    = "sandbox"
childgroupD0    = "workloads"
childgroupD1    = "bs1"
childgroupD2    = "bs2"
resource_group_name                                 = "My-Rg"
resource_group_location                             = "CentralIndia"
acr_name                                            = "myacr2000"
acr_sku                                             = "Standard"
acr_admin_enabled                                   =  false
cluster_name                                        = "my-aks-cluster"
kubernetes_version                                  = "1.26.3"
node_pool_name                                      = "system"
node_count                                          =  2
node_pool_vm_size                                   = "Standard_D2_v2"
node_pool_type                                      = "VirtualMachineScaleSets"
node_pool_scaling                                   = false
node_pool_zones                                     = [ 1,2,3 ]
identity_type                                       = "SystemAssigned"
lb_sku                                              = "standard"
network_plugin                                      = "kubenet"
dns_prefix                                          = "my-aks-cluster"
  key_vault_name                                    = "var1435keyvault"

  soft_delete_retention_days                        = 7

  purge_protection_enabled                          = false

  sku_name                                          = "standard"

 

 

  key_permissions                                  =["Get",]

  secret_permissions                               = [
      "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set",
    ]

  storage_permissions                              =  [
      "Get",
    ]
  

 

  secret1_name                          = "clientID"

  secret1_value                         = "246dd74b-338f-47b6-9438-87ae8bd99a01"

  secret2_name                          = "clientsecret"

  secret2_value                         = "7Oo8Q~Wj82KG.9sjHxpyA~HlXo-~.5kd-WPK8bYz"

  secret3_name                          = "tenantID"

  secret3_value                         = "47d7e33c-9155-404f-914e-6610aa428fcc"

  secret4_name                          = "subscriptionID"

  secret4_value                         = "91e9f238-396d-4de8-b851-c0465f790b4a"

  object_id                             = "bdaf7280-c69f-4d52-89dd-a0631103d277"