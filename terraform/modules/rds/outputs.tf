output "db_endpoint" {
  description = "Endpoint of the RDS database"
  value       = aws_db_instance.app_db.endpoint
}

output "db_username" {
  description = "Username for the RDS database"
  value       = aws_db_instance.app_db.username
}

# output "db_password_secret_arn" {
#   description = "ARN of the Secrets Manager secret for DB password"
#   value       = aws_secretsmanager_secret.db_password.arn
# }

