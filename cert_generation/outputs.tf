output "env_cert_pem" {
  value = "${tls_locally_signed_cert.env_cert.cert_pem}"
}

output "env_private_key_pem" {
  value = "${tls_private_key.env_private_key.private_key_pem}"
}
