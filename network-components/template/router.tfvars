router                      = {
  "nw-poc-router"       = {
    delete                        = false
    project_id                    = "seed-440521"
    region                        = "us-central1"
    network                       = "network-vpc-1"
    router_description            = "testing"
    bgp                           = [
      /* asn                         = 
      advertise_mode              =
      advertised_groups           =
      advertised_ip_ranges        = [
        range                     =
        description               =
      ]
      keepalive_interval          =
      identifier_range            = */
    ]
    encrypted_interconnect_router = null

  }
}