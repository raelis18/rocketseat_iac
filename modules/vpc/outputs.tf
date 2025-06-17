output subnet_ids {
  value       = aws_subnet.public.id
  description = "IDs das sub-redes criadas"
  sensitive   = true
}
