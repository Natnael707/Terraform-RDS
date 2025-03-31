variable "mysql_db_username" {
  description = "The database admin username"
  type        = string
}

variable "mysql_db_password" {
  description = "The database password"
  type        = string
  sensitive   = true  
}
