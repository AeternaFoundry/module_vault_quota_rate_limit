variable "quota_rate_limits" {
  description = <<EOT
Map of quota_rate_limits, attributes below
Required:
    - name
    - rate
Optional:
    - block_interval
    - group_by
    - inheritable
    - interval
    - namespace
    - path
    - role
    - secondary_rate
EOT

  type = map(object({
    name           = string
    rate           = number
    block_interval = optional(number)
    group_by       = optional(string)
    inheritable    = optional(bool)
    interval       = optional(number)
    namespace      = optional(string)
    path           = optional(string)
    role           = optional(string)
    secondary_rate = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.quota_rate_limits : (
        v.rate >= 0.0
      )
    ])
    error_message = "must be at least 0.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.quota_rate_limits : (
        v.secondary_rate == null || (v.secondary_rate >= 0.0)
      )
    ])
    error_message = "must be at least 0.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.quota_rate_limits : (
        v.interval == null || (v.interval >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.quota_rate_limits : (
        v.block_interval == null || (v.block_interval >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.quota_rate_limits : (
        v.group_by == null || (contains(["ip", "none", "entity_then_ip", "entity_then_none"], v.group_by))
      )
    ])
    error_message = "must be one of: \"ip\", \"none\", \"entity_then_ip\", \"entity_then_none\""
  }
}

