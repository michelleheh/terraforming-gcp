resource "tls_locally_signed_cert" "env_cert" {
  cert_request_pem   = "${tls_cert_request.env_cert_request.cert_request_pem}"
  ca_key_algorithm   = "RSA"
  ca_private_key_pem = "${var.ca_key}"
  ca_cert_pem        = "${var.ca_cert}"

  validity_period_hours = 8760 # 1year

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}
