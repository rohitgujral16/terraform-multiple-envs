
resource "aws_security_group" "ec2" {
  name = "${var.env_name}-${var.name}-ec2-sg"
  description = var.description
  vpc_id      = var.vpc_id

  dynamic ingress {
    for_each = var.ingress_rules
    content {
      from_port        = ingress.value.from_port
      to_port          = ingress.value.to_port
      protocol         = ingress.value.protocol
      cidr_blocks      = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env_name}-${var.name}-ec2-sg"
  }
}