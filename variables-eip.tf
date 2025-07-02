##
# (c) 2021-2025
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

variable "reservation_number" {
  description = "(optional) Number of reserved Elastic IPs, defaults to 1"
  type        = number
  default     = 1
}

variable "eip_settings" {
  description = "(optional) Map of settings for the EIP, defaults to empty map"
  type = object({
    domain                      = optional(string, "vpc")
    ip_address                  = optional(string, null)
    associate_with_private_ip   = optional(string, null)
    instance_id                 = optional(string, null)
    network_interface_id        = optional(string, null)
    public_ipv4_pool_id         = optional(string, null)
    customer_owned_ipv4_pool_id = optional(string, null)
    ipam_pool_id                = optional(string, null)
  })
  default = {}
}