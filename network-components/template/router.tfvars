router                      = {
  "nw-poc-router"       = {
    delete                        = false
    project_id                    = "prj-boot-iac-us-4000-poc"
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