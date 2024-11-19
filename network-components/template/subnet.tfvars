subnets = {
  # ************************************* Network HUB Subnets Configuration *********************************** #

  # ................... HUB VPC Subnets Configuration .................. #
  "network-vpc-1" = {
    delete                                     = true
    project_id                                 = "prj-boot-iac-us-4000-poc"
    subnets                                    = [
      {          
        subnet_name                            = "nw-vpc-1-subnet-1" 
        subnet_ip                              = "10.0.0.0/24"
        subnet_region                          = "us-central1"
        #reserved_internal_range                = null
        subnet_private_access                  = true
        private_ipv6_google_access             = null
        stack_type                             = null
        ipv6_access_type                       = null
        external_ipv6_prefix                   = null
        allow_subnet_cidr_routes_overlap       = null
        #send_secondary_ip_range_if_empty       = null
        subnet_flow_logs                       = true
        subnet_flow_logs_interval              = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling              = 0.7
        subnet_flow_logs_metadata              = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr           = true
      },
      {          
        subnet_name                            = "nw-vpc-1-subnet-2" 
        subnet_ip                              = "10.1.0.0/24"
        subnet_region                          = "us-central1"
        #reserved_internal_range                = null
        subnet_private_access                  = true
        private_ipv6_google_access             = null
        stack_type                             = null
        ipv6_access_type                       = null
        external_ipv6_prefix                   = null
        allow_subnet_cidr_routes_overlap       = null
        #send_secondary_ip_range_if_empty       = null
        subnet_flow_logs                       = true
        subnet_flow_logs_interval              = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling              = 0.7
        subnet_flow_logs_metadata              = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr           = true
      }
    ]
    secondary_ranges                           = {
      "network-stack-poc-subnet"               = [
        {    
          range_name                           = "subnet-secondary-1"
          ip_cidr_range                        = "10.3.0.0/28"
        },                       
        /* {                        
          range_name                           = "subnet-secondary-2"
          ip_cidr_range                        = "192.168.65.0/24"
        }, */
      ],
      /*  "network-stack-poc-subnet-2"               = [
        {    
          range_name                           = "subnet-secondary-1"
          ip_cidr_range                        = "192.168.64.0/24"
        },                       
        {                        
          range_name                           = "subnet-secondary-2"
          ip_cidr_range                        = "192.168.65.0/24"
        },
      ] */
    }
  },
  "network-vpc-2" = {
    delete                                     = true
    project_id                                 = "prj-shrd-secu-4313-poc"
    subnets                                    = [
      {          
        subnet_name                            = "nw-vpc-2-subnet-1" 
        subnet_ip                              = "10.4.0.0/24"
        subnet_region                          = "us-central1"
        #reserved_internal_range                = null
        subnet_private_access                  = true
        private_ipv6_google_access             = null
        stack_type                             = null
        ipv6_access_type                       = null
        external_ipv6_prefix                   = null
        allow_subnet_cidr_routes_overlap       = null
        #send_secondary_ip_range_if_empty       = null
        subnet_flow_logs                       = true
        subnet_flow_logs_interval              = "INTERVAL_30_SEC"
        subnet_flow_logs_sampling              = 0.7
        subnet_flow_logs_metadata              = "INCLUDE_ALL_METADATA"
        subnet_flow_logs_filter_expr           = true
      }
    ]
    secondary_ranges                           = {
      "network-stack-poc-subnet"               = [
        /* {    
          range_name                           = "subnet-secondary-1"
          ip_cidr_range                        = "10.3.0.0/28"
        },                       
         {                        
          range_name                           = "subnet-secondary-2"
          ip_cidr_range                        = "192.168.65.0/24"
        }, */
      ],
        "network-stack-poc-subnet-2"               = [
        /* {    
          range_name                           = "subnet-secondary-1"
          ip_cidr_range                        = "192.168.64.0/24"
        },                       
        {                        
          range_name                           = "subnet-secondary-2"
          ip_cidr_range                        = "192.168.65.0/24"
        }, */
      ] 
    }
  }

} 

  # ************************************ END Network SPOKE Subnets Configuration ********************************** #
