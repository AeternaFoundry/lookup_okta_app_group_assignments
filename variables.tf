variable "app_group_assignments_lookup" {
  description = <<EOT
Map of app_group_assignments_lookup, attributes below
Required:
    - id
EOT

  type = map(object({
    id = string
  }))
}

