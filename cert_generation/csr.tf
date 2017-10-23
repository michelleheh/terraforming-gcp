resource "tls_cert_request" "env_cert_request" {
  key_algorithm   = "RSA"
  private_key_pem = "${tls_private_key.env_private_key.private_key_pem}"

  dns_names = [
    "*.apps.${var.env_name}.${var.dns_suffix}",
    "*.sys.${var.env_name}.${var.dns_suffix}",
    "pcf-optional.${var.env_name}.${var.dns_suffix}",
  ]

  subject {
    common_name         = "pcf.${var.env_name}.${var.dns_suffix}"
    organization        = "Pivotal"
    organizational_unit = "RelEng"
  }

  count = "${var.count}"
}
