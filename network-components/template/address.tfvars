regional_address = {
  "network-poc-address" = {
    delete                        = false
    project_id                    = "prj-boot-iac-us-4000-poc"
    region                        = "us-central1"
    address_type                  = "EXTERNAL"
    address_description           = "Static  External IP Address for NAT"
    network_tier                  = "PREMIUM"
    address_purpose               = null
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = null
    labels                        = {
      "dataclass"                 = "confidential",
      "env"                       = "prd",       
      "appname"                   = "notset",       
      "appid"                     = "notset",              
    }
    ip_version                    = null
    ipv6_endpoint_type            = null
    address_ip                    = null
  }
}
