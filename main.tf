##
# (c) 2021-2025
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

resource "aws_eip" "eip_reservation" {
  count                     = var.reservation_number
  domain                    = var.eip_settings.domain
  address                   = var.eip_settings.ip_address
  associate_with_private_ip = var.eip_settings.associate_with_private_ip
  instance                  = var.eip_settings.instance_id
  network_interface         = var.eip_settings.network_interface_id
  public_ipv4_pool          = var.eip_settings.public_ipv4_pool_id
  customer_owned_ipv4_pool  = var.eip_settings.customer_owned_ipv4_pool_id
  ipam_pool_id              = var.eip_settings.ipam_pool_id
  tags = merge({
    Name = "eip-${local.system_name}-${count.index}-reservation"
  }, local.all_tags)
}