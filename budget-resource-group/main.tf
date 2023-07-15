resource "azurerm_consumption_budget_resource_group" "consumption-resource-group-budget" {
  amount            = var.amount
  name              = var.budget_name
  resource_group_id = var.resource_group_id
  time_period {
    start_date =  var.start_date
  }
  dynamic "notification" {
    for_each = var.notifications
    content {
      enabled = notification.value["enabled"]
      threshold = notification.value["threshold"]
      operator = notification.value["operator"]
      threshold_type = notification.value["threshold_type"]
      contact_emails = notification.value["contact_emails"]
      contact_groups = notification.value["contact_groups"]
      contact_roles = notification.value["contact_roles"]
    }
  }
}