resource "aws_instance" "bootiful" {
  ami                         = var.linux_ami
  associate_public_ip_address = true
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.generated_key.key_name
  vpc_security_group_ids      = [aws_security_group.redisgeek.id]
  user_data                   = data.template_file.user_data.rendered
}