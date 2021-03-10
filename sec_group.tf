resource "aws_security_group" "db" {
  name        = "db_sql"
  description = "Allow mysql traffic"
  ingress {
    description = "Allow mysql"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.db_access
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
# for DB, special security group should be created, and allow only for specific cidr blocks

