/*
variable "region" {
  default = "us-east-2"
}
variable "ami" {
  type = map(any)
  default = {
    ap-south-1 = "ami-001089eb624938d9f"
    us-east-2  = "ami-001089eb624938d9f"
  }
}

variable "names" {
  type    = list(any)
  default = ["first", "second"]
}

resource "aws_instance" "myec2" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = element(var.names, count.index)
  }

}
*/