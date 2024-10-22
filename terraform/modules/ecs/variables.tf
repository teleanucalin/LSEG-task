variable "ecs_task_execution_role_arn" {
  description = "ARN of the ECS Task Execution Role"
  type        = string
}

variable "ecs_task_role_arn" {
  description = "ARN of the ECS Task Role"
  type        = string
}

variable "app_image" {
  description = "ECR repository image for the application"
  type        = string
}

variable "db_host" {
  description = "Endpoint for the RDS database"
  type        = string
}

variable "db_username" {
  description = "Username for the RDS database"
  type        = string
}

variable "db_password_secret_arn" {
  description = "ARN of the Secrets Manager secret for DB password"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "ecs_sg_id" {
  description = "Security Group ID for ECS"
  type        = string
}

variable "target_group_arn" {
  description = "ARN of the ALB Target Group"
  type        = string
}

variable "desired_count" {
  description = "Desired number of ECS service tasks"
  type        = number
  default     = 2
}

variable "log_group" {
  description = "CloudWatch Log Group for ECS"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

