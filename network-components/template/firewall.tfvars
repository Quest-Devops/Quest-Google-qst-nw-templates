vpc_firewall_rule                      = {

  # .............. Network HUB Firewall Configuration ............. #
  "network-vpc-1"       = {
    delete                       = false
    project_id                   = "prj-boot-iac-us-4000-poc"
    rules                        = [
      {
        name                     = "fw-hub-ingress-allow-22-3389-tcp-01"
        description              = "IAP Ingress Firewall rule"
        direction                = "INGRESS"
        disabled                 = false
        priority                 = 1000
        ranges                   = ["35.235.240.0/20"]
        source_tags              = []
        source_service_accounts  = null
        target_tags              = []
        target_service_accounts  = null
        allow                    = [
          {
            protocol             = "tcp"
            ports                = ["22", "3389"]
          }
        ]
        deny                     = []
        log_config               = {
          metadata               = "INCLUDE_ALL_METADATA"
        }
      }
    ]
  }
}
