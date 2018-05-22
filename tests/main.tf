# Here is the code which actually creates a resources using the module

module "sandbox-test-vm-managed-datadisk" {
  source            = "../module"
  vm_name           = "sandbox-test-vm-managed-datadisk"
  resource_group    = "${azurerm_resource_group.test.name}"
  storageacc_prefix = "sandboxtfmodvmd"
  subnet_id         = "${azurerm_subnet.test.id}"
  product           = "sandbox"
  env               = "sandbox"
}
