data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "app_vault" {  

  name                        = var.key_vault_name

  location                    =  var.resource_group_location

  resource_group_name         = var.resource_group_name

  tenant_id                   = data.azurerm_client_config.current.tenant_id

  soft_delete_retention_days  = var.soft_delete_retention_days

  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.sku_name

  access_policy {

    tenant_id = data.azurerm_client_config.current.tenant_id

    object_id = data.azurerm_client_config.current.object_id

    key_permissions = var.key_permissions

    secret_permissions = var.secret_permissions

    storage_permissions = var.storage_permissions

  }

  access_policy  {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.object_id
    key_permissions = var.key_permissions
    secret_permissions = var.secret_permissions
      
  }
}






 

# We are creating a secret in the key vault

resource "azurerm_key_vault_secret" "client_id" {

  name         =  var.secret1_name

  value        = var.secret1_value

  key_vault_id = azurerm_key_vault.app_vault.id

  depends_on = [ azurerm_key_vault.app_vault ]

}

resource "azurerm_key_vault_secret" "client_secret" {

  name = var.secret2_name

  value =var.secret2_value

  key_vault_id = azurerm_key_vault.app_vault.id

  depends_on = [ azurerm_key_vault.app_vault ]

}

resource "azurerm_key_vault_secret" "tenant_id" {

  name = var.secret3_name

  value = var.secret3_value

  key_vault_id = azurerm_key_vault.app_vault.id

  depends_on = [ azurerm_key_vault.app_vault ]

}

resource "azurerm_key_vault_secret" "subscription_id" {

  name = var.secret4_name

  value = var.secret4_value

  key_vault_id = azurerm_key_vault.app_vault.id

  depends_on = [ azurerm_key_vault.app_vault ]

}

