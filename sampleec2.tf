resource "aws_instance" "sampleec2" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"
}
