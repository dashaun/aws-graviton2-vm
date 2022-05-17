resource "aws_security_group" "redisgeek" {
  name        = format("bootiful-%s", random_string.sg_suffix.result)
  description = "Temporary.  Created by aws_security_group terraform"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = format("bootiful-%s", random_string.sg_suffix.result)
  }
}
