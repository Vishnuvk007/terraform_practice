/*
variable "ports" {
  type    = list(number)
  default = [8080, 9090, 8091, 22]
}
resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = var.ports
    content {
      description = "TLS from VPC"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
*/