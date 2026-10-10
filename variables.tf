variable "backup_vault_notifications" {
  description = <<EOT
Map of backup_vault_notifications, attributes below
Required:
    - backup_vault_events
    - backup_vault_name
    - sns_topic_arn
Optional:
    - region
EOT

  type = map(object({
    backup_vault_events = set(string)
    backup_vault_name   = string
    sns_topic_arn       = string
    region              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.backup_vault_notifications : (
        can(regex("^[0-9A-Za-z_.-]{1,50}$", v.backup_vault_name))
      )
    ])
    error_message = "must consist of lowercase letters, numbers, and hyphens."
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

