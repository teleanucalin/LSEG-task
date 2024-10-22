output "alb_dns" {
  description = "DNS name of the Application Load Balancer"
  value       = module.alb.alb_dns
}

output "ecs_cluster_id" {
  description = "ID of the ECS Cluster"
  value       = module.ecs.ecs_cluster_id
}

output "ecs_service_name" {
  description = "Name of the ECS Service"
  value       = module.ecs.ecs_service_name
}

output "db_endpoint" {
  description = "Endpoint of the RDS database"
  value       = module.rds.db_endpoint
}

