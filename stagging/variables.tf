variable instance_type {
  type        = string
  default     = "t2.small"
  description = "Tipo de instancia EC2"
}
variable ec2_tags {
  type        = map(string)
  default     = {}
  description = "Tags para a instancia EC2"
}
variable ami {
  type        = string
  default     = "ami-12345678"
  description = "ID da AMI para a instancia EC2"
}