##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

output "public_ips" {
  description = "Reserved Elastic IP public IPv4 addresses created by this module."
  value       = aws_eip.eip_reservation[*].public_ip
}

output "public_ip_ids" {
  description = "Allocation IDs returned for the reserved Elastic IP addresses created by this module."
  value       = aws_eip.eip_reservation[*].id
}
