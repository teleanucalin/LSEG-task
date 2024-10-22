resource "aws_db_subnet_group" "main" {
  name       = "main-db-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name = "main-db-subnet-group"
  }
}

resource "aws_db_instance" "app_db" {
  identifier              = "app-db"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  username                = var.db_username
  password                = var.db_password
  parameter_group_name    = "default.mysql8.0"
  db_subnet_group_name    = aws_db_subnet_group.main.name
  vpc_security_group_ids  = [var.db_sg_id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  backup_retention_period = 7
  backup_window           = "03:00-06:00"
  multi_az                = false

  tags = {
    Name = "app-db"
  }
}

# resource "aws_secretsmanager_secret" "db_password" {
#   name = "db_password"
# }

# resource "aws_secretsmanager_secret_version" "db_password_version" {
#   secret_id     = aws_secretsmanager_secret.db_password.id
#   secret_string = var.db_password
# }