##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# reservation_number: 1   # (Optional) Number of Elastic IP addresses to allocate. Default is 1.
variable "reservation_number" {
  description = "(Optional) Number of Elastic IP addresses to allocate. Default is 1."
  type        = number
  default     = 1
}

# eip_settings:   # (Optional) Elastic IP allocation settings. Default is {}.
#   domain: "vpc"   # (Optional) Allocation domain for the Elastic IP. Use "vpc" for modern VPC allocations; "standard" only applies to legacy EC2-Classic capable accounts. Default is "vpc".
#   ip_address: null   # (Optional) Specific address to allocate from an AWS-owned public IPv4 pool when available. Default is null.
#   associate_with_private_ip: null   # (Optional) Primary or secondary private IPv4 address to associate when the EIP is attached to an instance or network interface. Default is null.
#   instance_id: null   # (Optional) EC2 instance ID to associate during allocation. Default is null.
#   network_interface_id: null   # (Optional) Network interface ID to associate during allocation. Default is null.
#   public_ipv4_pool_id: null   # (Optional) Public IPv4 pool ID to allocate from. Default is null.
#   customer_owned_ipv4_pool_id: null   # (Optional) Customer-owned IPv4 pool ID for AWS Outposts allocations. Default is null.
#   ipam_pool_id: null   # (Optional) IPAM pool ID to allocate a sequential public IPv4 address from. Default is null.
variable "eip_settings" {
  description = "(Optional) Elastic IP allocation settings. Default is {}."
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
