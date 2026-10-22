resource "azurerm_resource_group" "name" {
  for_each = var.rgs
  name = "${each.value.name}-${var.env}"
  location = each.value.location
  tags = each.value.tags
}
