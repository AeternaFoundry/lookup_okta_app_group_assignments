data "okta_app_group_assignments" "app_group_assignments_lookup" {
  for_each = var.app_group_assignments_lookup

  id = each.value.id
}

