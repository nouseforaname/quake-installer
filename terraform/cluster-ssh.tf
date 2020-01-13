resource "tls_private_key" "quake" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}
resource "tls_private_key" "quake_gitops" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}
