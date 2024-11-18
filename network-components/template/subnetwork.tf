#.....................................Host Project Subnet ....................................#

module "vpc_subnets" {
  for_each     = {
    for k, v in try(var.subnets,{}): k => v if v.delete != true
  }
  source                                 = "git::https://[PASSWORD]@github.com/Quest-Devops/Quest-Google-network-services-Modules.git//terraform-google-cloud-subnet?ref=v1.0.0"
  project_id                             = each.value.project_id
  network_name                           = each.key
  subnets                                = each.value.subnets
  secondary_ranges                       = each.value.secondary_ranges
  #reserved_internal_range                = each.value.reserved_internal_range
  #purpose                               = each.value.purposecd 
  #role                                  = each.value.role
  #private_ipv6_google_access             = each.value.private_ipv6_google_access      
  #stack_type                             = each.value.stack_type                      
  #ipv6_access_type                       = each.value.ipv6_access_type                
  #external_ipv6_prefix                   = each.value.external_ipv6_prefix            
  #allow_subnet_cidr_routes_overlap       = each.value.allow_subnet_cidr_routes_overlap
  #send_secondary_ip_range_if_empty       = each.value.send_secondary_ip_range_if_empty
  depends_on                             = [ module.vpc ]
}
