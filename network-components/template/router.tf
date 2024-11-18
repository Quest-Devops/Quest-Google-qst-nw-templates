#......................................... Cloud Router ......................................#
module "router" {
  for_each                              = {
    for k, v in try(var.router,{}): k => v if v.delete != true
  }
  source                                = "git::https://[PASSWORD]@github.com/Quest-Devops/Quest-Google-network-services-Modules.git//terraform-google-cloud-router?ref=v1.0.0" 
  router_name                           = each.key 
  project_id                            = each.value.project_id 
  region                                = each.value.region 
  network                               = each.value.network
  router_description                    = each.value.router_description                  
  bgp                                   = each.value.bgp                          
  encrypted_interconnect_router         = each.value.encrypted_interconnect_router
  depends_on                            = [ module.regional_address ]
}