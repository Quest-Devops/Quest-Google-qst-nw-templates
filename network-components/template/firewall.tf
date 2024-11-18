  #...................................... Host Project Firewall .....................................#
 module "vpc_firewall_rule" {
  for_each     = {
    for k, v in try(var.firewall,{}): k => v if v.delete != true
  }
  source                                = "git::https://[PASSWORD]@github.com/Quest-Devops/Quest-Google-network-services-Modules.git//terraform-google-cloud-firewall?ref=v1.0.0"
  project_id                            = each.value.project_id 
  network_name                          = each.key
  rules                                 = each.value.rules
  depends_on                            = [ module.vpc_subnets ]
} 
