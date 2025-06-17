output subnet_ids {
  value       = aws_subnet.public.id
  description = "IDs das sub-redes criadas"
  sensitive   = true
}
output subnet_private_ids {
  value       = aws_subnet.private.id
  description = "IDs das sub-redes privadas criadas"
  sensitive   = true
}