variable lb_name {
  type        = string
  default     = ""
  description = "description"
}
variable subnets {
  type        = list(string)
  default     = []
  description = "List of subnet IDs for the load balancer"
}
variable lb_tags {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the load balancer"
}
