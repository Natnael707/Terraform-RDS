provider "aws" {
  region = "eu-north-1" # Change to your preferred AWS region
}

resource "aws_db_instance" "mydb" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t3.micro"
  identifier          = "mysql-db-triggered-by-jenkins"
username = var.mysql_db_username
password = var.mysql_db_password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible = true
}