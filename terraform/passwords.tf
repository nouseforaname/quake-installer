resource "random_password" "argo_admin_password" {
  length = 16
  special = true
  override_special = "_%@"
}
