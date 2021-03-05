resource "aws_db_subnet_group" "db" {
  name       = "db"
  subnet_ids = var.subnet_ids
}

# subnet group groups all the subnets for given region