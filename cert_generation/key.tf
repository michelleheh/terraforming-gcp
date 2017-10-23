resource "tls_private_key" "env_private_key" {
  algorithm = "RSA"

  count = "${var.count}"
}
