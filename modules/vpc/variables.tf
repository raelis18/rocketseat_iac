variable vpc_tags {
  type        = map(string)
  default     = {}
  description = "Tags para a VPC"
}
variable vpc_cidr_block {
  type        = string
  default     = ""
  description = "CIDR block for the VPC"
}
variable public_subnet_cidr_block {
  type        = string
  default     = ""
  description = "CIDR block for the public subnet"
}
variable private_subnet_cidr_block {
  type        = string
  default     = ""
  description = "CIDR block for the private subnet"
}
variable availability_zone {
  type        = list(string)
  default     = []
  description = "Availability zones for the VPC subnets"
}