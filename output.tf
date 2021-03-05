output "region" {
  value = var.region
}   
output "subnet_list" {
  value = var.subnet_ids
}   
output "db_access" {
  value = var.db_access
}   
output "DB_name" {
  value = aws_db_instance.rds.identifier
}   
output "Endpoint" {
  value = aws_db_instance.rds.endpoint
}   