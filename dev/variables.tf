variable "instance_type" {
  type        = string
  default     = "t2.small"
  description = "Tipo de instancia EC2"
}
variable "ec2_tags" {
  type = map(string)
  default = {
    "Name"        = "MyEC2Instance-DEV"
    "Environment" = "DEV"
  }
  description = "Tags para a instancia EC2"
}
variable "ami" {
  type        = string
  default     = "ami-06971c49acd687c30"
  description = "ID da AMI para a instancia EC2"
}
variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block para a VPC"
}
variable "public_subnet_cidr_block" {
  type        = string
  default     = "10.0.0/24"
  description = "CIDR block para a sub-rede publica"
}
variable "private_subnet_cidr_block" {
  type        = string
  default     = "10.0.1/24"
  description = "CIDR block para a sub-rede privada"
}
variable "vpc_tags" {
  type = map(string)
  default = {
    "Name"        = "MyVPC-DEV"
    "Environment" = "DEV"
  }
  description = "Tags para a VPC"
}
variable "lb_name" {
  type        = string
  default     = "app-lb-DEV"
  description = "Nome do load balancer"
}
variable "lb_tags" {
  type = map(string)
  default = {
    "Name"        = "MyLoadBalancer-DEV"
    "Environment" = "DEV"
  }
  description = "Tags para o load balancer"
}
variable availability_zone {
  type        = list(string)
  default     = [
    "us-east-2a",
    "us-east-2b"
  ]
  description = "Availability zones for the VPC subnets"
}
