variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "db_username" {
  description = "Username for the RDS database"
  type        = string
}

variable "db_password" {
  description = "Password for the RDS database"
  type        = string
  sensitive   = true
}

variable "db_sg_id" {
  description = "Security Group ID for RDS"
  type        = string
}

