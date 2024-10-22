output "ecs_task_execution_role_arn" {
  description = "ARN of the ECS Task Execution Role"
  value       = aws_iam_role.ecs_task_execution_role.arn
}

output "ecs_task_role_arn" {
  description = "ARN of the ECS Task Role"
  value       = aws_iam_role.ecs_task_role.arn
}

# output "db_password_secret_arn" {
#   description = "ARN of the Secrets Manager secret for DB password"
#   value       = aws_secretsmanager_secret.db_password.arn
# }

