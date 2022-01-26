/*
variable "check" {}

resource "aws_instance" "test" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"
  count = var.check == true ? 2 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.small"
  count = var.check == false ? 1 : 0
}
*/