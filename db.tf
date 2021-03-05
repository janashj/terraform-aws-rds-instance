# Creating database
resource "aws_db_instance" "rds" {
  identifier           = var.identifier
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.identifier
  username             = var.username
  password             = random_password.password.result
  publicly_accessible  = var.publicly_accessible
  db_subnet_group_name = aws_db_subnet_group.db.name
  skip_final_snapshot  = true # you have to mention this, otherwise it will create snapshots
  vpc_security_group_ids = [
    aws_security_group.db.id
  ]
}

# vpc_security_group_ids -> you can mention as many group_ids
