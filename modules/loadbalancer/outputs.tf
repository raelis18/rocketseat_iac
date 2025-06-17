output lb_id {
  value       = aws_lb.app_lb.id
  sensitive   = true
  description = "ID do load balancer"
}
