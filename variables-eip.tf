##
# (c) 2021-2025
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# reservation_number: 1   # (Optional) Number of reserved Elastic IPs. Default is 1.
variable "reservation_number" {
  description = "(optional) Number of reserved Elastic IPs, defaults to 1"
  type        = number
  default     = 1
}

# eip_settings:   # (Optional) Map of settings for the EIP. Default is {}.
#   domain: "vpc"   # (Optional) Indicates whether the Elastic IP is for use with instances in a VPC or with instances in EC2-Classic. Possible values: vpc, standard. Default is "vpc".
#   ip_address: null   # (Optional) A specific IP address from an AWS public IPv4 pool. Default is null.
#   associate_with_private_ip: null   # (Optional) The primary or secondary private IP address to associate with the Elastic IP. Default is null.
#   instance_id: null   # (Optional) The ID of an EC2 instance. Default is null.
#   network_interface_id: null   # (Optional) The ID of a network interface. Default is null.
#   public_ipv4_pool_id: null   # (Optional) The ID of a public IPv4 pool. Default is null.
#   customer_owned_ipv4_pool_id: null   # (Optional) The ID of a customer-owned IPv4 pool. Default is null.
#   ipam_pool_id: null   # (Optional) The ID of an IPAM pool. Default is null.
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