vpc_peering                         = {

  # .................. VPC Peering between HUB and Spokes Configuration ................ #
  "peering"                      = {
    delete                              = false
    local_network                       = "https://www.googleapis.com/compute/v1/projects/prj-boot-iac-us-4000-poc/global/networks/network-vpc-1"
    peer_network                        = "https://www.googleapis.com/compute/v1/projects/prj-shrd-secu-4313-poc/global/networks/network-vpc-2"
    export_local_custom_routes          = true
    export_peer_custom_routes           = true
    export_subnet_routes_with_public_ip = null
    import_subnet_routes_with_public_ip = null
    stack_type                          = null
  }
  # .............. End VPC Peering between HUB and Spokes Configuration ................ #
}