##
# (c) 2021-2025
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# is_hub: false   # (Optional) Is this a hub or spoke configuration? Possible values: true, false. Default is false.
variable "is_hub" {
  description = "Is this a hub or spoke configuration?"
  type        = bool
  default     = false
}

# spoke_def: "001"   # (Optional) Spoke ID Number, must be a 3 digit number. Default is "001".
variable "spoke_def" {
  description = "Spoke ID Number, must be a 3 digit number"
  type        = string
  default     = "001"
  validation {
    condition     = (length(var.spoke_def) == 3) && tonumber(var.spoke_def) != null
    error_message = "The spoke_def must be a 3 digit number as string."
  }
}

# org:   # (Required) Organization details.
#   organization_name: "myorg"   # (Required) Name of the organization.
#   organization_unit: "myunit"   # (Required) Name of the organization unit.
#   environment_type: "dev"   # (Required) Type of the environment.
#   environment_name: "myenv"   # (Required) Name of the environment.
variable "org" {
  description = "Organization details"
  type = object({
    organization_name = string
    organization_unit = string
    environment_type  = string
    environment_name  = string
  })
}

# extra_tags: {}   # (Optional) Extra tags to add to the resources. Default is {}.
variable "extra_tags" {
  description = "Extra tags to add to the resources"
  type        = map(string)
  default     = {}
}
