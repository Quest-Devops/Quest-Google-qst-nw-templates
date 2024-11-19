regional_address = {
  "network-poc-address" = {
    delete                        = false
    project_id                    = "prj-boot-iac-us-4000-poc"
    region                        = "us-central1"
    address_type                  = "INTERNAL"
    address_description           = "Static Untrust Internal IP Address for FGT Firewall for Node 1"
    network_tier                  = null
    address_purpose               = "GCE_ENDPOINT"
    address_prefix_length         = null
    address_network               = null
    address_subnetwork            = "nw-vpc-1-subnet-1"
    labels                        = {
      "dataclass"                 = "confidential",
      "env"                       = "prd",       
      "appname"                   = "notset",       
      "appid"                     = "notset",              
    }
    ip_version                    = null
    ipv6_endpoint_type            = null
    address_ip                    = "10.1.0.255"
  }
}
