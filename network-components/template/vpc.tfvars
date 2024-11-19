vpc                             = {

# .............. Network HUB Project VPCs Configuration ............. #
  "network-vpc-1"                     = {
    delete                                    = true
    description                               = "HUB Shared VPC used to share Network Component for Infra Shared Services"
    auto_create_subnetworks                   = false
    routing_mode                              = "GLOBAL"
    /* bgp_best_path_selection_mode              = null  */         
    /* bgp_always_compare_med                    = null  */       
    /* bgp_inter_region_cost                     = null */
    mtu                                       = null 
    enable_ula_internal_ipv6                  = null
    internal_ipv6_range                       = null
    network_firewall_policy_enforcement_order = null
    project_id                                = "prj-boot-iac-us-4000-poc"
    delete_routes                             = true
    delete_default_internet_gateway_routes    = null
  },
    "network-vpc-2"                     = {
    delete                                    = true
    description                               = "HUB Shared VPC used to share Network Component for Infra Shared Services"
    auto_create_subnetworks                   = false
    routing_mode                              = "GLOBAL"
    /* bgp_best_path_selection_mode              = null  */         
    /* bgp_always_compare_med                    = null  */       
    /* bgp_inter_region_cost                     = null */
    mtu                                       = null 
    enable_ula_internal_ipv6                  = null
    internal_ipv6_range                       = null
    network_firewall_policy_enforcement_order = null
    project_id                                = "prj-shrd-secu-4313-poc"
    delete_routes                             = true
    delete_default_internet_gateway_routes    = null
  },
}