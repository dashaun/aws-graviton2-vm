locals {
  sensitive = {
    private_key_pem = tls_private_key.example.private_key_pem
    public_ip       = aws_instance.bootiful.public_ip
  }
}

output "sensitive" {
  value     = jsonencode(local.sensitive)
  sensitive = true
}