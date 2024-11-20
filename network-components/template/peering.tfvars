vpc_peering                         = {

  # .................. VPC Peering between HUB and Spokes Configuration ................ #
  "peering"                      = {
    delete                              = false
    local_network                       = "https://www.googleapis.com/compute/v1/projects/seed-440521/global/networks/network-vpc-1"
    peer_network                        = "https://www.googleapis.com/compute/v1/projects/seed-440521/global/networks/network-vpc-2"
    export_local_custom_routes          = true
    export_peer_custom_routes           = true
    export_subnet_routes_with_public_ip = null
    import_subnet_routes_with_public_ip = null
    stack_type                          = null
  }
  # .............. End VPC Peering between HUB and Spokes Configuration ................ #
}