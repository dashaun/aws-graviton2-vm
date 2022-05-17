data "template_file" "user_data" {
  template = file("${path.module}/template_init.yml")
}