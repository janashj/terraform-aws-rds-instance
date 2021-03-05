resource "random_password" "password" {
    length           = 16
  upper            = true
  lower            = true
  number           = true
  special          = true
  min_upper        = 3
  min_lower        = 3
  min_numeric      = 2
  min_special      = 1
  override_special = "_%@"
}
resource "aws_ssm_parameter" "foo" {
  name = "dbpass"
  type = "SecureString"
  value = random_password.password.result
}
