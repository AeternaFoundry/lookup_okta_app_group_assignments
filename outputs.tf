output "app_group_assignments_lookup_groups" {
  description = "Map of groups values across all app_group_assignments_lookup, keyed the same as var.app_group_assignments_lookup except keys with no groups are omitted"
  value       = { for k, v in data.okta_app_group_assignments.app_group_assignments_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "app_group_assignments_lookup_id" {
  description = "Map of id values across all app_group_assignments_lookup, keyed the same as var.app_group_assignments_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_app_group_assignments.app_group_assignments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}

