output "alb_sg_id" {
  description = "Security Group ID for ALB"
  value       = aws_security_group.alb_sg.id
}

output "ecs_sg_id" {
  description = "Security Group ID for ECS"
  value       = aws_security_group.ecs_sg.id
}

output "db_sg_id" {
  description = "Security Group ID for RDS"
  value       = aws_security_group.db_sg.id
}

