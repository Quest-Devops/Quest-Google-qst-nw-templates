#......................................... Cloud NAT .........................................#

module "nat" {
  for_each     = {
    for k, v in try(var.nat,{}): k => v if v.delete != true
  }
  source                                = "git::https://[PASSWORD]@github.com/Quest-Devops/Quest-Google-network-services-Modules.git//terraform-google-cloud-nat?ref=v1.0.0"
  project_id                            = each.value.project_id 
  region                                = each.value.region
  nat_name                              = each.key
  router_name                           = each.value.router_name 
  nat_ip_allocate_option                = each.value.nat_ip_allocate_option
  #initial_nat_ips                       = each.value.initial_nat_ips
  nat_ips                               = each.value.nat_ip_allocate_option == "MANUAL_ONLY" ? (
                                          [module.regional_address["network-poc-address"].regional_address_details.self_link]
                                          ) : null
  drain_nat_ips                         = each.value.drain_nat_ips                       
  source_subnetwork_ip_ranges_to_nat    = each.value.source_subnetwork_ip_ranges_to_nat 
  min_ports_per_vm                      = each.value.min_ports_per_vm                    
  max_ports_per_vm                      = each.value.max_ports_per_vm                    
  enable_dynamic_port_allocation        = each.value.enable_dynamic_port_allocation      
  type                                  = each.value.type                                
  udp_idle_timeout_sec                  = each.value.udp_idle_timeout_sec                
  icmp_idle_timeout_sec                 = each.value.icmp_idle_timeout_sec               
  tcp_established_idle_timeout_sec      = each.value.tcp_established_idle_timeout_sec    
  tcp_transitory_idle_timeout_sec       = each.value.tcp_transitory_idle_timeout_sec     
  tcp_time_wait_timeout_sec             = each.value.tcp_time_wait_timeout_sec           
  enable_endpoint_independent_mapping   = each.value.enable_endpoint_independent_mapping 
  subnetworks                           = each.value.subnetworks
  endpoint_types                        = each.value.endpoint_types
  rules                                 = each.value.rules
  auto_network_tier                     = each.value.auto_network_tier
  depends_on                            = [module.router]
}