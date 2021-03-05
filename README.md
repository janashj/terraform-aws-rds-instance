# Terraform-14
## Build RDS Instance
### Please copy and paste below code
```
module "dbname" {
  source = "janashj/aws/rds-instance-module"
  region = "us-east-2"
  subnet_ids = [
    "subnet-08b89c0bd842fd930",
    "subnet-064d03b216d6024de",
    "subnet-040bcd4f261129b78"
  ]
  identifier          = "mydb"
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  username            = "foo"
  publicly_accessible = true

  db_access = [
    "0.0.0.0/0"
    ]
}

output "region" {
  value = module.dbname.region
}
output "subnet_list" {
  value = module.dbname.subnet_list
}
output "db_access" {
  value = module.dbname.db_access
}
output "DB_name" {
  value = module.dbname.DB_name
}
output "endpoint" {
  value = module.dbname.Endpoint
}
```

### Password is created in ssm

## Please run
## terraform init

## terraform apply