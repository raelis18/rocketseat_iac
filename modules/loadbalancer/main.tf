resource "aws_lb" "app_lb" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.subnets]

  tags = var.lb_tags
}
