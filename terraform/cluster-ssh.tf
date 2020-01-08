resource "tls_private_key" "quake" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}
