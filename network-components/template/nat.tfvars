nat                                       = {
  "network-poc-nat"               = {
    delete                                = true
    project_id                            = "prj-boot-iac-us-4000-poc"
      region                              = "us-central1"
      router_name                         = "network-poc-router"
      nat_ip_allocate_option              = "MANUAL_ONLY"
      #initial_nat_ips                     = null
      drain_nat_ips                       = null
      min_ports_per_vm                    = null
      max_ports_per_vm                    = null
      enable_dynamic_port_allocation      = null
      type                                = null
      udp_idle_timeout_sec                = null
      icmp_idle_timeout_sec               = null
      tcp_established_idle_timeout_sec    = null
      tcp_transitory_idle_timeout_sec     = null
      tcp_time_wait_timeout_sec           = null
      enable_endpoint_independent_mapping = null
      source_subnetwork_ip_ranges_to_nat  = "LIST_OF_SUBNETWORKS"
      subnetworks                         = [
        {
          name                            = "network-stack-poc-subnet"
          source_ip_ranges_to_nat         = ["ALL_IP_RANGES"]
          secondary_ip_range_names        = null
        }
      ]
      endpoint_types                      = null
      rules                               = [
        /* rule_number                       =
        description                       =
        match                             =
        action                            = [
          source_nat_active_ips           =
          source_nat_drain_ips            =
          source_nat_active_ranges        =
          source_nat_drain_ranges         =
        ] */
      ]
      auto_network_tier                   = null
  }
}