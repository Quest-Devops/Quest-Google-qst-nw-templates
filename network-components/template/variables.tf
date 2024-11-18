#.............................................. VPC ....................................................#

variable "vpc" {
    type = any
    sensitive   = false
}

#............................................ VPC Subnet ...............................................#

variable "subnets" {
    type = any
    sensitive = false
}

#........................................... VPC Firewall ..............................................#

  variable "vpc_firewall_rule" {
    type = any
    sensitive   = false
}
variable "nat" {
    type = any
    sensitive = false 
}
variable "router" {
  type = any
  sensitive = false
}
variable "vpc_peering" {
    type = any
    sensitive = false
}
variable "regional_address" {
    type = any
    sensitive = false
  
}
