#...................................... Host Project VPC .....................................#
module "vpc" {
  for_each     = {
    for k, v in try(var.vpc,{}): k => v if v.delete != true
  }
  source                                    = "git::https://[PASSWORD]//github.com/Quest-Devops/Quest-Google-network-services-Modules.git//terraform-google-cloud-vpc.git?ref=v1.0.0"
  network_name                              = each.key 
  description                               = each.value.description
  auto_create_subnetworks                   = each.value.auto_create_subnetworks
  routing_mode                              = each.value.routing_mode
  #bgp_best_path_selection_mode              = each.value.bgp_best_path_selection_mode             
  #bgp_always_compare_med                    = each.value.bgp_always_compare_med                   
  #bgp_inter_region_cost                     = each.value.bgp_inter_region_cost                    
  mtu                                       = each.value.mtu                                      
  enable_ula_internal_ipv6                  = each.value.enable_ula_internal_ipv6                 
  internal_ipv6_range                       = each.value.internal_ipv6_range                      
  network_firewall_policy_enforcement_order = each.value.network_firewall_policy_enforcement_order
  project_id                                = each.value.project_id
  delete_default_internet_gateway_routes    = each.value.delete_routes
  #depends_on                                = [ module.project ]
}
