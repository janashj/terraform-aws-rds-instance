variable "region" {}
variable "subnet_ids" {
  type = list(any)
}
variable "db_access" {
  type = list(any)
}
variable "identifier" {}
variable "allocated_storage" {}
variable "engine" {}
variable "storage_type" {}
variable "engine_version" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "publicly_accessible" {}

# variables are set, and values are provided through tfvars file
