variable instance_type {
  type        = string
  default     = ""
  description = "Tipo de instancia EC2"
}
variable ec2_tags {
  type        = map(string)
  default     = {}
  description = "Tags para a instancia EC2"
}
variable ami {
  type        = string
  default     = ""
  description = "ID da AMI para a instancia EC2"
}
variable vpc_id {
  type        = string
  default     = ""
  description = "ID da VPC onde a instancia EC2 sera criada"
}
variable subnet_id {
  type        = string
  default     = ""
  description = "ID da sub-rede onde a instancia EC2 sera criada"
}