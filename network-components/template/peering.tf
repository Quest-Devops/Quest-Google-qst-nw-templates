#.................................... 1-to-2 VPC Peering .....................................#

module "vpc_peering_1_2" {
  for_each                              = {
    for k, v in try(var.vpc_peering,{}): k => v if v.delete != true
  }
  source                                = "git::https://[PASSWORD]@github.com/Quest-Devops/Quest-Google-network-services-Modules.git////terraform-google-cloud-vpc-peering?ref=v1.0.0"
  prefix                                = each.key
  local_network                         = each.value.local_network
  peer_network                          = each.value.peer_network
  export_local_custom_routes            = each.value.export_local_custom_routes 
  export_peer_custom_routes             = each.value.export_peer_custom_routes
  export_subnet_routes_with_public_ip   = each.value.export_subnet_routes_with_public_ip
  import_subnet_routes_with_public_ip   = each.value.import_subnet_routes_with_public_ip
  stack_type                            = each.value.stack_type
  depends_on                            = [module.vpc]
}

#.................................... 2-to-1 VPC Peering .....................................#

module "vpc_peering_2_1" {
  for_each                              = {
    for k, v in try(var.vpc_peering,{}): k => v if v.delete != true
  }
  source                                = "git::https://[PASSWORD]@github.com/Quest-Devops/Quest-Google-network-services-Modules.git//terraform-google-cloud-vpc-peering?ref=v1.0.0"
  prefix                                = each.key
  local_network                         = each.value.peer_network
  peer_network                          = each.value.local_network
  export_local_custom_routes            = each.value.export_local_custom_routes 
  export_peer_custom_routes             = each.value.export_peer_custom_routes
  export_subnet_routes_with_public_ip   = each.value.export_subnet_routes_with_public_ip
  import_subnet_routes_with_public_ip   = each.value.import_subnet_routes_with_public_ip
  stack_type                            = each.value.stack_type
  depends_on                            = [module.vpc_peering_1_2]
}
