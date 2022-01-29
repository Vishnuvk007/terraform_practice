/*
resource "aws_instance" "myec2local" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"

provisioner "local-exec" {
    command    = "echo The server's IP address is ${self.private_ip} >> privateip.txt"
    on_failure = continue
  }
}
*/